import os
import pickle
import pandas as pd
import io
import numpy as np
from datetime import datetime
from sklearn.model_selection import train_test_split
import csv

DATA_PATH = './DATA/'
PATH_TRAIN = "./DATA/MORTALITY/TRAIN/"
PATH_VALIDATION = "./DATA/MORTALITY/VALIDATION/"
PATH_TEST = "./DATA/MORTALITY/TEST/"
PATH_OUTPUT = "./DATA/MORTALITY/output/"


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
    # TODO: We build a code map using ONLY train DATA. Think about how to construct validation/test sets using this.
    df_digits = df_icd9['ICD9_CODE'].apply(transform)
    
    codemap = {}
    i = 0
    for i in range(len(df_digits)):
        if df_digits[i] in codemap:
            i += 1
        else:
            codemap[df_digits[i]] = len(codemap)
    return codemap


def create_train_test_split(path):
    """
    :param path: path to the directory contains raw files.
    :param codemap: 3-digit ICD-9 code feature map
    :param transform: e.g. convert_icd9
    :return: List(patient IDs), List(labels), Visit sequence DATA as a List of List of List.
    """
    df_mortality = pd.read_csv(os.path.join(path, "ICU_MORTALITY.csv"))
    df_admission = pd.read_csv(os.path.join(path, "ICU_MORTALITY.csv"))
    df_diagnoses = pd.read_csv(os.path.join(path, "DIAGNOSES_ICD.csv"))


    patient_ids = list(df_mortality['HADM_ID'].values)
    labels = list(df_mortality['MORTALITY'].values)

    x_train, x_val, y_train, y_val = train_test_split(patient_ids, labels, test_size=0.10, random_state=1024)
    x_train, x_test, y_train, y_test = train_test_split(x_train, y_train, test_size=0.20, random_state=1024)
    admission_train = df_admission[df_admission.HADM_ID.isin(x_train)]
    admission_test = df_admission[df_admission.HADM_ID.isin(x_test)]
    admission_val = df_admission[df_admission.HADM_ID.isin(x_val)]
    mortality_train = df_mortality[df_mortality.HADM_ID.isin(x_train)]
    mortality_test = df_mortality[df_mortality.HADM_ID.isin(x_test)]
    mortality_val = df_mortality[df_mortality.HADM_ID.isin(x_val)]   
    diagnoses_train = df_diagnoses[df_diagnoses.HADM_ID.isin(x_train)]
    diagnoses_test = df_diagnoses[df_diagnoses.HADM_ID.isin(x_test)]
    diagnoses_val = df_diagnoses[df_diagnoses.HADM_ID.isin(x_val)]
    admission_train.to_csv(os.path.join(PATH_TRAIN,"ICU_ADMISSIONS.csv"), sep=',',index=False,header=True)
    admission_test.to_csv(os.path.join(PATH_TEST,"ICU_ADMISSIONS.csv"), sep=',',index=False,header=True)
    admission_val.to_csv(os.path.join(PATH_VALIDATION,"ICU_ADMISSIONS.csv"), sep=',',index=False,header=True)
    mortality_train.to_csv(os.path.join(PATH_TRAIN,"ICU_MORTALITY.csv"), sep=',',index=False,header=True)
    mortality_test.to_csv(os.path.join(PATH_TEST,"ICU_MORTALITY.csv"), sep=',',index=False,header=True)
    mortality_val.to_csv(os.path.join(PATH_VALIDATION,"ICU_MORTALITY.csv"), sep=',',index=False,header=True)

    diagnoses_train.to_csv(os.path.join(PATH_TRAIN,"ICU_DIAGNOSES_ICD.csv"), sep=',',index=False,header=True)
    diagnoses_test.to_csv(os.path.join(PATH_TEST,"ICU_DIAGNOSES_ICD.csv"), sep=',',index=False,header=True)
    diagnoses_val.to_csv(os.path.join(PATH_VALIDATION,"ICU_DIAGNOSES_ICD.csv"), sep=',',index=False,header=True)
    

