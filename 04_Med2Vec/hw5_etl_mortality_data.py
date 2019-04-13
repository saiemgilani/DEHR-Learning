import os
import pickle
import pandas as pd
import io
import numpy as np
from datetime import datetime

PATH_TRAIN = "C:/Users/saiem/Documents/mimic-code-data-1.4.1/clean/"
PATH_VALIDATION = "C:/Users/saiem/Documents/mimic-code-data-1.4.1/clean/"
PATH_TEST = "C:/Users/saiem/Documents/mimic-code-data-1.4.1/clean/"
PATH_OUTPUT = "C:/Users/saiem/Documents/mimic-code-data-1.4.1/clean/output"


def convert_icd9(icd9_object):
    """
    :param icd9_object: ICD-9 code (Pandas/Numpy object).
    :return: extracted main digits of ICD-9 code
    """
    icd9_str = str(icd9_object)
    # TODO: Extract the the first 3 or 4 alphanumeric digits prior to the decimal point from a given ICD-9 code.
    # TODO: Read the homework description carefully.
    if icd9_str.startswith('E'):
        if len(icd9_str) > 4: return icd9_str[:4] 
        else: return icd9_str[:4]
    else:
        if len(icd9_str) > 3: return icd9_str[:3] 
        else: return icd9_str[:4]
        
def build_codemap(df_icd9, transform):
    """
    :return: Dict of code map {main-digits of ICD9: unique feature ID}
    """
    # TODO: We build a code map using ONLY train data. Think about how to construct validation/test sets using this.
    df_digits = df_icd9['ICD9_CODE'].apply(transform)
    
    codemap = {}
    i = 0
    for i in range(len(df_digits)):
        if df_digits[i] in codemap:
            i += 1
        else:
            codemap[df_digits[i]] = len(codemap)
    return codemap


def create_dataset(path, codemap, transform):
    """
    :param path: path to the directory contains raw files.
    :param codemap: 3-digit ICD-9 code feature map
    :param transform: e.g. convert_icd9
    :return: List(patient IDs), List(labels), Visit sequence data as a List of List of List.
    """
    df_mortality = pd.read_csv(os.path.join(path, "MORTALITY.csv"))
    df_admission = pd.read_csv(os.path.join(path, "ADMISSIONS.csv"))
    df_diagnoses = pd.read_csv(os.path.join(path, "DIAGNOSES_ICD.csv"))

    df_diagnoses['ICD9_CODE'] = df_diagnoses['ICD9_CODE'].apply(transform)
    df_diagnoses['featureID'] = df_diagnoses['ICD9_CODE'].map(codemap)
    df_diagnoses = df_diagnoses[pd.notnull(df_diagnoses['ICD9_CODE'])]
    
    aggregatedByVisit = pd.DataFrame(df_diagnoses.groupby(['HADM_ID'])['featureID'].apply(list))
    aggregatedByVisit['HADM_ID'] = aggregatedByVisit.index

    df_admission = df_admission[["SUBJECT_ID", "HADM_ID", "ADMITTIME"]]
    aggregatedByVisit = aggregatedByVisit.join(df_admission.set_index("HADM_ID"), how = "left")
    
    aggregatedByPatient = pd.DataFrame(aggregatedByVisit.sort_values(['SUBJECT_ID','ADMITTIME'],ascending=True).groupby('SUBJECT_ID')['featureID'].apply(list))
    aggregatedByPatient['SUBJECT_ID'] = aggregatedByPatient.index
    
    aggregatedByPatient = aggregatedByPatient.set_index("SUBJECT_ID").join(df_mortality.set_index("SUBJECT_ID"), how = "left")
    
    patient_ids = list(aggregatedByPatient.index.values)
    labels = list(aggregatedByPatient['MORTALITY'].values)
    seq_data = list(aggregatedByPatient['featureID'].values)
    return patient_ids, labels, seq_data

def main():
    # Build a code map from the train set
    print("Build feature id map")
    df_icd9 = pd.read_csv(os.path.join(PATH_TRAIN, "DIAGNOSES_ICD.csv"), usecols=["ICD9_CODE"])
    codemap = build_codemap(df_icd9, convert_icd9)
    os.makedirs(PATH_OUTPUT, exist_ok=True)
    pickle.dump(codemap, open(os.path.join(PATH_OUTPUT, "mortality.codemap.train"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Train set
    print("Construct train set")
    train_ids, train_labels, train_seqs = create_dataset(PATH_TRAIN, codemap, convert_icd9)

    pickle.dump(train_ids, open(os.path.join(PATH_OUTPUT, "mortality.ids.train"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(train_labels, open(os.path.join(PATH_OUTPUT, "mortality.labels.train"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(train_seqs, open(os.path.join(PATH_OUTPUT, "mortality.seqs.train"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Validation set
    print("Construct validation set")
    validation_ids, validation_labels, validation_seqs = create_dataset(PATH_VALIDATION, codemap, convert_icd9)

    pickle.dump(validation_ids, open(os.path.join(PATH_OUTPUT, "mortality.ids.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(validation_labels, open(os.path.join(PATH_OUTPUT, "mortality.labels.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(validation_seqs, open(os.path.join(PATH_OUTPUT, "mortality.seqs.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Test set
    print("Construct test set")
    test_ids, test_labels, test_seqs = create_dataset(PATH_TEST, codemap, convert_icd9)

    pickle.dump(test_ids, open(os.path.join(PATH_OUTPUT, "mortality.ids.test"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(test_labels, open(os.path.join(PATH_OUTPUT, "mortality.labels.test"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(test_seqs, open(os.path.join(PATH_OUTPUT, "mortality.seqs.test"), 'wb'), pickle.HIGHEST_PROTOCOL)

    print("Complete!")


if __name__ == '__main__':
    main()
