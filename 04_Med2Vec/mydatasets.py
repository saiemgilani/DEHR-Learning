import numpy as np
import pandas as pd
from scipy import sparse
from scipy.sparse import coo_matrix
import torch
from torch.utils.data import TensorDataset, Dataset

def load_seizure_dataset(path, model_type):
    """
:param path: a path to the seizure data CSV file
:return dataset: a TensorDataset consists of a data Tensor and a target Tensor
"""
# TODO: Read a csv file from path.
# TODO: Please refer to the header of the file to locate X and y.
# TODO: y in the raw data is ranging from 1 to 5. Change it to be from 0 to 4.
# TODO: Remove the header of CSV file of course.
# TODO: Do Not change the order of rows.
# TODO: You can use Pandas if you want to.
    data_file = pd.read_csv(path,sep=',')
    seizure_dataset_x = np.array(data_file.iloc[:,:178])
    seizure_dataset_y = np.array(data_file.iloc[:,178:]-1)

    if model_type == 'MLP':
        data = torch.from_numpy(seizure_dataset_x).float() #(3,178)
        target = seizure_dataset_y
        target = target.reshape((len(target)))
        target = torch.from_numpy(target) #(3,)
        dataset = TensorDataset(data, target)
    elif model_type == 'CNN':
        data = torch.from_numpy(seizure_dataset_x).float() #(3,1,178)
        data = torch.unsqueeze(data,1)
        target = seizure_dataset_y
        target = target.reshape((len(target)))
        target = torch.from_numpy(target) #(3,)
        dataset = TensorDataset(data,  target)
    elif model_type == 'RNN':
        data = torch.from_numpy(seizure_dataset_x).float() #(3,1,178)
        data = torch.unsqueeze(data,2)
        target = seizure_dataset_y
        target = target.reshape((len(target)))
        target = torch.from_numpy(target) #(3,)
        dataset = TensorDataset(data,  target)
    else:
        raise AssertionError("Wrong Model Type!")

    return dataset


def calculate_num_features(seqs):
    """
    :param seqs:
    :return: the calculated number of features
    """
    # TODO: Calculate the number of features (diagnoses codes in the train set)
      # all dimensions except the batch dimension
    npmax = max(map(lambda p: max(map(lambda v: max(v), p)), seqs))  
    num_features = npmax + 1 
    return num_features

class VisitSequenceWithLabelDataset(Dataset):
    def __init__(self, seqs, labels, num_features, reverse=True):
        """
        Args:
            seqs (list): list of patients (list) of visits (list) of codes (int) that contains visit sequences
            labels (list): list of labels (int)
            num_features (int): number of total features available
            reverse (bool): If true, reverse the order of sequence (for RETAIN)
        """

        if len(seqs) != len(labels):
            raise ValueError("Seqs and Labels have different lengths")

        self.seqs = []
        # self.labels = []

        for seq, label in zip(seqs, labels):

            if reverse:
                sequence = list(reversed(seq))
            else:
                sequence = seq

            row = []
            col = []
            val = []
            for i, visit in enumerate(sequence):
                for code in visit:
                    if code < num_features:
                        row.append(i)
                        col.append(code)
                        val.append(1.0)

            self.seqs.append(coo_matrix((np.array(val, dtype=np.float32), (np.array(row), np.array(col))),
                                        shape=(len(sequence), int(num_features))))
        self.labels = labels

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, index):
        return self.seqs[index], self.labels[index]


def visit_collate_fn(batch):
    """
    DataLoaderIter call - self.collate_fn([self.dataset[i] for i in indices])
    Thus, 'batch' is a list [(seq1, label1), (seq2, label2), ... , (seqN, labelN)]
    where N is minibatch size, seq is a (Sparse)FloatTensor, and label is a LongTensor

    :returns
        seqs (FloatTensor) - 3D of batch_size X max_length X num_features
        lengths (LongTensor) - 1D of batch_size
        labels (LongTensor) - 1D of batch_size
    """

    # TODO: Return the following two things
    # TODO: 1. a tuple of (Tensor contains the sequence data , 
    # Tensor contains the length of each sequence),
    # TODO: 2. Tensor contains the label of each sequence
    batch_seq, batch_label = zip(*batch)

    num_features = batch_seq[0].shape[1]
    seq_lengths = list(map(lambda patient_tensor: patient_tensor.shape[0], batch_seq))
    max_length = max(seq_lengths)

    sorted_indices, sorted_lengths = zip(*sorted(enumerate(seq_lengths), key=lambda x: x[1], reverse=True))
    sorted_padded_seqs = []
    sorted_labels = []

    for i in sorted_indices:
        length = batch_seq[i].shape[0]

        if length < max_length:
            padded = np.concatenate(
                (batch_seq[i].toarray(), np.zeros((max_length - length, num_features), dtype=np.float32)), axis=0)
        else:
            padded = batch_seq[i].toarray()

        sorted_padded_seqs.append(padded)
        sorted_labels.append(batch_label[i])

    seq_tensor = torch.from_numpy(np.stack(sorted_padded_seqs, axis=0)).float()
    lengths_tensor = torch.LongTensor(sorted_lengths)

    labels_tensor = torch.LongTensor( np.nan_to_num(sorted_labels))
    
    return (seq_tensor, lengths_tensor), labels_tensor