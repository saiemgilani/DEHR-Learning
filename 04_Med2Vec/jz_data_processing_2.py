from project_code.util.mimic_loader import *


mimic_data_path = './mimic_data'
data1_path = './processed_data/step1'
data2_path = './processed_data/step2'

patients = dataframe_from_csv(os.path.join(data1_path, 'PATIENTS_1.csv'))
labs = dataframe_from_csv(os.path.join(data1_path, 'LABS_1.csv'))
admissions = dataframe_from_csv(os.path.join(data1_path, 'ADMISSIONS_1.csv'))
diagnosis = dataframe_from_csv(os.path.join(data1_path, 'DIAGNOSIS_1.csv'))
procedures = dataframe_from_csv(os.path.join(data1_path, 'PROCEDURES_1.csv'))


D_LABITEMS = dataframe_from_csv(os.path.join(mimic_data_path, 'D_LABITEMS.csv'))
D_ICD_DIAGNOSES = dataframe_from_csv(os.path.join(data1_path, 'short_code_description.csv'))
D_ICD_PROCEDURES = dataframe_from_csv(os.path.join(mimic_data_path, 'D_ICD_PROCEDURES.csv'))

labs_count = ITEMID_count(labs)
proc_count = PROC_ICD9_count(procedures)
diag_count = DIAG_ICD9_count(diagnosis)

labs_record = labs_count.merge(D_LABITEMS, how = 'inner', left_on = 'ITEMID', right_on = 'ITEMID')
diag_record = diag_count.merge(D_ICD_DIAGNOSES, how = 'inner', left_on = 'ICD9_CODE', right_on = 'ICD9_CODE')
proc_record = proc_count.merge(D_ICD_PROCEDURES, how = 'inner', left_on = 'ICD9_CODE', right_on = 'ICD9_CODE')

N_top_disease = 100
top_diag = diag_record.head(N_top_disease)
top_diag_dict = top_diag.copy()

top_diag_dict['index'] = top_diag_dict.reset_index().index
filtered_diag_table = top_diag_dict.copy()

filtered_diag_table.to_csv(os.path.join(data2_path, 'filtered_diag_table.csv'), sep=',', index=True)



top_diag_dict.drop(columns = ['COUNTS', 'SHORT_TITLE'],inplace = True)
top_diag_dict.set_index('ICD9_CODE',inplace = True)
top_diag_dict = top_diag_dict.to_dict()

diagnosis_narrowed = diagnosis.merge(top_diag, how = 'inner', left_on = 'ICD9_CODE',right_on = 'ICD9_CODE')
disease_groups = diagnosis_narrowed.groupby(['HADM_ID'],as_index = False)['ICD9_CODE'].apply(set)
disease_groups = disease_groups.apply(list)


adj_mat = np.zeros((N_top_disease,N_top_disease))

edge_list = []

for row in disease_groups:
    row_size = len(row)

    for ind in row:
        v = top_diag_dict['index'][ind]
        adj_mat[v][v]+=1

    for i in range(row_size-1):
        v1 = top_diag_dict['index'][row[i]]
        for j in range(i+1,row_size):
            v2 = top_diag_dict['index'][row[j]]
            adj_mat[v1][v2] += 1
            adj_mat[v2][v1] += 1
n = adj_mat[0].size


# for i in range(n):
#     adj_mat[i][i] = 0



print(adj_mat)

dataframe = pd.DataFrame(data=adj_mat.astype(float))
dataframe.to_csv(os.path.join(data2_path, 'diag_correlation.csv'), sep=',', float_format='%.2f')



