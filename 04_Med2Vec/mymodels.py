import torch
import torch.nn as nn
from torch.nn.utils.rnn import pack_padded_sequence, pad_packed_sequence
import torch.nn.functional as F
import numpy as np

class MyMLP(nn.Module):
    def __init__(self):
        super(MyMLP, self).__init__()
        self.hidden=nn.Linear(178,16)
        self.sigmoid = nn.Sigmoid()
        self.out=nn.Linear(16,5)
    def forward(self, x):
        x = self.hidden(x)
        x = self.sigmoid(x)
        x = self.out(x)

        return x
    
class MyCNN(nn.Module):
    def __init__(self):
        super(MyCNN, self).__init__()
        #output_size = int((in_size - kernel_size + 2*(padding)) / stride) + 1

        self.conv1 = nn.Conv1d(in_channels=1, out_channels = 6, kernel_size = 5, stride=1)
        self.relu1 = nn.ReLU()
        self.maxpool1 = nn.MaxPool1d(kernel_size=2,stride=2)
        self.conv2 = nn.Conv1d(in_channels = 6, out_channels = 16, kernel_size=5, stride=1)
        self.relu2 = nn.ReLU()
        self.maxpool2 = nn.MaxPool1d(kernel_size=2,stride=2)
        self.fc1 = nn.Linear(in_features=16*41,out_features = 128)
        self.relu3 = nn.ReLU()
        self.fc2 = nn.Linear(128,5)
        
    def forward(self, x):
        x = self.conv1(x)
        x = self.relu1(x)
        x = self.maxpool1(x)
        x = self.conv2(x)
        x = self.relu2(x)
        x = self.maxpool2(x)
        x = x.view(-1,16*41)
        x = self.fc1(x)
        x = self.relu3(x)
        x = self.fc2(x)
        return x


class MyRNN(nn.Module):
    def __init__(self):
        super(MyRNN, self).__init__()
        self.gru = nn.GRU(input_size = 1,hidden_size=16)
        self.fc1 = nn.Linear(in_features = 16,out_features = 5)
        
    def forward(self, x):
        x, _ = self.gru(x)
        x = self.fc1(x[:, -1, :])

        return x


class MyVariableRNN(nn.Module):
    def __init__(self, dim_input):
        super(MyVariableRNN, self).__init__()
        # You may use the input argument 'dim_input', which is basically the number of features
        self.fc1 = nn.Linear(in_features=dim_input, out_features=32)
        self.rnn = nn.GRU(input_size=32, hidden_size=16, num_layers=1, batch_first=True)
        self.fc2 = nn.Linear(in_features=16, out_features=2)
        
    def forward(self, input_tuple):
        # HINT: Following two methods might be useful
        # 'pack_padded_sequence' and 'pad_packed_sequence' from torch.nn.utils.rnn
        seqs, lengths = input_tuple
        seqs = torch.tanh(self.fc1(seqs))
        packed_in = pack_padded_sequence(seqs, lengths, batch_first= True)
        rnn_output, h = self.rnn(packed_in)
        padded_out, j = pad_packed_sequence(rnn_output,batch_first = True)
        padded_out= padded_out.contiguous()
        out = self.fc2(padded_out)
        out = out[:,:,-1]
        return out

class MyVariableRNN_LOS(nn.Module):
    def __init__(self, dim_input):
        super(MyVariableRNN_LOS, self).__init__()
        # You may use the input argument 'dim_input', which is basically the number of features
        self.fc1 = nn.Linear(in_features=dim_input, out_features=32)
        self.rnn = nn.GRU(input_size=32, hidden_size=16, num_layers=1, batch_first=True)
        self.fc2 = nn.Linear(in_features=16, out_features=2)
        
    def forward(self, input_tuple):
        # HINT: Following two methods might be useful
        # 'pack_padded_sequence' and 'pad_packed_sequence' from torch.nn.utils.rnn
        seqs, lengths = input_tuple
        seqs = torch.tanh(self.fc1(seqs))
        packed_in = pack_padded_sequence(seqs, lengths, batch_first= True)
        rnn_output, h = self.rnn(packed_in)
        padded_out, j = pad_packed_sequence(rnn_output,batch_first = True)
        padded_out= padded_out.contiguous()
        out = self.fc2(padded_out)
        out = out[:,:,-1]
        return out