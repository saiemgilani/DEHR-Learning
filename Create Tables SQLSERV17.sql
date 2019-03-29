USE MIMIC
CREATE TABLE ADMISSIONS
(
  ROW_ID BIGINT NOT NULL,
  SUBJECT_ID BIGINT NOT NULL,
  HADM_ID BIGINT NOT NULL,
  ADMITTIME DATETIME NOT NULL,
  DISCHTIME DATETIME NOT NULL,
  DEATHTIME DATETIME,
  ADMISSION_TYPE NVARCHAR(MAX) NOT NULL,
  ADMISSION_LOCATION NVARCHAR(MAX) NOT NULL,
  DISCHARGE_LOCATION NVARCHAR(MAX) NOT NULL,
  INSURANCE NVARCHAR(MAX) NOT NULL,
  [LANGUAGE] NVARCHAR(MAX),
  RELIGION NVARCHAR(MAX),
  MARITAL_STATUS NVARCHAR(MAX),
  ETHNICITY NVARCHAR(MAX) NOT NULL,
  EDREGTIME DATETIME,
  EDOUTTIME DATETIME,
  DIAGNOSIS NVARCHAR(MAX),
  HOSPITAL_EXPIRE_FLAG BIGINT,
  HAS_CHARTEVENTS_DATA NVARCHAR(MAX)
 
) ;

BULK INSERT dbo.ADMISSIONS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\ADMISSIONS.csv'
          WITH (
				FIELDTERMINATOR = ';', 
                ROWTERMINATOR = '\n',
				TABLOCK,
				CODEPAGE = 'ACP'
                 );
GO
--Check the content of the table.
SELECT *
FROM dbo.ADMISSIONS
GO
--------------------------------------------------------
--  DDL for Table CALLOUT
--------------------------------------------------------

CREATE TABLE CALLOUT
    (   ROW_ID INT NOT NULL,
        SUBJECT_ID INT NOT NULL,
        HADM_ID INT NOT NULL,
        SUBMIT_WARDID INT,
        SUBMIT_CAREUNIT VARCHAR(15),
        CURR_WARDID INT,
        CURR_CAREUNIT VARCHAR(15),
        CALLOUT_WARDID INT,
        CALLOUT_SERVICE VARCHAR(10) NOT NULL,
        REQUEST_TELE SMALLINT NOT NULL,
        REQUEST_RESP SMALLINT NOT NULL,
        REQUEST_CDIFF SMALLINT NOT NULL,
        REQUEST_MRSA SMALLINT NOT NULL,
        REQUEST_VRE SMALLINT NOT NULL,
        CALLOUT_STATUS VARCHAR(20) NOT NULL,
        CALLOUT_OUTCOME VARCHAR(20) NOT NULL,
        DISCHARGE_WARDID INT,
        ACKNOWLEDGE_STATUS VARCHAR(20) NOT NULL,
        CREATETIME DATETIME NOT NULL,
        UPDATETIME DATETIME NOT NULL,
        ACKNOWLEDGETIME DATETIME,
        OUTCOMETIME DATETIME NOT NULL,
        FIRSTRESERVATIONTIME DATETIME,
        CURRENTRESERVATIONTIME DATETIME,
        CONSTRAINT callout_rowid_pk PRIMARY KEY (ROW_ID)
        );
BULK INSERT CALLOUTS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\CALLOUTS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );

--------------------------------------------------------
--  DDL for Table CAREGIVERS
--------------------------------------------------------

CREATE TABLE CAREGIVERS
   (	ROW_ID INT NOT NULL,
	CGID INT NOT NULL,
	LABEL VARCHAR(15),
	DESCRIPTION VARCHAR(30),
	CONSTRAINT cg_rowid_pk  PRIMARY KEY (ROW_ID),
	CONSTRAINT cg_cgid_unique UNIQUE (CGID)
   ) ;
   BULK INSERT CAREGIVERS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\CAREGIVERS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table CHARTEVENTS
--------------------------------------------------------

