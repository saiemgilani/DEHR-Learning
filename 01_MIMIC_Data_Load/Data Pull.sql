USE MIMIC3;

--- 638098 rows
SELECT [ROW_ID]
      ,[SUBJECT_ID]
      ,[HADM_ID]
      ,[SEQ_NUM]
      ,[ICD9_CODE]
  FROM [MIMIC3].[dbo].[DIAGNOSES_ICD]
  order by row_id

--- 14567 rows
SELECT [ROW_ID]
      ,[ICD9_CODE]
      ,[SHORT_TITLE]
      ,[LONG_TITLE]
  FROM [MIMIC3].[dbo].[D_ICD_DIAGNOSES]
  order by row_id

--- 3882 rows
SELECT [ROW_ID]
      ,[ICD9_CODE]
      ,[SHORT_TITLE]
      ,[LONG_TITLE]
  FROM [MIMIC3].[dbo].[D_ICD_PROCEDURES]
  order by row_id

  --753 rows
SELECT [ROW_ID]
      ,[ITEMID]
      ,[LABEL]
      ,[FLUID]
      ,[CATEGORY]
      ,[LOINC_CODE]
  FROM [MIMIC3].[dbo].[D_LABITEMS]

  --12487 rows
SELECT [ROW_ID]
      ,[ITEMID]
      ,[LABEL]
      ,[ABBREVIATION]
      ,[DBSOURCE]
      ,[LINKSTO]
      ,[CATEGORY]
      ,[UNITNAME]
      ,[PARAM_TYPE]
      ,[CONCEPTID]
  FROM [MIMIC3].[dbo].[D_ITEMS]

  --14567 rows
  SELECT [Detailed_ICD9_Code]
      ,[Detailed_ICD9_Short_Title]
      ,[Detailed_ICD9_Long_Title]
      ,[RolledUp_ICD9_Code]
      ,[RolledUp_ICD9_Short_Title]
      ,[RolledUp_ICD9_Long_Title]
  FROM [MIMIC3].[dbo].[ICD_DIAGNOSES_ROLLUP]

  --123180 rows
  SELECT [ROW_ID]
      ,[SUBJECT_ID]
      ,[HADM_ID]
      ,[DRG_TYPE]
      ,[DRG_CODE]
      ,[DESCRIPTION]
      ,[DRG_SEVERITY]
      ,[DRG_MORTALITY]
  FROM [MIMIC3].[dbo].[DRGCODES]

  --60147 rows
  SELECT [ROW_ID]
      ,[SUBJECT_ID]
      ,[HADM_ID]
      ,[ICUSTAY_ID]
      ,[DBSOURCE]
      ,[FIRST_CAREUNIT]
      ,[LAST_CAREUNIT]
      ,[FIRST_WARDID]
      ,[LAST_WARDID]
      ,[INTIME]
      ,[OUTTIME]
      ,[LOS]
  FROM [MIMIC3].[dbo].[ICUSTAYS]

