from __future__ import absolute_import
from __future__ import print_function

import csv
import numpy as np
import os
import pandas as pd
import sys

def dataframe_from_csv(path, header=0, index_col=0):
    return pd.read_csv(path, header=header, index_col=index_col)

def clean_patients_table(mimic_path):
    patients = dataframe_from_csv(os.path.join(mimic_path, 'PATIENTS.csv'))
    patients = patients[['SUBJECT_ID', 'DOB', 'DOD']]
    patients.DOB = pd.to_datetime(patients.DOB)
    patients.DOD = pd.to_datetime(patients.DOD)
    patients['DEAD'] = 1-patients.DOD.isna().astype(int)
    patients['LIFE_SPAN'] = np.where(patients['DEAD']== 1, (patients.DOD - patients.DOB)/ np.timedelta64(1, 'Y'), 0)
    # print(patients.count)
    patients.drop(patients.loc[patients['LIFE_SPAN'] <0].index, inplace=True)
    patients.drop_duplicates(subset=['SUBJECT_ID'], keep='first', inplace=False)
    # print(patients.count)
    patients.dropna(subset = ['SUBJECT_ID','DOB'])
    return patients


def merge_patient_to_admission(admission_table, patients_table):
    joint_table = admission_table.merge(patients_table, how = 'inner', left_on = 'SUBJECT_ID', right_on = 'SUBJECT_ID')
    admission_table = joint_table
    admission_table['AGE'] = (admission_table['ADMITTIME'] - admission_table['DOB'])/ np.timedelta64(1, 'Y')
    admission_table.drop(admission_table.loc[admission_table['AGE'] < 0].index, inplace=True)
    return admission_table

def clean_admissions_table(mimic_path):
    admissions = dataframe_from_csv(os.path.join(mimic_path, 'ADMISSIONS.csv'))
    admissions = admissions[['SUBJECT_ID', 'HADM_ID', 'ADMITTIME', 'INSURANCE', 'DISCHTIME', 'DEATHTIME']]
    admissions.ADMITTIME = pd.to_datetime(admissions.ADMITTIME)
    admissions.DISCHTIME = pd.to_datetime(admissions.DISCHTIME)
    admissions.DEATHTIME = pd.to_datetime(admissions.DEATHTIME)
    # print(admissions.count)
    admissions.drop(admissions.loc[admissions['ADMITTIME'] > admissions['DISCHTIME'] - np.timedelta64(1, 'D')].index, inplace=True)
    admissions.drop(admissions.loc[admissions['ADMITTIME'] > admissions['DEATHTIME'] - np.timedelta64(1, 'D')].index, inplace=True)
    admissions['LOS_DAYS'] = (admissions['DISCHTIME'] - admissions['ADMITTIME'])/np.timedelta64(1, 'D')

    print(admissions.count)
    admissions.dropna(subset = ['SUBJECT_ID', 'HADM_ID','INSURANCE','ADMITTIME','DISCHTIME'], inplace = True)

    print(admissions.count)

    return admissions


def clean_icustays_table(mimic_path):
    stays = dataframe_from_csv(os.path.join(mimic_path, 'ICUSTAYS.csv'))
    stays.INTIME = pd.to_datetime(stays.INTIME)
    stays.OUTTIME = pd.to_datetime(stays.OUTTIME)
    return stays



def icd9_conversion(code):
    # if the code is all number, we get first three digits
    # if the code starts with V, we get the first three characters. eg, V1234, we get V12
    # if the code starts with E, we get the first four characters. eg. E1234, we get E123
    result = ''
    if code[0]=='E':
        result = code[0:4]
    elif code[0] == 'V':
        result = code[0:3]
    elif code.isdigit():
        result = code[0:3]
    else:
        result = ''
    return result



def clean_icd_diagnoses_table(mimic_path):
    codes = dataframe_from_csv(os.path.join(mimic_path, 'D_ICD_DIAGNOSES.csv'))
    codes = codes[['ICD9_CODE', 'SHORT_TITLE', 'LONG_TITLE']]
    diagnoses = dataframe_from_csv(os.path.join(mimic_path, 'DIAGNOSES_ICD.csv'))
    diagnoses = diagnoses.merge(codes, how='inner', left_on='ICD9_CODE', right_on='ICD9_CODE')
    diagnoses[['SUBJECT_ID', 'HADM_ID', 'SEQ_NUM']] = diagnoses[['SUBJECT_ID', 'HADM_ID', 'SEQ_NUM']].astype(int)
    diagnoses['ICD9_CODE'] = diagnoses['ICD9_CODE'].apply(lambda code: icd9_conversion(code))
    diagnoses.drop(columns=['SHORT_TITLE', 'LONG_TITLE'], inplace = True)
    # diagnoses.rename(index=str, columns={"ICD9_CODE": "ICD9_CODE_DIAG"}, inplace = True)
    return diagnoses


def D_ICD_DIAGNOSES_SHORT(mimic_path):
    codes = dataframe_from_csv(os.path.join(mimic_path, 'D_ICD_DIAGNOSES.csv'))
    codes = codes[['ICD9_CODE', 'SHORT_TITLE']]
    codes['ICD9_CODE'] = codes['ICD9_CODE'].apply(lambda code: icd9_conversion(code))
    codes = codes.groupby('ICD9_CODE', as_index = False).first()

    return codes



def clean_icd_procedures_table(mimic_path):
    procedures = dataframe_from_csv(os.path.join(mimic_path, 'PROCEDURES_ICD.csv'))

    # print(procedures['SUBJECT_ID'].count())
    procedures.dropna(subset = ['SUBJECT_ID', 'HADM_ID', 'ICD9_CODE'])
    # print(procedures['SUBJECT_ID'].count())

    # procedures.rename(index=str, columns={"ICD9_CODE": "ICD9_CODE_PROC"}, inplace = True)
    return procedures

def clean_lab_table(mimic_path):
    labs = dataframe_from_csv(os.path.join(mimic_path, 'LABEVENTS.csv'))
    labs.dropna(subset = ['SUBJECT_ID', 'HADM_ID'], inplace = True)
    return labs



def ITEMID_count(labs):
    # identify most frequently used lab tests
    count_table = labs.groupby(['ITEMID'], as_index = False)['ITEMID'].size().reset_index(name='COUNTS')
    count_table.sort_values(['COUNTS'], ascending=[False],inplace = True)
    count_table.reset_index(inplace = True, drop = True)
    return count_table

def DIAG_ICD9_count(diagnosis):
    count_table = diagnosis.groupby(['ICD9_CODE'], as_index = False)['ICD9_CODE'].size().reset_index(name= 'COUNTS')
    count_table.sort_values(['COUNTS'], ascending=[False],inplace = True)
    count_table.reset_index(inplace = True, drop = True)
    return count_table

def PROC_ICD9_count(procedures):
    count_table = procedures.groupby(['ICD9_CODE'], as_index = False)['ICD9_CODE'].size().reset_index(name= 'COUNTS')
    count_table.sort_values(['COUNTS'], ascending=[False],inplace = True)
    count_table.reset_index(inplace = True, drop = True)
    return count_table