CREATE TABLE CHARTEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ICUSTAY_ID INT,
	ITEMID INT,
	CHARTTIME DATETIME,
	STORETIME DATETIME,
	CGID INT,
	VALUE VARCHAR(255),
	VALUENUM DOUBLE PRECISION,
	VALUEUOM VARCHAR(50),
	WARNING INT,
	ERROR INT,
	RESULTSTATUS VARCHAR(50),
	STOPPED VARCHAR(50),
	CONSTRAINT chartevents_rowid_pk PRIMARY KEY (ROW_ID)
  );

  CREATE TABLE CHARTEVENTS
   (	ROW_ID INT NOT NULL,
	CGID INT NOT NULL,
	LABEL VARCHAR(15),
	DESCRIPTION VARCHAR(30),
	CONSTRAINT cg_rowid_pk  PRIMARY KEY (ROW_ID),
	CONSTRAINT cg_cgid_unique UNIQUE (CGID)
   ) ;
   BULK INSERT CHARTEVENTS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\CHARTEVENTS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );

--------------------------------------------------------
--  DDL for Table CPTEVENTS
--------------------------------------------------------

CREATE TABLE CPTEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	COSTCENTER VARCHAR(10) NOT NULL,
	CHARTDATE DATETIME,
	CPT_CD VARCHAR(10) NOT NULL,
	CPT_NUMBER INT,
	CPT_SUFFIX VARCHAR(5),
	TICKET_ID_SEQ INT,
	SECTIONHEADER VARCHAR(50),
	SUBSECTIONHEADER VARCHAR(255),
	DESCRIPTION VARCHAR(200),
	CONSTRAINT cpt_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
    BULK INSERT CPTEVENTS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\CPTEVENTS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table DATETIMEEVENTS
--------------------------------------------------------

CREATE TABLE DATETIMEEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ICUSTAY_ID INT,
	ITEMID INT NOT NULL,
	CHARTTIME DATETIME NOT NULL,
	STORETIME DATETIME NOT NULL,
	CGID INT NOT NULL,
	VALUE DATETIME,
	VALUEUOM VARCHAR(50) NOT NULL,
	WARNING SMALLINT,
	ERROR SMALLINT,
	RESULTSTATUS VARCHAR(50),
	STOPPED VARCHAR(50),
	CONSTRAINT datetime_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
BULK INSERT DATETIMEEVENTS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\DATETIMEEVENTS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table DIAGNOSES_ICD
--------------------------------------------------------

CREATE TABLE DIAGNOSES_ICD
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	SEQ_NUM INT,
	ICD9_CODE VARCHAR(20),
	CONSTRAINT diagnosesicd_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT DIAGNOSES_ICD FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\DIAGNOSES_ICD.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table DRGCODES
--------------------------------------------------------

CREATE TABLE DRGCODES
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	DRG_TYPE VARCHAR(20) NOT NULL,
	DRG_CODE VARCHAR(20) NOT NULL,
	DESCRIPTION VARCHAR(255),
	DRG_SEVERITY SMALLINT,
	DRG_MORTALITY SMALLINT,
	CONSTRAINT drg_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT DRGCODES FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\DRGCODES.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table D_CPT
--------------------------------------------------------