def create_dataset(path, codemap, transform):
    """
    :param path: path to the directory contains raw files.
    :param codemap: 3-digit ICD-9 code feature map
    :param transform: e.g. convert_icd9
    :return: List(patient IDs), List(labels), Visit sequence DATA as a List of List of List.
    """
    df_mortality = pd.read_csv(os.path.join(path, "ICU_MORTALITY.csv"))
    df_admission = pd.read_csv(os.path.join(path, "ICU_ADMISSIONS.csv"))
    df_diagnoses = pd.read_csv(os.path.join(path, "ICU_DIAGNOSES_ICD.csv"))

    df_diagnoses['ICD9_CODE'] = df_diagnoses['ICD9_CODE'].apply(transform)
    df_diagnoses['featureID'] = df_diagnoses['ICD9_CODE'].map(codemap)
    df_diagnoses = df_diagnoses[pd.notnull(df_diagnoses['ICD9_CODE'])]
    
    aggregatedByVisit = pd.DataFrame(df_diagnoses.groupby(['HADM_ID'])['featureID'].apply(list))

    df_admission = df_admission[["HADM_ID","blood","circulatory","congenital","digestive","endocrine",
"genitourinary","infectious","injury","mental","misc","muscular","neoplasms","nervous","pregnancy","prenatal",
"respiratory","skin","GENDER","ADM_ELECTIVE","ADM_EMERGENCY","ADM_NEWBORN","ADM_URGENT","INS_Government",
"INS_Medicaid","INS_Medicare","INS_Private","INS_Self Pay","REL_NOT SPECIFIED","REL_RELIGIOUS","REL_UNOBTAINABLE",
"ETH_ASIAN","ETH_BLACK/AFRICAN AMERICAN","ETH_HISPANIC/LATINO","ETH_OTHER/UNKNOWN","ETH_WHITE","AGE_0-3",
"AGE_100-300","AGE_12-18","AGE_18-36","AGE_36-54","AGE_54-65","AGE_65-89","MAR_DIVORCED","MAR_LIFE PARTNER",
"MAR_MARRIED","MAR_SEPARATED","MAR_SINGLE","MAR_UNKNOWN (DEFAULT)","MAR_WIDOWED","MORTALITY"]]

    aggregatedByVisit = aggregatedByVisit.join(df_admission.set_index("HADM_ID"), how = "left")
    
    aggregatedByPatient = pd.DataFrame(aggregatedByVisit.sort_values(['HADM_ID'],ascending=True).groupby('HADM_ID')['featureID'].apply(list))
    aggregatedByPatient['HADM_ID'] = aggregatedByPatient.index
    
    aggregatedByPatient = aggregatedByPatient.join(df_mortality.set_index("HADM_ID"), how = "left")
    
    patient_ids = list(aggregatedByPatient.index.values)
    labels = list(aggregatedByPatient['MORTALITY'].values)
    seq_data = list(aggregatedByPatient['featureID'].values)
    return patient_ids, labels, seq_data

def main():
    # Build a code map from the train set
    print("Create Train (72%), Test(18%), Validation(10%)")
    create_train_test_split(DATA_PATH)
    print("Build feature id map")
    df_icd9 = pd.read_csv(os.path.join(PATH_TRAIN, "ICU_DIAGNOSES_ICD.csv"))
    codemap = build_codemap(df_icd9, convert_icd9)
    os.makedirs(PATH_OUTPUT, exist_ok=True)
    pickle.dump(codemap, open(os.path.join(PATH_OUTPUT, "ICU_mortality.codemap.train"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Train set
    print("Construct train set")
    train_ids, train_labels, train_seqs = create_dataset(PATH_TRAIN, codemap, convert_icd9)

    pickle.dump(train_ids, open(os.path.join(PATH_OUTPUT, "ICU_mortality.ids.train"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(train_labels, open(os.path.join(PATH_OUTPUT, "ICU_mortality.labels.train"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(train_seqs, open(os.path.join(PATH_OUTPUT, "ICU_mortality.seqs.train"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Validation set
    print("Construct validation set")
    validation_ids, validation_labels, validation_seqs = create_dataset(PATH_VALIDATION, codemap, convert_icd9)

    pickle.dump(validation_ids, open(os.path.join(PATH_OUTPUT, "ICU_mortality.ids.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(validation_labels, open(os.path.join(PATH_OUTPUT, "ICU_mortality.labels.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(validation_seqs, open(os.path.join(PATH_OUTPUT, "ICU_mortality.seqs.validation"), 'wb'), pickle.HIGHEST_PROTOCOL)

    # Test set
    print("Construct test set")
    test_ids, test_labels, test_seqs = create_dataset(PATH_TEST, codemap, convert_icd9)

    pickle.dump(test_ids, open(os.path.join(PATH_OUTPUT, "ICU_mortality.ids.test"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(test_labels, open(os.path.join(PATH_OUTPUT, "ICU_mortality.labels.test"), 'wb'), pickle.HIGHEST_PROTOCOL)
    pickle.dump(test_seqs, open(os.path.join(PATH_OUTPUT, "ICU_mortality.seqs.test"), 'wb'), pickle.HIGHEST_PROTOCOL)

    print("Complete!")


if __name__ == '__main__':
    main()