CREATE TABLE D_CPT
   (	ROW_ID INT NOT NULL,
	CATEGORY SMALLINT NOT NULL,
	SECTIONRANGE VARCHAR(100) NOT NULL,
	SECTIONHEADER VARCHAR(50) NOT NULL,
	SUBSECTIONRANGE VARCHAR(100) NOT NULL,
	SUBSECTIONHEADER VARCHAR(255) NOT NULL,
	CODESUFFIX VARCHAR(5),
	MINCODEINSUBSECTION INT NOT NULL,
	MAXCODEINSUBSECTION INT NOT NULL,
    	CONSTRAINT dcpt_ssrange_unique UNIQUE (SUBSECTIONRANGE),
    	CONSTRAINT dcpt_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT D_CPT FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\D_CPT.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table D_ICD_DIAGNOSES
--------------------------------------------------------

CREATE TABLE D_ICD_DIAGNOSES
   (	ROW_ID INT NOT NULL,
	ICD9_CODE VARCHAR(10) NOT NULL,
	SHORT_TITLE VARCHAR(50) NOT NULL,
	LONG_TITLE VARCHAR(255) NOT NULL,
    	CONSTRAINT d_icd_diag_code_unique UNIQUE (ICD9_CODE),
    	CONSTRAINT d_icd_diag_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT D_ICD_DIAGNOSES FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\D_ICD_DIAGNOSES.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table D_ICD_PROCEDURES
--------------------------------------------------------

CREATE TABLE D_ICD_PROCEDURES
   (	ROW_ID INT NOT NULL,
	ICD9_CODE VARCHAR(10) NOT NULL,
	SHORT_TITLE VARCHAR(50) NOT NULL,
	LONG_TITLE VARCHAR(255) NOT NULL,
    	CONSTRAINT d_icd_proc_code_unique UNIQUE (ICD9_CODE),
    	CONSTRAINT d_icd_proc_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT D_ICD_PROCEDURES FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\D_ICD_PROCEDURES.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table D_ITEMS
--------------------------------------------------------

CREATE TABLE D_ITEMS
   (	ROW_ID INT NOT NULL,
    	ITEMID INT NOT NULL,
    	LABEL VARCHAR(200),
    	ABBREVIATION VARCHAR(100),
    	DBSOURCE VARCHAR(20),
    	LINKSTO VARCHAR(50),
    	CATEGORY VARCHAR(100),
    	UNITNAME VARCHAR(100),
    	PARAM_TYPE VARCHAR(30),
    	CONCEPTID INT,
    	CONSTRAINT ditems_itemid_unique UNIQUE (ITEMID),
    	CONSTRAINT ditems_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
   BULK INSERT D_ITEMS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\D_ITEMS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table D_LABITEMS
--------------------------------------------------------

CREATE TABLE D_LABITEMS
   (	ROW_ID INT NOT NULL,
	ITEMID INT NOT NULL,
	LABEL VARCHAR(100) NOT NULL,
	FLUID VARCHAR(100) NOT NULL,
	CATEGORY VARCHAR(100) NOT NULL,
	LOINC_CODE VARCHAR(100),
    	CONSTRAINT dlabitems_itemid_unique UNIQUE (ITEMID),
    	CONSTRAINT dlabitems_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
 BULK INSERT D_LABITEMS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\D_LABITEMS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table ICUSTAYS
--------------------------------------------------------

CREATE TABLE ICUSTAYS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	ICUSTAY_ID INT NOT NULL,
	DBSOURCE VARCHAR(20) NOT NULL,
	FIRST_CAREUNIT VARCHAR(20) NOT NULL,
	LAST_CAREUNIT VARCHAR(20) NOT NULL,
	FIRST_WARDID SMALLINT NOT NULL,
	LAST_WARDID SMALLINT NOT NULL,
	INTIME DATETIME NOT NULL,
	OUTTIME DATETIME,
	LOS DOUBLE PRECISION,
    	CONSTRAINT icustay_icustayid_unique UNIQUE (ICUSTAY_ID),
    	CONSTRAINT icustay_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;
    BULK INSERT ICUSTAYS FROM  'C:\Users\saiem\Documents\mimic-code-data-1.4.1\ICUSTAYS.csv'
          WITH (FIELDTERMINATOR = ',', 
                ROWTERMINATOR = '\n', 
                FIRSTROW = 2 );
--------------------------------------------------------
--  DDL for Table INPUTEVENTS_CV
--------------------------------------------------------

CREATE TABLE INPUTEVENTS_CV
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ICUSTAY_ID INT,
	CHARTTIME DATETIME,
	ITEMID INT,
	AMOUNT DOUBLE PRECISION,
	AMOUNTUOM VARCHAR(30),
	RATE DOUBLE PRECISION,
	RATEUOM VARCHAR(30),
	STORETIME DATETIME,
	CGID INT,
	ORDERID INT,
	LINKORDERID INT,
	STOPPED VARCHAR(30),
	NEWBOTTLE INT,
	ORIGINALAMOUNT DOUBLE PRECISION,
	ORIGINALAMOUNTUOM VARCHAR(30),
	ORIGINALROUTE VARCHAR(30),
	ORIGINALRATE DOUBLE PRECISION,
	ORIGINALRATEUOM VARCHAR(30),
	ORIGINALSITE VARCHAR(30),
	CONSTRAINT inputevents_cv_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table INPUTEVENTS_MV
--------------------------------------------------------

CREATE TABLE INPUTEVENTS_MV
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ICUSTAY_ID INT,
	STARTTIME DATETIME,
	ENDTIME DATETIME,
	ITEMID INT,
	AMOUNT DOUBLE PRECISION,
	AMOUNTUOM VARCHAR(30),
	RATE DOUBLE PRECISION,
	RATEUOM VARCHAR(30),
	STORETIME DATETIME,
	CGID INT,
	ORDERID INT,
	LINKORDERID INT,
	ORDERCATEGORYNAME VARCHAR(100),
	SECONDARYORDERCATEGORYNAME VARCHAR(100),
	ORDERCOMPONENTTYPEDESCRIPTION VARCHAR(200),
	ORDERCATEGORYDESCRIPTION VARCHAR(50),
	PATIENTWEIGHT DOUBLE PRECISION,
	TOTALAMOUNT DOUBLE PRECISION,
	TOTALAMOUNTUOM VARCHAR(50),
	ISOPENBAG SMALLINT,
	CONTINUEINNEXTDEPT SMALLINT,
	CANCELREASON SMALLINT,
	STATUSDESCRIPTION VARCHAR(30),
	COMMENTS_EDITEDBY VARCHAR(30),
	COMMENTS_CANCELEDBY VARCHAR(40),
	COMMENTS_DATE DATETIME,
	ORIGINALAMOUNT DOUBLE PRECISION,
	ORIGINALRATE DOUBLE PRECISION,
	CONSTRAINT inputevents_mv_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table LABEVENTS
--------------------------------------------------------

CREATE TABLE LABEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ITEMID INT NOT NULL,
	CHARTTIME DATETIME,
	VALUE VARCHAR(200),
	VALUENUM DOUBLE PRECISION,
	VALUEUOM VARCHAR(20),
	FLAG VARCHAR(20),
	CONSTRAINT labevents_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table MICROBIOLOGYEVENTS
--------------------------------------------------------

CREATE TABLE MICROBIOLOGYEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	CHARTDATE DATETIME,
	CHARTTIME DATETIME,
	SPEC_ITEMID INT,
	SPEC_TYPE_DESC VARCHAR(100),
	ORG_ITEMID INT,
	ORG_NAME VARCHAR(100),
	ISOLATE_NUM SMALLINT,
	AB_ITEMID INT,
	AB_NAME VARCHAR(30),
	DILUTION_TEXT VARCHAR(10),
	DILUTION_COMPARISON VARCHAR(20),
	DILUTION_VALUE DOUBLE PRECISION,
	INTERPRETATION VARCHAR(5),
	CONSTRAINT micro_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table NOTEEVENTS
--------------------------------------------------------

CREATE TABLE NOTEEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	CHARTDATE DATETIME,
	CHARTTIME DATETIME,
	STORETIME DATETIME,
	CATEGORY VARCHAR(50),
	DESCRIPTION VARCHAR(255),
	CGID INT,
	ISERROR CHAR(1),
	TEXT VARCHAR(8000),-- 53000 is the max number char for now, then varchar is better than CLOB in interface such dbeaver
	CONSTRAINT noteevents_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table OUTPUTEVENTS
--------------------------------------------------------

CREATE TABLE OUTPUTEVENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT,
	ICUSTAY_ID INT,
	CHARTTIME DATETIME,
	ITEMID INT,
	VALUE DOUBLE PRECISION,
	VALUEUOM VARCHAR(30),
	STORETIME DATETIME,
	CGID INT,
	STOPPED VARCHAR(30),
	NEWBOTTLE CHAR(1),
	ISERROR INT,
	CONSTRAINT outputevents_cv_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table PATIENTS
--------------------------------------------------------

CREATE TABLE PATIENTS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	GENDER VARCHAR(5) NOT NULL,
	DOB DATETIME NOT NULL,
	DOD DATETIME,
	DOD_HOSP DATETIME,
	DOD_SSN DATETIME,
	EXPIRE_FLAG INT NOT NULL,
    	CONSTRAINT pat_subid_unique UNIQUE (SUBJECT_ID),
    	CONSTRAINT pat_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table PRESCRIPTIONS
--------------------------------------------------------

CREATE TABLE PRESCRIPTIONS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	ICUSTAY_ID INT,
	STARTTIME DATETIME,
	ENDTIME DATETIME,
	DRUG_TYPE VARCHAR(100) NOT NULL,
	DRUG VARCHAR(100) NOT NULL,
	DRUG_NAME_POE VARCHAR(100),
	DRUG_NAME_GENERIC VARCHAR(100),
	FORMULARY_DRUG_CD VARCHAR(120),
	GSN VARCHAR(200),
	NDC VARCHAR(120),
	PROD_STRENGTH VARCHAR(120),
	DOSE_VAL_RX VARCHAR(120),
	DOSE_UNIT_RX VARCHAR(120),
	FORM_VAL_DISP VARCHAR(120),
	FORM_UNIT_DISP VARCHAR(120),
	ROUTE VARCHAR(120),
	CONSTRAINT prescription_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table PROCEDUREEVENTS_MV
--------------------------------------------------------

CREATE TABLE PROCEDUREEVENTS_MV
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	ICUSTAY_ID INT,
	STARTTIME DATETIME,
	ENDTIME DATETIME,
	ITEMID INT,
	VALUE DOUBLE PRECISION,
	VALUEUOM VARCHAR(30),
	LOCATION VARCHAR(30),
	LOCATIONCATEGORY VARCHAR(30),
	STORETIME DATETIME,
	CGID INT,
	ORDERID INT,
	LINKORDERID INT,
	ORDERCATEGORYNAME VARCHAR(100),
	SECONDARYORDERCATEGORYNAME VARCHAR(100),
	ORDERCATEGORYDESCRIPTION VARCHAR(50),
	ISOPENBAG SMALLINT,
	CONTINUEINNEXTDEPT SMALLINT,
	CANCELREASON SMALLINT,
	STATUSDESCRIPTION VARCHAR(30),
	COMMENTS_EDITEDBY VARCHAR(30),
	COMMENTS_CANCELEDBY VARCHAR(30),
	COMMENTS_DATE DATETIME,
	CONSTRAINT procedureevents_mv_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table PROCEDURES_ICD
--------------------------------------------------------

CREATE TABLE PROCEDURES_ICD
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	SEQ_NUM INT NOT NULL,
	ICD9_CODE VARCHAR(20) NOT NULL,
	CONSTRAINT proceduresicd_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table SERVICES
--------------------------------------------------------

CREATE TABLE SERVICES
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	TRANSFERTIME DATETIME NOT NULL,
	PREV_SERVICE VARCHAR(20),
	CURR_SERVICE VARCHAR(20),
	CONSTRAINT services_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;

--------------------------------------------------------
--  DDL for Table TRANSFERS
--------------------------------------------------------

CREATE TABLE TRANSFERS
   (	ROW_ID INT NOT NULL,
	SUBJECT_ID INT NOT NULL,
	HADM_ID INT NOT NULL,
	ICUSTAY_ID INT,
	DBSOURCE VARCHAR(20) , -- removed not null because of data missing
	EVENTTYPE VARCHAR(20),
	PREV_CAREUNIT VARCHAR(20),
	CURR_CAREUNIT VARCHAR(20),
	PREV_WARDID SMALLINT,
	CURR_WARDID SMALLINT,
	INTIME DATETIME,
	OUTTIME DATETIME,
	LOS DOUBLE PRECISION,
	CONSTRAINT transfers_rowid_pk PRIMARY KEY (ROW_ID)
   ) ;