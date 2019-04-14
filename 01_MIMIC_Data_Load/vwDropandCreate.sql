USE [MIMIC3]
GO

/****** Object:  View [dbo].[Diagnoses_by_Patient]    Script Date: 4/14/2019 5:02:14 PM ******/
DROP VIEW [dbo].[Diagnoses_by_Patient]
GO

/****** Object:  View [dbo].[Diagnoses_by_Patient]    Script Date: 4/14/2019 5:02:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE   VIEW [dbo].[Diagnoses_by_Patient] 
as
-- This view "one-hot encodes" all of the diseases.
-- Each row represents on unique patient.
-- Each column represents one ICD-9 disease code.  
-- A cell contains a 1 if the patient has that disease, and a 0 if they don't.


-- NOTE: SQL Server select statements can support only 4,096 columns
--       There are 14,567 ICD-9 codes in MIMIC III.
--       So I wrote this code to rollup the ICD code to the 3-digit category,
--       and excluded any V and E codes.   


------ This query created all the case statements in the code below
--SELECT distinct 
--[RolledUp_ICD9_Short_Title],
--',max(CASE WHEN  [RolledUp_ICD9_Code]=''' + [RolledUp_ICD9_Code] + ''' then 1 else 0 end )as [' + [RolledUp_ICD9_Short_Title] + ']'
--FROM [dbo].[ICD_DIAGNOSES_ROLLUP]
---- Exclude the V and E codes
--where isnumeric([RolledUp_ICD9_Code]) = 1
---- Sort the columns alphabetically
--order by [RolledUp_ICD9_Short_Title] asc





with Diagnoses as (
-- Only patients with at least one recored ICD-9 code will be returned by the query.
select distinct
a.[SUBJECT_ID]
,b.[RolledUp_ICD9_Code]
,b.[RolledUp_ICD9_Short_Title]

from 
[dbo].[DIAGNOSES_ICD] a
inner join
[dbo].[ICD_DIAGNOSES_ROLLUP] b
on 
a.ICD9_CODE=b.[Detailed_ICD9_Code]

-- Exclude the V and E codes
where isnumeric(a.ICD9_CODE)=1

)

select
[SUBJECT_ID]
------------------
,max(CASE WHEN  [RolledUp_ICD9_Code]='63300' then 1 else 0 end )as [Abd preg w/o intrau preg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='78900' then 1 else 0 end )as [Abdmnal pain unspcf site]
,max(CASE WHEN  [RolledUp_ICD9_Code]='79400' then 1 else 0 end )as [Abn cns funct study NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7920' then 1 else 0 end )as [Abn fnd-cerebrospinal fl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='79500' then 1 else 0 end )as [Abn glandular pap smear]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7810' then 1 else 0 end )as [Abn involun movement NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7960' then 1 else 0 end )as [Abn toxicologic finding]
,max(CASE WHEN  [RolledUp_ICD9_Code]='63700' then 1 else 0 end )as [Abort NOS w pel inf-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9150' then 1 else 0 end )as [Abrasion finger]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9170' then 1 else 0 end )as [Abrasion foot & toe]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9130' then 1 else 0 end )as [Abrasion forearm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9140' then 1 else 0 end )as [Abrasion hand]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9100' then 1 else 0 end )as [Abrasion head]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9160' then 1 else 0 end )as [Abrasion hip & leg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9190' then 1 else 0 end )as [Abrasion NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9120' then 1 else 0 end )as [Abrasion shoulder/arm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9110' then 1 else 0 end )as [Abrasion trunk]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5720' then 1 else 0 end )as [Abscess of liver]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5130' then 1 else 0 end )as [Abscess of lung]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6260' then 1 else 0 end )as [Absence of menstruation]
,max(CASE WHEN  [RolledUp_ICD9_Code]='30300' then 1 else 0 end )as [Ac alcohol intox-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0060' then 1 else 0 end )as [Ac amebiasis w/o abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5400' then 1 else 0 end )as [Ac append w peritonitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='04500' then 1 else 0 end )as [Ac bulbar polio-type NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53200' then 1 else 0 end )as [Ac duodenal ulcer w hem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20700' then 1 else 0 end )as [Ac erth/erlk wo ach rmsn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3570' then 1 else 0 end )as [Ac infect polyneuritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5845' then 1 else 0 end )as [Ac kidny fail - tubr necr]
,max(CASE WHEN  [RolledUp_ICD9_Code]='46400' then 1 else 0 end )as [Ac laryngitis w/o obst]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20800' then 1 else 0 end )as [Ac leu un cl wo ach rmsn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20400' then 1 else 0 end )as [Ac lym leuk wo achv rmsn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53400' then 1 else 0 end )as [Ac marginal ulcer w hem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38300' then 1 else 0 end )as [Ac mastoiditis w/o compl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4610' then 1 else 0 end )as [Ac maxillary sinusitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20600' then 1 else 0 end )as [Ac mono leu wo achv rmsn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20500' then 1 else 0 end )as [Ac myl leuk wo achv rmsn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4220' then 1 else 0 end )as [Ac myocardit in oth dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38100' then 1 else 0 end )as [Ac nonsup otitis med NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='73000' then 1 else 0 end )as [Ac osteomyelitis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53300' then 1 else 0 end )as [Ac peptic ulcer w hemorr]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4200' then 1 else 0 end )as [Ac pericardit in oth dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5800' then 1 else 0 end )as [Ac proliferat nephritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5080' then 1 else 0 end )as [Ac pul manif d/t radiat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6140' then 1 else 0 end )as [Ac salpingo-oophoritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53100' then 1 else 0 end )as [Ac stomach ulcer w hem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38200' then 1 else 0 end )as [Ac supp otitis media NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6150' then 1 else 0 end )as [Ac uterine inflammation]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5570' then 1 else 0 end )as [Ac vasc insuff intestine]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4210' then 1 else 0 end )as [Ac/subac bact endocard]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5300' then 1 else 0 end )as [Achalasia & cardiospasm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5360' then 1 else 0 end )as [Achlorhydria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7060' then 1 else 0 end )as [Acne varioliformis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4470' then 1 else 0 end )as [Acq arterioven fistula]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7380' then 1 else 0 end )as [Acq nose deformity]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5370' then 1 else 0 end )as [Acq pyloric stenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2530' then 1 else 0 end )as [Acromegaly and gigantism]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7020' then 1 else 0 end )as [Actinic keratosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4660' then 1 else 0 end )as [Acute bronchitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5750' then 1 else 0 end )as [Acute cholecystitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37200' then 1 else 0 end )as [Acute conjunctivitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4150' then 1 else 0 end )as [Acute cor pulmonale]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5950' then 1 else 0 end )as [Acute cystitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53500' then 1 else 0 end )as [Acute gastrtis w/o hmrhg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0980' then 1 else 0 end )as [Acute gc infect lower gu]
,max(CASE WHEN  [RolledUp_ICD9_Code]='52300' then 1 else 0 end )as [Acute gingititis - plaque]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37600' then 1 else 0 end )as [Acute inflam NOS - orbit]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36400' then 1 else 0 end )as [Acute iridocyclitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4650' then 1 else 0 end )as [Acute laryngopharyngitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='683' then 1 else 0 end )as [Acute lymphadenitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01800' then 1 else 0 end )as [Acute miliary tb-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38400' then 1 else 0 end )as [Acute myringitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='460' then 1 else 0 end )as [Acute nasopharyngitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='570' then 1 else 0 end )as [Acute necrosis of liver]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5770' then 1 else 0 end )as [Acute pancreatitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='462' then 1 else 0 end )as [Acute pharyngitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6010' then 1 else 0 end )as [Acute prostatitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3910' then 1 else 0 end )as [Acute rheumatic pericard]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2450' then 1 else 0 end )as [Acute thyroiditis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='463' then 1 else 0 end )as [Acute tonsillitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4800' then 1 else 0 end )as [Adenoviral pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0790' then 1 else 0 end )as [Adenovirus infect NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7260' then 1 else 0 end )as [Adhesive capsulit shlder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3090' then 1 else 0 end )as [Adjustmnt dis w depressn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7370' then 1 else 0 end )as [Adoles postural kyphosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3070' then 1 else 0 end )as [Adult onset flncy disord]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1360' then 1 else 0 end )as [Ainhum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9580' then 1 else 0 end )as [Air embolism]
,max(CASE WHEN  [RolledUp_ICD9_Code]='30500' then 1 else 0 end )as [Alcohol abuse-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5710' then 1 else 0 end )as [Alcoholic fatty liver]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2870' then 1 else 0 end )as [Allergic purpura]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7080' then 1 else 0 end )as [Allergic urticaria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='70400' then 1 else 0 end )as [Alopecia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3310' then 1 else 0 end )as [Alzheimers disease]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36800' then 1 else 0 end )as [Amblyopia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='41000' then 1 else 0 end )as [AMI anterolateral - unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2700' then 1 else 0 end )as [Amino-acid transport dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2940' then 1 else 0 end )as [Amnestic disord oth dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8870' then 1 else 0 end )as [Amput below elb - unilat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8970' then 1 else 0 end )as [Amput below knee - unilat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8860' then 1 else 0 end )as [Amputation finger]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8960' then 1 else 0 end )as [Amputation foot - unilat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8850' then 1 else 0 end )as [Amputation thumb]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8950' then 1 else 0 end )as [Amputation toe]
,max(CASE WHEN  [RolledUp_ICD9_Code]='566' then 1 else 0 end )as [Anal & rectal abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5690' then 1 else 0 end )as [Anal & rectal polyp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5650' then 1 else 0 end )as [Anal fissure]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1260' then 1 else 0 end )as [Ancylostoma duodenale]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7400' then 1 else 0 end )as [Anencephalus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4130' then 1 else 0 end )as [Angina decubitus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7050' then 1 else 0 end )as [Anhidrosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7200' then 1 else 0 end )as [Ankylosing spondylitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5200' then 1 else 0 end )as [Anodontia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7560' then 1 else 0 end )as [Anomal skull/face bones]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7520' then 1 else 0 end )as [Anomalies of ovaries]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7590' then 1 else 0 end )as [Anomalies of spleen]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7830' then 1 else 0 end )as [Anorexia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='30000' then 1 else 0 end )as [Anxiety state NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0930' then 1 else 0 end )as [Aortic aneurysm - syphil]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4400' then 1 else 0 end )as [Aortic atherosclerosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='541' then 1 else 0 end )as [Appendicitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2660' then 1 else 0 end )as [Ariboflavinosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4170' then 1 else 0 end )as [Arterioven fistu pul ves]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7130' then 1 else 0 end )as [Arthrop w endocr/met dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71800' then 1 else 0 end )as [Artic cartil dis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='501' then 1 else 0 end )as [Asbestosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1270' then 1 else 0 end )as [Ascariasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='267' then 1 else 0 end )as [Ascorbic acid deficiency]
,max(CASE WHEN  [RolledUp_ICD9_Code]='79901' then 1 else 0 end )as [Asphyxia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='44501' then 1 else 0 end )as [Atheroembolism - upper ext]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4260' then 1 else 0 end )as [Atriovent block complete]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6380' then 1 else 0 end )as [Attem abort w pelvic inf]
,max(CASE WHEN  [RolledUp_ICD9_Code]='31400' then 1 else 0 end )as [Attn defic nonhyperact]
,max(CASE WHEN  [RolledUp_ICD9_Code]='29900' then 1 else 0 end )as [Autistic disord-current]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2830' then 1 else 0 end )as [Autoimmun hemolytic anem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6060' then 1 else 0 end )as [Azoospermia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0070' then 1 else 0 end )as [Balantidiasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1250' then 1 else 0 end )as [Bancroftian filariasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9930' then 1 else 0 end )as [Barotrauma - otitic]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0880' then 1 else 0 end )as [Bartonellosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4350' then 1 else 0 end )as [Basilar artery syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94800' then 1 else 0 end )as [Bdy brn < 10%/3d deg NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3510' then 1 else 0 end )as [Bells palsy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2210' then 1 else 0 end )as [Ben neo fallopian tube]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2120' then 1 else 0 end )as [Ben neo nasal cav/sinus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2130' then 1 else 0 end )as [Ben neo skull/face bone]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2150' then 1 else 0 end )as [Ben neo soft tissue head]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2190' then 1 else 0 end )as [Benign neo cervix uteri]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2110' then 1 else 0 end )as [Benign neo esophagus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2290' then 1 else 0 end )as [Benign neo lymph nodes]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2160' then 1 else 0 end )as [Benign neo skin lip]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2270' then 1 else 0 end )as [Benign neoplasm adrenal]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2250' then 1 else 0 end )as [Benign neoplasm brain]
,max(CASE WHEN  [RolledUp_ICD9_Code]='217' then 1 else 0 end )as [Benign neoplasm breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2240' then 1 else 0 end )as [Benign neoplasm eyeball]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2230' then 1 else 0 end )as [Benign neoplasm kidney]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2100' then 1 else 0 end )as [Benign neoplasm lip]
,max(CASE WHEN  [RolledUp_ICD9_Code]='220' then 1 else 0 end )as [Benign neoplasm ovary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2220' then 1 else 0 end )as [Benign neoplasm testis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='226' then 1 else 0 end )as [Benign neoplasm thyroid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2650' then 1 else 0 end )as [Beriberi]
,max(CASE WHEN  [RolledUp_ICD9_Code]='29600' then 1 else 0 end )as [Bipol I single manic NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9210' then 1 else 0 end )as [Black eye NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5940' then 1 else 0 end )as [Blad diverticulum calcul]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5960' then 1 else 0 end )as [Bladder neck obstruction]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8670' then 1 else 0 end )as [Bladder/urethra inj-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1160' then 1 else 0 end )as [Blastomycosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37300' then 1 else 0 end )as [Blepharitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0330' then 1 else 0 end )as [Bordetella pertussis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36900' then 1 else 0 end )as [Both eyes blind-who def]
,max(CASE WHEN  [RolledUp_ICD9_Code]='60000' then 1 else 0 end )as [BPH w/o urinary obs/LUTS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3530' then 1 else 0 end )as [Brachial plexus lesions]
,max(CASE WHEN  [RolledUp_ICD9_Code]='85400' then 1 else 0 end )as [Brain injury NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7630' then 1 else 0 end )as [Breech del/extrac aff NB]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4940' then 1 else 0 end )as [Bronchiectas w/o ac exac]
,max(CASE WHEN  [RolledUp_ICD9_Code]='490' then 1 else 0 end )as [Bronchitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='485' then 1 else 0 end )as [Bronchopneumonia org NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0230' then 1 else 0 end )as [Brucella melitensis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0200' then 1 else 0 end )as [Bubonic plague]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4530' then 1 else 0 end )as [Budd-chiari syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9490' then 1 else 0 end )as [Burn NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94300' then 1 else 0 end )as [Burn NOS arm-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94400' then 1 else 0 end )as [Burn NOS hand-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94100' then 1 else 0 end )as [Burn NOS head-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94500' then 1 else 0 end )as [Burn NOS leg-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9460' then 1 else 0 end )as [Burn NOS multiple site]
,max(CASE WHEN  [RolledUp_ICD9_Code]='94200' then 1 else 0 end )as [Burn NOS trunk-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9470' then 1 else 0 end )as [Burn of mouth & pharynx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80600' then 1 else 0 end )as [C1-c4 fx-cl/cord inj NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='95200' then 1 else 0 end )as [C1-c4 spin cord inj NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2330' then 1 else 0 end )as [Ca in situ breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2340' then 1 else 0 end )as [Ca in situ eye]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2310' then 1 else 0 end )as [Ca in situ larynx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2300' then 1 else 0 end )as [Ca in situ oral cav/phar]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2320' then 1 else 0 end )as [Ca in situ skin lip]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5920' then 1 else 0 end )as [Calculus of kidney]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6020' then 1 else 0 end )as [Calculus of prostate]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6800' then 1 else 0 end )as [Carbuncle of face]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3540' then 1 else 0 end )as [Carpal tunnel syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5790' then 1 else 0 end )as [Celiac disease]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6820' then 1 else 0 end )as [Cellulitis of face]
,max(CASE WHEN  [RolledUp_ICD9_Code]='68100' then 1 else 0 end )as [Cellulitis - finger NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3380' then 1 else 0 end )as [Central pain syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4370' then 1 else 0 end )as [Cerebral atherosclerosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='85100' then 1 else 0 end )as [Cerebral cortx contusion]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3480' then 1 else 0 end )as [Cerebral cysts]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7670' then 1 else 0 end )as [Cerebral hem at birth]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7220' then 1 else 0 end )as [Cervical disc displacmnt]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9530' then 1 else 0 end )as [Cervical root injury]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7230' then 1 else 0 end )as [Cervical spinal stenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7210' then 1 else 0 end )as [Cervical spondylosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6160' then 1 else 0 end )as [Cervicitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0860' then 1 else 0 end )as [Chagas disease of heart]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0990' then 1 else 0 end )as [Chancroid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9400' then 1 else 0 end )as [Chemical burn periocular]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4280' then 1 else 0 end )as [CHF NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7480' then 1 else 0 end )as [Choanal atresia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='57400' then 1 else 0 end )as [Cholelith w ac cholecyst]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0010' then 1 else 0 end )as [Cholera d/t vib cholerae]
,max(CASE WHEN  [RolledUp_ICD9_Code]='496' then 1 else 0 end )as [Chr airway obstruct NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2800' then 1 else 0 end )as [Chr blood loss anemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4730' then 1 else 0 end )as [Chr maxillary sinusitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5730' then 1 else 0 end )as [Chr passiv congest liver]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5820' then 1 else 0 end )as [Chr proliferat nephritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='59000' then 1 else 0 end )as [Chr pyelonephritis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='393' then 1 else 0 end )as [Chr rheumatic pericard]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5851' then 1 else 0 end )as [Chro kidney dis stage I]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4760' then 1 else 0 end )as [Chronic laryngitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4720' then 1 else 0 end )as [Chronic rhinitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='47400' then 1 else 0 end )as [Chronic tonsillitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7010' then 1 else 0 end )as [Circumscribe scleroderma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80400' then 1 else 0 end )as [Cl skul fx w oth bone fx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='74900' then 1 else 0 end )as [Cleft palate NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='74300' then 1 else 0 end )as [Clinic anophthalmos NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80100' then 1 else 0 end )as [Clos skull base fracture]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80300' then 1 else 0 end )as [Close skull fracture NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80000' then 1 else 0 end )as [Closed skull vault fx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='33900' then 1 else 0 end )as [Cluster headache syn NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='500' then 1 else 0 end )as [Coal workers pneumocon]
,max(CASE WHEN  [RolledUp_ICD9_Code]='78001' then 1 else 0 end )as [Coma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7450' then 1 else 0 end )as [Common truncus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8500' then 1 else 0 end )as [Concussion w/o coma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38900' then 1 else 0 end )as [Conduct hearing loss NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65400' then 1 else 0 end )as [Cong abn uter preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2860' then 1 else 0 end )as [Cong factor viii diord]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3590' then 1 else 0 end )as [Cong hered musc dystrphy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7540' then 1 else 0 end )as [Cong skull/face/jaw def]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3430' then 1 else 0 end )as [Congenital diplegia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='243' then 1 else 0 end )as [Congenital hypothyroidsm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7700' then 1 else 0 end )as [Congenital pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7710' then 1 else 0 end )as [Congenital rubella]
,max(CASE WHEN  [RolledUp_ICD9_Code]='56400' then 1 else 0 end )as [Constipation NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='28401' then 1 else 0 end )as [Constitution RBC aplasia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='920' then 1 else 0 end )as [Contusion face/scalp/nck]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9220' then 1 else 0 end )as [Contusion of breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='92400' then 1 else 0 end )as [Contusion of thigh]
,max(CASE WHEN  [RolledUp_ICD9_Code]='92300' then 1 else 0 end )as [Contusion shoulder reg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7790' then 1 else 0 end )as [Convulsions in newborn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='41400' then 1 else 0 end )as [Cor ath unsp vsl ntv/gft]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66300' then 1 else 0 end )as [Cord prolapse-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9300' then 1 else 0 end )as [Corneal foreign body]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37100' then 1 else 0 end )as [Corneal opacity NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37000' then 1 else 0 end )as [Corneal ulcer NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='700' then 1 else 0 end )as [Corns and callosities]
,max(CASE WHEN  [RolledUp_ICD9_Code]='05101' then 1 else 0 end )as [Cowpox]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0470' then 1 else 0 end )as [Coxsackie virus mening]
,max(CASE WHEN  [RolledUp_ICD9_Code]='43400' then 1 else 0 end )as [Crbl thrmbs wo infrct]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0650' then 1 else 0 end )as [Crimean hemorrhagic fev]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9260' then 1 else 0 end )as [Crush inj ext genitalia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9251' then 1 else 0 end )as [Crush inj face scalp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9290' then 1 else 0 end )as [Crush inj mult site NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='92700' then 1 else 0 end )as [Crush inj shoulder reg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='92800' then 1 else 0 end )as [Crushing injury thigh]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3210' then 1 else 0 end )as [Cryptococcal meningitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2550' then 1 else 0 end )as [Cushings syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0390' then 1 else 0 end )as [Cutaneous actinomycosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0220' then 1 else 0 end )as [Cutaneous anthrax]
,max(CASE WHEN  [RolledUp_ICD9_Code]='436' then 1 else 0 end )as [Cva]
,max(CASE WHEN  [RolledUp_ICD9_Code]='27700' then 1 else 0 end )as [Cystic fibros w/o ileus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37500' then 1 else 0 end )as [Dacryoadenitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2690' then 1 else 0 end )as [Deficiency of vitamin k]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6120' then 1 else 0 end )as [Deformity reconst breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3330' then 1 else 0 end )as [Degen basal ganglia NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38800' then 1 else 0 end )as [Degen/vascul dis ear NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66400' then 1 else 0 end )as [Del w 1 deg lacerat-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2590' then 1 else 0 end )as [Delay sexual develop NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2930' then 1 else 0 end )as [Delirium d/t other cond]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2910' then 1 else 0 end )as [Delirium tremens]
,max(CASE WHEN  [RolledUp_ICD9_Code]='061' then 1 else 0 end )as [Dengue]
,max(CASE WHEN  [RolledUp_ICD9_Code]='52100' then 1 else 0 end )as [Dental caries NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='311' then 1 else 0 end )as [Depressive disorder NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6940' then 1 else 0 end )as [Dermatitis herpetiformis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1100' then 1 else 0 end )as [Dermatophyt scalp/beard]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36100' then 1 else 0 end )as [Detachmnt w defect NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6920' then 1 else 0 end )as [Detergent dermatitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5260' then 1 else 0 end )as [Devel odontogenic cysts]
,max(CASE WHEN  [RolledUp_ICD9_Code]='470' then 1 else 0 end )as [Deviated nasal septum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64800' then 1 else 0 end )as [Diabetes in preg-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36201' then 1 else 0 end )as [Diabetic retinopathy NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6910' then 1 else 0 end )as [Diaper or napkin rash]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8620' then 1 else 0 end )as [Diaphragm injury-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71210' then 1 else 0 end )as [Dicalc phos cryst-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2390' then 1 else 0 end )as [Digestive neoplasm NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2460' then 1 else 0 end )as [Dis thyrocalciton secret]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83400' then 1 else 0 end )as [Disl finger NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83900' then 1 else 0 end )as [Disloc cerv vert NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83100' then 1 else 0 end )as [Disloc shoulder NOS-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83300' then 1 else 0 end )as [Disloc wrist NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83200' then 1 else 0 end )as [Dislocat elbow NOS-close]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83800' then 1 else 0 end )as [Dislocat foot NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='83500' then 1 else 0 end )as [Dislocat hip NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8370' then 1 else 0 end )as [Dislocation ankle-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8300' then 1 else 0 end )as [Dislocation jaw-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='25000' then 1 else 0 end )as [DMII wo cmp nt st uncntr]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7580' then 1 else 0 end )as [Downs syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='79001' then 1 else 0 end )as [Drop - hematocrit - precip]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6930' then 1 else 0 end )as [Drug dermatitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2920' then 1 else 0 end )as [Drug withdrawal]
,max(CASE WHEN  [RolledUp_ICD9_Code]='44100' then 1 else 0 end )as [Dsct of aorta unsp site]
,max(CASE WHEN  [RolledUp_ICD9_Code]='504' then 1 else 0 end )as [Dust pneumonopathy NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='56200' then 1 else 0 end )as [Dvrtclo sml int w/o hmrg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='70900' then 1 else 0 end )as [Dyschromia - unspecified]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6250' then 1 else 0 end )as [Dyspareunia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6230' then 1 else 0 end )as [Dysplasia of vagina]
,max(CASE WHEN  [RolledUp_ICD9_Code]='74400' then 1 else 0 end )as [Ear anom NOS/impair hear]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0900' then 1 else 0 end )as [Early cong syph symptom]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0920' then 1 else 0 end )as [Early syph latent relaps]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1220' then 1 else 0 end )as [Echinococc granul liver]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0540' then 1 else 0 end )as [Eczema herpeticum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9940' then 1 else 0 end )as [Effects of lightning]
,max(CASE WHEN  [RolledUp_ICD9_Code]='990' then 1 else 0 end )as [Effects radiation NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3020' then 1 else 0 end )as [Ego-dystonic sex orient]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4920' then 1 else 0 end )as [Emphysematous bleb]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5100' then 1 else 0 end )as [Empyema with fistula]
,max(CASE WHEN  [RolledUp_ICD9_Code]='32301' then 1 else 0 end )as [Enceph/encephmye oth dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7420' then 1 else 0 end )as [Encephalocele]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6030' then 1 else 0 end )as [Encysted hydrocele]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4250' then 1 else 0 end )as [Endomyocardial fibrosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37400' then 1 else 0 end )as [Entropion NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6220' then 1 else 0 end )as [Erosion/ectropion cervix]
,max(CASE WHEN  [RolledUp_ICD9_Code]='035' then 1 else 0 end )as [Erysipelas]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0570' then 1 else 0 end )as [Erythema infectiosum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4560' then 1 else 0 end )as [Esophag varices w bleed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37800' then 1 else 0 end )as [Esotropia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64200' then 1 else 0 end )as [Essen hyperten preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7660' then 1 else 0 end )as [Exceptionally large baby]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5250' then 1 else 0 end )as [Exfoliation of teeth]
,max(CASE WHEN  [RolledUp_ICD9_Code]='76500' then 1 else 0 end )as [Extreme immatur wtNOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='49300' then 1 else 0 end )as [Extrinsic asthma NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65900' then 1 else 0 end )as [Fail mechan induct-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0840' then 1 else 0 end )as [Falciparum malaria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4950' then 1 else 0 end )as [Farmers lung]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0320' then 1 else 0 end )as [Faucial diphtheria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9390' then 1 else 0 end )as [FB bladder & urethra]
,max(CASE WHEN  [RolledUp_ICD9_Code]='936' then 1 else 0 end )as [FB in intestine & colon]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65500' then 1 else 0 end )as [Fetal cns malform-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7680' then 1 else 0 end )as [Fetal death-anoxia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67800' then 1 else 0 end )as [Fetal hematologic-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65600' then 1 else 0 end )as [Fetal-maternal hem-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='734' then 1 else 0 end )as [Flat foot]
,max(CASE WHEN  [RolledUp_ICD9_Code]='34200' then 1 else 0 end )as [Flccd hmiplga unspf side]
,max(CASE WHEN  [RolledUp_ICD9_Code]='48801' then 1 else 0 end )as [Flu dt iden avian w pneu]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36300' then 1 else 0 end )as [Focal chorioretinit NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6200' then 1 else 0 end )as [Follicular cyst of ovary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5070' then 1 else 0 end )as [Food/vomit pneumonitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='73600' then 1 else 0 end )as [Forearm deformity NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='937' then 1 else 0 end )as [Foreign body anus/rectum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='938' then 1 else 0 end )as [Foreign body GI NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='931' then 1 else 0 end )as [Foreign body in ear]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9350' then 1 else 0 end )as [Foreign body in mouth]
,max(CASE WHEN  [RolledUp_ICD9_Code]='932' then 1 else 0 end )as [Foreign body in nose]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9330' then 1 else 0 end )as [Foreign body in pharynx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9340' then 1 else 0 end )as [Foreign body in trachea]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8080' then 1 else 0 end )as [Fracture acetabulum-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8250' then 1 else 0 end )as [Fracture calcaneus-close]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8290' then 1 else 0 end )as [Fracture NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8220' then 1 else 0 end )as [Fracture patella-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80700' then 1 else 0 end )as [Fracture rib NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8090' then 1 else 0 end )as [Fracture trunk bone-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3340' then 1 else 0 end )as [Friedreich's ataxia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3100' then 1 else 0 end )as [Frontal lobe syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9910' then 1 else 0 end )as [Frostbite of face]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5060' then 1 else 0 end )as [Fum/vapor bronc/pneumon]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8180' then 1 else 0 end )as [Fx arm mult/NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8190' then 1 else 0 end )as [Fx arms w rib/sternum-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81400' then 1 else 0 end )as [Fx carpal bone NOS-close]
,max(CASE WHEN  [RolledUp_ICD9_Code]='80500' then 1 else 0 end )as [Fx cervical vert NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81000' then 1 else 0 end )as [Fx clavicle NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='82000' then 1 else 0 end )as [Fx femur intrcaps NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='82100' then 1 else 0 end )as [Fx femur NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8280' then 1 else 0 end )as [Fx legs w arm/rib-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8270' then 1 else 0 end )as [Fx lower limb NEC-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8240' then 1 else 0 end )as [Fx medial malleolus-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81500' then 1 else 0 end )as [Fx metacarpal NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8260' then 1 else 0 end )as [Fx phalanx - foot-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81600' then 1 else 0 end )as [Fx phalanx - hand NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81100' then 1 else 0 end )as [Fx scapula NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81200' then 1 else 0 end )as [Fx up end humerus NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='82300' then 1 else 0 end )as [Fx upper end tibia-close]
,max(CASE WHEN  [RolledUp_ICD9_Code]='81300' then 1 else 0 end )as [Fx upper forearm NOS-cl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0400' then 1 else 0 end )as [Gas gangrene]
,max(CASE WHEN  [RolledUp_ICD9_Code]='34500' then 1 else 0 end )as [Gen noncv ep w/o intr ep]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71500' then 1 else 0 end )as [General osteoarthrosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9990' then 1 else 0 end )as [Generalized vaccinia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='538' then 1 else 0 end )as [GI mucositis (ulceratve)]
,max(CASE WHEN  [RolledUp_ICD9_Code]='024' then 1 else 0 end )as [Glanders]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5290' then 1 else 0 end )as [Glossitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2710' then 1 else 0 end )as [Glycogenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='27400' then 1 else 0 end )as [Gouty arthropathy NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7350' then 1 else 0 end )as [Hallux valgus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20100' then 1 else 0 end )as [Hdgk prg unsp xtrndl org]
,max(CASE WHEN  [RolledUp_ICD9_Code]='95901' then 1 else 0 end )as [Head injury NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7840' then 1 else 0 end )as [Headache]
,max(CASE WHEN  [RolledUp_ICD9_Code]='86100' then 1 else 0 end )as [Heart injury NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9920' then 1 else 0 end )as [Heat stroke & sunstroke]
,max(CASE WHEN  [RolledUp_ICD9_Code]='22800' then 1 else 0 end )as [Hemangioma NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5780' then 1 else 0 end )as [Hematemesis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6290' then 1 else 0 end )as [Hematocele - female NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4230' then 1 else 0 end )as [Hemopericardium]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3200' then 1 else 0 end )as [Hemophilus meningitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4590' then 1 else 0 end )as [Hemorrhage NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0700' then 1 else 0 end )as [Hepatitis A with coma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3560' then 1 else 0 end )as [Hered periph neuropathy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='27501' then 1 else 0 end )as [Heredit hemochromatosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4480' then 1 else 0 end )as [Heredit hemorr telangiec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7570' then 1 else 0 end )as [Hereditary edema of legs]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2820' then 1 else 0 end )as [Hereditary spherocytosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0740' then 1 else 0 end )as [Herpangina]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0530' then 1 else 0 end )as [Herpes zoster meningitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='11500' then 1 else 0 end )as [Histoplasma capsulat NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='042' then 1 else 0 end )as [Human immuno virus dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='630' then 1 else 0 end )as [Hydatidiform mole]
,max(CASE WHEN  [RolledUp_ICD9_Code]='591' then 1 else 0 end )as [Hydronephrosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7780' then 1 else 0 end )as [Hydrops fetalis no isoim]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2560' then 1 else 0 end )as [Hyperestrogenism]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3670' then 1 else 0 end )as [Hypermetropia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2760' then 1 else 0 end )as [Hyperosmolality]
,max(CASE WHEN  [RolledUp_ICD9_Code]='25200' then 1 else 0 end )as [Hyperparathyroidism NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5430' then 1 else 0 end )as [Hyperplasia of appendix]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4780' then 1 else 0 end )as [Hypertrph nasal turbinat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='27900' then 1 else 0 end )as [Hypogammaglobulinem NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2510' then 1 else 0 end )as [Hypoglycemic coma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='33700' then 1 else 0 end )as [Idio perph auto neur NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='63600' then 1 else 0 end )as [Illeg ab w pelv inf-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='684' then 1 else 0 end )as [Impetigo]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6310' then 1 else 0 end )as [Inapp chg hCG early preg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0770' then 1 else 0 end )as [Inclusion conjunctivitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7610' then 1 else 0 end )as [Incompetnt cervix aff NB]
,max(CASE WHEN  [RolledUp_ICD9_Code]='53901' then 1 else 0 end )as [Inf d/t gastrc band proc]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7750' then 1 else 0 end )as [Infant diabet mother syn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67500' then 1 else 0 end )as [Infect nipple preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0090' then 1 else 0 end )as [Infectious enteritis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='075' then 1 else 0 end )as [Infectious mononucleosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7280' then 1 else 0 end )as [Infective myositis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6280' then 1 else 0 end )as [Infertility-anovulation]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6110' then 1 else 0 end )as [Inflam disease of breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4870' then 1 else 0 end )as [Influenza with pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7030' then 1 else 0 end )as [Ingrowing nail]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1020' then 1 else 0 end )as [Initial lesions yaws]
,max(CASE WHEN  [RolledUp_ICD9_Code]='90300' then 1 else 0 end )as [Inj axillary vessel NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9540' then 1 else 0 end )as [Inj cerv sympath nerve]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9040' then 1 else 0 end )as [Inj common femoral arter]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9570' then 1 else 0 end )as [Inj superf nerv head/nck]
,max(CASE WHEN  [RolledUp_ICD9_Code]='90000' then 1 else 0 end )as [Injur carotid artery NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9020' then 1 else 0 end )as [Injury abdominal aorta]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9550' then 1 else 0 end )as [Injury axillary nerve]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9510' then 1 else 0 end )as [Injury oculomotor nerve]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9560' then 1 else 0 end )as [Injury sciatic nerve]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9010' then 1 else 0 end )as [Injury thoracic aorta]
,max(CASE WHEN  [RolledUp_ICD9_Code]='503' then 1 else 0 end )as [Inorg dust pneumocon NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4550' then 1 else 0 end )as [Int hemorrhoid w/o compl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='319' then 1 else 0 end )as [Intellect disability NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8690' then 1 else 0 end )as [Internal inj NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='00800' then 1 else 0 end )as [Intest infec e coli NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='129' then 1 else 0 end )as [Intestin parasitism NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='86800' then 1 else 0 end )as [Intra-abdom inj NOS-clos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='431' then 1 else 0 end )as [Intracerebral hemorrhage]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3240' then 1 else 0 end )as [Intracranial abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5600' then 1 else 0 end )as [Intussusception]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0620' then 1 else 0 end )as [Japanese encephalitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71900' then 1 else 0 end )as [Joint effusion-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7320' then 1 else 0 end )as [Juv osteochondros spine]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4820' then 1 else 0 end )as [K. pneumoniae pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71600' then 1 else 0 end )as [Kaschin-beck dis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='86600' then 1 else 0 end )as [Kidney injury NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0460' then 1 else 0 end )as [Kuru]
,max(CASE WHEN  [RolledUp_ICD9_Code]='260' then 1 else 0 end )as [Kwashiorkor]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8700' then 1 else 0 end )as [Lac eyelid skn/perioculr]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4380' then 1 else 0 end )as [Late ef CV dis-cognf def]
,max(CASE WHEN  [RolledUp_ICD9_Code]='326' then 1 else 0 end )as [Late eff cns abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9090' then 1 else 0 end )as [Late eff drug poisoning]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9080' then 1 else 0 end )as [Late eff int injur chest]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1390' then 1 else 0 end )as [Late eff viral encephal]
,max(CASE WHEN  [RolledUp_ICD9_Code]='677' then 1 else 0 end )as [Late effct cmplcatn preg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9050' then 1 else 0 end )as [Late effec skull/face fx]
,max(CASE WHEN  [RolledUp_ICD9_Code]='138' then 1 else 0 end )as [Late effect acute polio]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1370' then 1 else 0 end )as [Late effect tb - resp/NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='096' then 1 else 0 end )as [Late syphilis latent]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0970' then 1 else 0 end )as [Late syphilis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='63500' then 1 else 0 end )as [Leg abor w pelv inf-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4540' then 1 else 0 end )as [Leg varicosity w ulcer]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0300' then 1 else 0 end )as [Lepromatous leprosy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1000' then 1 else 0 end )as [Leptospiros icterohem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3300' then 1 else 0 end )as [Leukodystrophy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6070' then 1 else 0 end )as [Leukoplakia of penis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6970' then 1 else 0 end )as [Lichen planus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='76400' then 1 else 0 end )as [Light-for-dates wtNOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2140' then 1 else 0 end )as [Lipoma skin face]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0270' then 1 else 0 end )as [Listeriosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='86400' then 1 else 0 end )as [Liver injury NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0870' then 1 else 0 end )as [Louse-borne relaps fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='080' then 1 else 0 end )as [Louse-borne typhus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9070' then 1 else 0 end )as [Lt eff intracranial inj]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9060' then 1 else 0 end )as [Lt eff opn wnd head/trnk]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3490' then 1 else 0 end )as [Lumbar puncture reaction]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0490' then 1 else 0 end )as [Lymphocytic choriomening]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67000' then 1 else 0 end )as [Maj puerp inf NOS-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20900' then 1 else 0 end )as [Mal crcnoid sm intst NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='40400' then 1 else 0 end )as [Mal hy ht/kd I-IV w/o hf]
,max(CASE WHEN  [RolledUp_ICD9_Code]='40300' then 1 else 0 end )as [Mal hy kid w cr kid I-IV]
,max(CASE WHEN  [RolledUp_ICD9_Code]='40200' then 1 else 0 end )as [Mal hyp ht dis w/o hf]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1440' then 1 else 0 end )as [Mal neo ant floor mouth]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1880' then 1 else 0 end )as [Mal neo bladder-trigone]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1500' then 1 else 0 end )as [Mal neo cervical esophag]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1450' then 1 else 0 end )as [Mal neo cheek mucosa]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1920' then 1 else 0 end )as [Mal neo cranial nerves]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1950' then 1 else 0 end )as [Mal neo head/face/neck]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1530' then 1 else 0 end )as [Mal neo hepatic flexure]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1550' then 1 else 0 end )as [Mal neo liver - primary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1960' then 1 else 0 end )as [Mal neo lymph-head/neck]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1750' then 1 else 0 end )as [Mal neo male nipple]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1600' then 1 else 0 end )as [Mal neo nasal cavities]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1570' then 1 else 0 end )as [Mal neo pancreas head]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1630' then 1 else 0 end )as [Mal neo parietal pleura]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1490' then 1 else 0 end )as [Mal neo pharynx NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1480' then 1 else 0 end )as [Mal neo postcricoid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1540' then 1 else 0 end )as [Mal neo rectosigmoid jct]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1580' then 1 else 0 end )as [Mal neo retroperitoneum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1700' then 1 else 0 end )as [Mal neo skull/face bone]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1710' then 1 else 0 end )as [Mal neo soft tissue head]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1510' then 1 else 0 end )as [Mal neo stomach cardia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1470' then 1 else 0 end )as [Mal neo super nasopharyn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1410' then 1 else 0 end )as [Mal neo tongue base]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1860' then 1 else 0 end )as [Mal neo undescend testis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1650' then 1 else 0 end )as [Mal neo upper resp NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1400' then 1 else 0 end )as [Mal neo upper vermilion]
,max(CASE WHEN  [RolledUp_ICD9_Code]='40501' then 1 else 0 end )as [Mal renovasc hypertens]
,max(CASE WHEN  [RolledUp_ICD9_Code]='99600' then 1 else 0 end )as [Malfunc card dev/grf NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1720' then 1 else 0 end )as [Malig melanoma lip]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1820' then 1 else 0 end )as [Malig neo corpus uteri]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1990' then 1 else 0 end )as [Malig neo disseminated]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1800' then 1 else 0 end )as [Malig neo endocervix]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1560' then 1 else 0 end )as [Malig neo gallbladder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1590' then 1 else 0 end )as [Malig neo intestine NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1740' then 1 else 0 end )as [Malig neo nipple]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1420' then 1 else 0 end )as [Malig neo parotid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1430' then 1 else 0 end )as [Malig neo upper gum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1890' then 1 else 0 end )as [Malig neopl kidney]
,max(CASE WHEN  [RolledUp_ICD9_Code]='17300' then 1 else 0 end )as [Malig neopl skin lip NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='179' then 1 else 0 end )as [Malig neopl uterus NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1940' then 1 else 0 end )as [Malign neopl adrenal]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1910' then 1 else 0 end )as [Malign neopl cerebrum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1900' then 1 else 0 end )as [Malign neopl eyeball]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1830' then 1 else 0 end )as [Malign neopl ovary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1871' then 1 else 0 end )as [Malign neopl prepuce]
,max(CASE WHEN  [RolledUp_ICD9_Code]='185' then 1 else 0 end )as [Malign neopl prostate]
,max(CASE WHEN  [RolledUp_ICD9_Code]='193' then 1 else 0 end )as [Malign neopl thyroid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1840' then 1 else 0 end )as [Malign neopl vagina]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4010' then 1 else 0 end )as [Malignant hypertension]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1610' then 1 else 0 end )as [Malignant neo glottis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1620' then 1 else 0 end )as [Malignant neo trachea]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1520' then 1 else 0 end )as [Malignant neopl duodenum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='181' then 1 else 0 end )as [Malignant neopl placenta]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1640' then 1 else 0 end )as [Malignant neopl thymus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1460' then 1 else 0 end )as [Malignant neopl tonsil]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2630' then 1 else 0 end )as [Malnutrition mod degree]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67900' then 1 else 0 end )as [Mat comp in utero-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7600' then 1 else 0 end )as [Matern hyperten aff NB]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66900' then 1 else 0 end )as [Maternal distress-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7510' then 1 else 0 end )as [Meckels diverticulum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7771' then 1 else 0 end )as [Meconium obstruction]
,max(CASE WHEN  [RolledUp_ICD9_Code]='025' then 1 else 0 end )as [Melioidosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38600' then 1 else 0 end )as [Menieres disease NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0360' then 1 else 0 end )as [Meningococcal meningitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='34600' then 1 else 0 end )as [Mgrn w aura wo ntrc mgrn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64300' then 1 else 0 end )as [Mild hyperem grav-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='317' then 1 else 0 end )as [Mild intellect disabilty]
,max(CASE WHEN  [RolledUp_ICD9_Code]='632' then 1 else 0 end )as [Missed abortion]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3940' then 1 else 0 end )as [Mitral stenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4240' then 1 else 0 end )as [Mitral valve disorder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3960' then 1 else 0 end )as [Mitral/aortic stenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3180' then 1 else 0 end )as [Mod intellect disability]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0780' then 1 else 0 end )as [Molluscum contagiosum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='25801' then 1 else 0 end )as [Mult endo neoplas type I]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20300' then 1 else 0 end )as [Mult mye w/o achv rmson]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8170' then 1 else 0 end )as [Multiple fx hand-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='340' then 1 else 0 end )as [Multiple sclerosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0720' then 1 else 0 end )as [Mumps orchitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0810' then 1 else 0 end )as [Murine typhus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1340' then 1 else 0 end )as [Myiasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4290' then 1 else 0 end )as [Myocarditis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='35800' then 1 else 0 end )as [Mysthna grvs w/o ac exac]
,max(CASE WHEN  [RolledUp_ICD9_Code]='34700' then 1 else 0 end )as [Narcolepsy w/o cataplexy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8020' then 1 else 0 end )as [Nasal bone fx-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='78701' then 1 else 0 end )as [Nausea with vomiting]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7720' then 1 else 0 end )as [NB fetal blood loss NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7730' then 1 else 0 end )as [NB hemolyt dis:rh isoimm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7760' then 1 else 0 end )as [NB hemorrhagic disease]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20200' then 1 else 0 end )as [Ndlr lym unsp xtrndl org]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5930' then 1 else 0 end )as [Nephroptosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5810' then 1 else 0 end )as [Nephrotic syn - prolifer]
,max(CASE WHEN  [RolledUp_ICD9_Code]='99700' then 1 else 0 end )as [Nervous syst complc NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3410' then 1 else 0 end )as [Neuromyelitis optica]
,max(CASE WHEN  [RolledUp_ICD9_Code]='28800' then 1 else 0 end )as [Neutropenia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3220' then 1 else 0 end )as [Nonpyogenic meningitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36600' then 1 else 0 end )as [Nonsenile cataract NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7930' then 1 else 0 end )as [Nonsp abn fd-skull/head]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2410' then 1 else 0 end )as [Nontox uninodular goiter]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4320' then 1 else 0 end )as [Nontraum extradural hem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1040' then 1 else 0 end )as [Nonvenereal endemic syph]
,max(CASE WHEN  [RolledUp_ICD9_Code]='650' then 1 else 0 end )as [Normal delivery]
,max(CASE WHEN  [RolledUp_ICD9_Code]='261' then 1 else 0 end )as [Nutritional marasmus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67300' then 1 else 0 end )as [Ob air embolism-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='27800' then 1 else 0 end )as [Obesity NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66000' then 1 else 0 end )as [Obstruct/fet malpos-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='43300' then 1 else 0 end )as [Ocl bslr art wo infrct]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8710' then 1 else 0 end )as [Ocular lac w/o prolapse]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7170' then 1 else 0 end )as [Old bucket tear med men]
,max(CASE WHEN  [RolledUp_ICD9_Code]='412' then 1 else 0 end )as [Old myocardial infarct]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3520' then 1 else 0 end )as [Olfactory nerve disorder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65800' then 1 else 0 end )as [Oligohydramnios-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8910' then 1 else 0 end )as [Open wnd knee/leg/ankle]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8840' then 1 else 0 end )as [Open wound arm mult/NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8760' then 1 else 0 end )as [Open wound of back]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8790' then 1 else 0 end )as [Open wound of breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8770' then 1 else 0 end )as [Open wound of buttock]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8750' then 1 else 0 end )as [Open wound of chest]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8830' then 1 else 0 end )as [Open wound of finger]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8920' then 1 else 0 end )as [Open wound of foot]
,max(CASE WHEN  [RolledUp_ICD9_Code]='88100' then 1 else 0 end )as [Open wound of forearm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8820' then 1 else 0 end )as [Open wound of hand]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8900' then 1 else 0 end )as [Open wound of hip/thigh]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8940' then 1 else 0 end )as [Open wound of leg NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8780' then 1 else 0 end )as [Open wound of penis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8730' then 1 else 0 end )as [Open wound of scalp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='88000' then 1 else 0 end )as [Open wound of shoulder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8930' then 1 else 0 end )as [Open wound of toe]
,max(CASE WHEN  [RolledUp_ICD9_Code]='30400' then 1 else 0 end )as [Opioid dependence-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1210' then 1 else 0 end )as [Opisthorchiasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='87400' then 1 else 0 end )as [Opn wnd larynx w trachea]
,max(CASE WHEN  [RolledUp_ICD9_Code]='87200' then 1 else 0 end )as [Opn wound extern ear NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='118' then 1 else 0 end )as [Opportunistic mycoses]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9500' then 1 else 0 end )as [Optic nerve injury]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6040' then 1 else 0 end )as [Orchitis with abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='32700' then 1 else 0 end )as [Organic insomnia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0730' then 1 else 0 end )as [Ornithosis pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='05900' then 1 else 0 end )as [Orthopoxvirus infect NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4580' then 1 else 0 end )as [Orthostatic hypotension]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7310' then 1 else 0 end )as [Osteitis deformans NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='73300' then 1 else 0 end )as [Osteoporosis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='048' then 1 else 0 end )as [Oth enteroviral cns dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='262' then 1 else 0 end )as [Oth severe malnutrition]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9950' then 1 else 0 end )as [Other anaphylactic react]
,max(CASE WHEN  [RolledUp_ICD9_Code]='542' then 1 else 0 end )as [Other appendicitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3870' then 1 else 0 end )as [Otoscler-oval wnd nonobl]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3130' then 1 else 0 end )as [Overanxious disorder]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37700' then 1 else 0 end )as [Papilledema NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64600' then 1 else 0 end )as [Papyraceous fetus-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3320' then 1 else 0 end )as [Paralysis agitans]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3010' then 1 else 0 end )as [Paranoid personality]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2970' then 1 else 0 end )as [Paranoid state - simple]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4270' then 1 else 0 end )as [Parox atrial tachycardia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7470' then 1 else 0 end )as [Patent ductus arteriosus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1320' then 1 else 0 end )as [Pediculus capitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65300' then 1 else 0 end )as [Pelvic deform NOS-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38000' then 1 else 0 end )as [Perichondritis pinna NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7740' then 1 else 0 end )as [Perinat jaund-hered anem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5680' then 1 else 0 end )as [Peritoneal adhesions]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5670' then 1 else 0 end )as [Peritonitis in infec dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='475' then 1 else 0 end )as [Peritonsillar abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2810' then 1 else 0 end )as [Pernicious anemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2540' then 1 else 0 end )as [Persist hyperplas thymus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='325' then 1 else 0 end )as [Phlebitis intrcran sinus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0660' then 1 else 0 end )as [Phlebotomus fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6850' then 1 else 0 end )as [Pilonidal cyst w abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1030' then 1 else 0 end )as [Pinta primary lesions]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1110' then 1 else 0 end )as [Pityriasis versicolor]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7620' then 1 else 0 end )as [Placenta previa aff NB]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64100' then 1 else 0 end )as [Placenta previa-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5110' then 1 else 0 end )as [Pleurisy w/o effus or TB]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4830' then 1 else 0 end )as [Pneu mycplsm pneumoniae]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4841' then 1 else 0 end )as [Pneum w cytomeg incl dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='481' then 1 else 0 end )as [Pneumococcal pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='505' then 1 else 0 end )as [Pneumoconiosis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='486' then 1 else 0 end )as [Pneumonia - organism NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9730' then 1 else 0 end )as [Pois-antacid/antigastric]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9630' then 1 else 0 end )as [Pois-antiallrg/antiemet]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9720' then 1 else 0 end )as [Pois-card rhythm regulat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9680' then 1 else 0 end )as [Pois-cns muscle depress]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9620' then 1 else 0 end )as [Pois-corticosteroids]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9760' then 1 else 0 end )as [Pois-local anti-infect]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9740' then 1 else 0 end )as [Pois-mercurial diuretics]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9710' then 1 else 0 end )as [Pois-parasympathomimetic]
,max(CASE WHEN  [RolledUp_ICD9_Code]='96900' then 1 else 0 end )as [Poison-antidepresnt NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9660' then 1 else 0 end )as [Poison-oxazolidine deriv]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9790' then 1 else 0 end )as [Poison-smallpox vaccine]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9700' then 1 else 0 end )as [Poisoning-analeptics]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9670' then 1 else 0 end )as [Poisoning-barbiturates]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9780' then 1 else 0 end )as [Poisoning-bcg vaccine]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9770' then 1 else 0 end )as [Poisoning-dietetics]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9640' then 1 else 0 end )as [Poisoning-iron/compounds]
,max(CASE WHEN  [RolledUp_ICD9_Code]='96500' then 1 else 0 end )as [Poisoning-opium NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9750' then 1 else 0 end )as [Poisoning-oxytocic agent]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9600' then 1 else 0 end )as [Poisoning-penicillins]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9610' then 1 else 0 end )as [Poisoning-sulfonamides]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4460' then 1 else 0 end )as [Polyarteritis nodosa]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2730' then 1 else 0 end )as [Polyclon hypergammaglobu]
,max(CASE WHEN  [RolledUp_ICD9_Code]='75500' then 1 else 0 end )as [Polydactyly NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65700' then 1 else 0 end )as [Polyhydramnios-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='725' then 1 else 0 end )as [Polymyalgia rheumatica]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6210' then 1 else 0 end )as [Polyp of corpus uteri]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4710' then 1 else 0 end )as [Polyp of nasal cavity]
,max(CASE WHEN  [RolledUp_ICD9_Code]='452' then 1 else 0 end )as [Portal vein thrombosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4110' then 1 else 0 end )as [Post MI syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64510' then 1 else 0 end )as [Post term preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6390' then 1 else 0 end )as [Postabortion gu infect]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5760' then 1 else 0 end )as [Postcholecystectomy synd]
,max(CASE WHEN  [RolledUp_ICD9_Code]='515' then 1 else 0 end )as [Postinflam pulm fibrosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4570' then 1 else 0 end )as [Postmastect lymphedema]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0550' then 1 else 0 end )as [Postmeasles encephalitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='99800' then 1 else 0 end )as [Postoperative shock - NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2440' then 1 else 0 end )as [Postsurgical hypothyroid]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0520' then 1 else 0 end )as [Postvaricella encephalit]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36500' then 1 else 0 end )as [Preglaucoma NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66500' then 1 else 0 end )as [Prelabor rupt uter-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6270' then 1 else 0 end )as [Premenopause menorrhagia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='70700' then 1 else 0 end )as [Pressure ulcer - site NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4160' then 1 else 0 end )as [Prim pulm hypertension]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01000' then 1 else 0 end )as [Prim TB complex-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66100' then 1 else 0 end )as [Prim uterine inert-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1140' then 1 else 0 end )as [Primary coccidioidomycos]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0910' then 1 else 0 end )as [Primary genital syphilis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5830' then 1 else 0 end )as [Proliferat nephritis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66200' then 1 else 0 end )as [Prolonged 1st stage-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7910' then 1 else 0 end )as [Proteinuria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6980' then 1 else 0 end )as [Pruritus ani]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6960' then 1 else 0 end )as [Psoriatic arthropathy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='316' then 1 else 0 end )as [Psychic factor w oth dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3060' then 1 else 0 end )as [Psychogen musculskel dis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67400' then 1 else 0 end )as [Puerp cerebvasc dis-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67200' then 1 else 0 end )as [Puerperal pyrexia-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5160' then 1 else 0 end )as [Pul alveolar proteinosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66800' then 1 else 0 end )as [Pulm compl in del-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='514' then 1 else 0 end )as [Pulm congest/hypostasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5180' then 1 else 0 end )as [Pulmonary collapse]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0310' then 1 else 0 end )as [Pulmonary mycobacteria]
,max(CASE WHEN  [RolledUp_ICD9_Code]='74600' then 1 else 0 end )as [Pulmonary valve anom NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5220' then 1 else 0 end )as [Pulpitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2720' then 1 else 0 end )as [Pure hypercholesterolem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='36000' then 1 else 0 end )as [Purulent endophthalm NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='68600' then 1 else 0 end )as [Pyoderma NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='71100' then 1 else 0 end )as [Pyogen arthritis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0830' then 1 else 0 end )as [Q fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='34400' then 1 else 0 end )as [Quadriplegia - unspecifd]
,max(CASE WHEN  [RolledUp_ICD9_Code]='071' then 1 else 0 end )as [Rabies]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5581' then 1 else 0 end )as [Radiation gastroenterit]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4430' then 1 else 0 end )as [Raynauds syndrome]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2980' then 1 else 0 end )as [React depress psychosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='31500' then 1 else 0 end )as [Reading disorder NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='605' then 1 else 0 end )as [Redun prepuce & phimosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5550' then 1 else 0 end )as [Reg enteritis - sm intest]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7530' then 1 else 0 end )as [Renal agenesis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7880' then 1 else 0 end )as [Renal colic]
,max(CASE WHEN  [RolledUp_ICD9_Code]='586' then 1 else 0 end )as [Renal failure NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5880' then 1 else 0 end )as [Renal osteodystrophy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='587' then 1 else 0 end )as [Renal sclerosis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='78600' then 1 else 0 end )as [Respiratory abnorm NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='769' then 1 else 0 end )as [Respiratory distress syn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66700' then 1 else 0 end )as [Retain placenta NOS-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='20000' then 1 else 0 end )as [Retclsrc unsp xtrndl org]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67600' then 1 else 0 end )as [Retract nipple preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3920' then 1 else 0 end )as [Rheum chorea w hrt invol]
,max(CASE WHEN  [RolledUp_ICD9_Code]='390' then 1 else 0 end )as [Rheum fev w/o hrt involv]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3950' then 1 else 0 end )as [Rheumat aortic stenosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3980' then 1 else 0 end )as [Rheumatic myocarditis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5171' then 1 else 0 end )as [Rheumatic pneumonia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7290' then 1 else 0 end )as [Rheumatism NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7140' then 1 else 0 end )as [Rheumatoid arthritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4770' then 1 else 0 end )as [Rhinitis due to pollen]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1170' then 1 else 0 end )as [Rhinosporidiosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2680' then 1 else 0 end )as [Rickets - active]
,max(CASE WHEN  [RolledUp_ICD9_Code]='05810' then 1 else 0 end )as [Roseola infantum NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='05600' then 1 else 0 end )as [Rubella nerve compl NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0630' then 1 else 0 end )as [Russia spr-summer enceph]
,max(CASE WHEN  [RolledUp_ICD9_Code]='44401' then 1 else 0 end )as [Saddle embolus abd aorta]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5270' then 1 else 0 end )as [Salivary gland atrophy]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0030' then 1 else 0 end )as [Salmonella enteritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='135' then 1 else 0 end )as [Sarcoidosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1330' then 1 else 0 end )as [Scabies]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1200' then 1 else 0 end )as [Schistosoma haematobium]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3550' then 1 else 0 end )as [Sciatic nerve lesion]
,max(CASE WHEN  [RolledUp_ICD9_Code]='37900' then 1 else 0 end )as [Scleritis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='69010' then 1 else 0 end )as [Sebrrheic dermatitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='24900' then 1 else 0 end )as [Sec DM wo cmp nt st uncn]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1980' then 1 else 0 end )as [Second malig neo kidney]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1970' then 1 else 0 end )as [Secondary malig neo lung]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2890' then 1 else 0 end )as [Secondary polycythemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6080' then 1 else 0 end )as [Seminal vesiculitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2900' then 1 else 0 end )as [Senile dementia uncomp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='797' then 1 else 0 end )as [Senility w/o psychosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='449' then 1 else 0 end )as [Septic arterial embolism]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0040' then 1 else 0 end )as [Shigella dysenteriae]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2850' then 1 else 0 end )as [Sideroblastic anemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='502' then 1 else 0 end )as [Silica pneumocon NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='29500' then 1 else 0 end )as [Simpl schizophren-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4910' then 1 else 0 end )as [Simple chr bronchitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2400' then 1 else 0 end )as [Simple goiter]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1760' then 1 else 0 end )as [Skin - kaposis sarcoma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7820' then 1 else 0 end )as [Skin sensation disturb]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6100' then 1 else 0 end )as [Solitary cyst of breast]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7390' then 1 else 0 end )as [Somat dys head region]
,max(CASE WHEN  [RolledUp_ICD9_Code]='74100' then 1 else 0 end )as [Spin bif w hydroceph NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='72400' then 1 else 0 end )as [Spinal stenosis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0260' then 1 else 0 end )as [Spirillary fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='86500' then 1 else 0 end )as [Spleen injury NOS-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='63400' then 1 else 0 end )as [Spon abor w pel inf-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5120' then 1 else 0 end )as [Spont tens pneumothorax]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0820' then 1 else 0 end )as [Spotted fevers]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8400' then 1 else 0 end )as [Sprain acromioclavicular]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8430' then 1 else 0 end )as [Sprain iliofemoral]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8440' then 1 else 0 end )as [Sprain lateral coll lig]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8460' then 1 else 0 end )as [Sprain lumbosacral]
,max(CASE WHEN  [RolledUp_ICD9_Code]='84500' then 1 else 0 end )as [Sprain of ankle NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8480' then 1 else 0 end )as [Sprain of nasal septum]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8470' then 1 else 0 end )as [Sprain of neck]
,max(CASE WHEN  [RolledUp_ICD9_Code]='84200' then 1 else 0 end )as [Sprain of wrist NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8410' then 1 else 0 end )as [Sprain radial collat lig]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0050' then 1 else 0 end )as [Staph food poisoning]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8630' then 1 else 0 end )as [Stomach injury-closed]
,max(CASE WHEN  [RolledUp_ICD9_Code]='52800' then 1 else 0 end )as [Stomatitis/mucositis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0340' then 1 else 0 end )as [Strep sore throat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0380' then 1 else 0 end )as [Streptococcal septicemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='04100' then 1 else 0 end )as [Streptococcus unspecf]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3080' then 1 else 0 end )as [Stress react - emotional]
,max(CASE WHEN  [RolledUp_ICD9_Code]='430' then 1 else 0 end )as [Subarachnoid hemorrhage]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2180' then 1 else 0 end )as [Submucous leiomyoma]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7980' then 1 else 0 end )as [Sudden infant death synd]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9180' then 1 else 0 end )as [Superfic inj periocular]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4510' then 1 else 0 end )as [Superfic phlebitis-leg]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0600' then 1 else 0 end )as [Sylvatic yellow fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='72700' then 1 else 0 end )as [Synovitis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64700' then 1 else 0 end )as [Syphilis in preg-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0950' then 1 else 0 end )as [Syphilitic episcleritis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3360' then 1 else 0 end )as [Syringomyelia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7100' then 1 else 0 end )as [Syst lupus erythematosus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0940' then 1 else 0 end )as [Tabes dorsalis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7850' then 1 else 0 end )as [Tachycardia NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1230' then 1 else 0 end )as [Taenia solium intestine]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01100' then 1 else 0 end )as [TB lung infiltr-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01300' then 1 else 0 end )as [TB meningitis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01600' then 1 else 0 end )as [TB of kidney-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01500' then 1 else 0 end )as [TB of vertebra-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01400' then 1 else 0 end )as [TB peritonitis-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01200' then 1 else 0 end )as [TB pleurisy-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='01700' then 1 else 0 end )as [TB skin/subcutan-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8360' then 1 else 0 end )as [Tear med menisc knee-cur]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2570' then 1 else 0 end )as [Testicular hyperfunction]
,max(CASE WHEN  [RolledUp_ICD9_Code]='037' then 1 else 0 end )as [Tetanus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='66600' then 1 else 0 end )as [Third-stage hem-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64400' then 1 else 0 end )as [Threat prem labor-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64000' then 1 else 0 end )as [Threatened abort-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1120' then 1 else 0 end )as [Thrush]
,max(CASE WHEN  [RolledUp_ICD9_Code]='64900' then 1 else 0 end )as [Tobacco use disord-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='7500' then 1 else 0 end )as [Tongue tie]
,max(CASE WHEN  [RolledUp_ICD9_Code]='24200' then 1 else 0 end )as [Tox dif goiter no crisis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='986' then 1 else 0 end )as [Tox eff carbon monoxide]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9830' then 1 else 0 end )as [Tox eff corrosive aromat]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9800' then 1 else 0 end )as [Toxic eff ethyl alcohol]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9880' then 1 else 0 end )as [Toxic eff fish/shellfish]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9870' then 1 else 0 end )as [Toxic eff liq petrol gas]
,max(CASE WHEN  [RolledUp_ICD9_Code]='981' then 1 else 0 end )as [Toxic eff petroleum prod]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9820' then 1 else 0 end )as [Toxic effect benzene]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9890' then 1 else 0 end )as [Toxic effect cyanides]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9850' then 1 else 0 end )as [Toxic effect mercury]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6950' then 1 else 0 end )as [Toxic erythema]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1280' then 1 else 0 end )as [Toxocariasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='1300' then 1 else 0 end )as [Toxoplasm meningoenceph]
,max(CASE WHEN  [RolledUp_ICD9_Code]='51900' then 1 else 0 end )as [Tracheostomy comp NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0760' then 1 else 0 end )as [Trachoma - initial stage]
,max(CASE WHEN  [RolledUp_ICD9_Code]='8600' then 1 else 0 end )as [Traum pneumothorax-close]
,max(CASE WHEN  [RolledUp_ICD9_Code]='85200' then 1 else 0 end )as [Traum subarachnoid hem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='85300' then 1 else 0 end )as [Traumatic brain hem NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='124' then 1 else 0 end )as [Trichinosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3970' then 1 else 0 end )as [Tricuspid valve disease]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3501' then 1 else 0 end )as [Trigeminal neuralgia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65100' then 1 else 0 end )as [Twin pregnancy-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='9840' then 1 else 0 end )as [Tx eff inorg lead compnd]
,max(CASE WHEN  [RolledUp_ICD9_Code]='38500' then 1 else 0 end )as [Tympanosclerosis NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0020' then 1 else 0 end )as [Typhoid fever]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5560' then 1 else 0 end )as [Ulcerative enterocolitis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0210' then 1 else 0 end )as [Ulceroglandul tularemia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2380' then 1 else 0 end )as [Unc behav neo bone]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2370' then 1 else 0 end )as [Unc behav neo pituitary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2350' then 1 else 0 end )as [Unc behav neo salivary]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2360' then 1 else 0 end )as [Uncert behav neo uterus]
,max(CASE WHEN  [RolledUp_ICD9_Code]='55100' then 1 else 0 end )as [Unil femoral hern w gang]
,max(CASE WHEN  [RolledUp_ICD9_Code]='55200' then 1 else 0 end )as [Unil femoral hern w obst]
,max(CASE WHEN  [RolledUp_ICD9_Code]='55300' then 1 else 0 end )as [Unilat femoral hernia]
,max(CASE WHEN  [RolledUp_ICD9_Code]='55000' then 1 else 0 end )as [Unilat ing hernia w gang]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5890' then 1 else 0 end )as [Unilateral small kidney]
,max(CASE WHEN  [RolledUp_ICD9_Code]='31200' then 1 else 0 end )as [Unsocial aggress-unspec]
,max(CASE WHEN  [RolledUp_ICD9_Code]='52400' then 1 else 0 end )as [Unspcf anomaly jaw size]
,max(CASE WHEN  [RolledUp_ICD9_Code]='65200' then 1 else 0 end )as [Unstable lie-unspecified]
,max(CASE WHEN  [RolledUp_ICD9_Code]='4420' then 1 else 0 end )as [Upper extremity aneurysm]
,max(CASE WHEN  [RolledUp_ICD9_Code]='59800' then 1 else 0 end )as [Urethr strict:infect NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5970' then 1 else 0 end )as [Urethral abscess]
,max(CASE WHEN  [RolledUp_ICD9_Code]='5990' then 1 else 0 end )as [Urin tract infection NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6190' then 1 else 0 end )as [Urin-genital fistul - fem]
,max(CASE WHEN  [RolledUp_ICD9_Code]='13100' then 1 else 0 end )as [Urogenital trichomon NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='6170' then 1 else 0 end )as [Uterine endometriosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='61800' then 1 else 0 end )as [Vaginal wall prolpse NOS]
,max(CASE WHEN  [RolledUp_ICD9_Code]='67100' then 1 else 0 end )as [Varic vein leg preg-unsp]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0500' then 1 else 0 end )as [Variola major]
,max(CASE WHEN  [RolledUp_ICD9_Code]='101' then 1 else 0 end )as [Vincents angina]
,max(CASE WHEN  [RolledUp_ICD9_Code]='064' then 1 else 0 end )as [Vir enceph arthropod NEC]
,max(CASE WHEN  [RolledUp_ICD9_Code]='0850' then 1 else 0 end )as [Visceral leishmaniasis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='2640' then 1 else 0 end )as [Vit A conjunctiv xerosis]
,max(CASE WHEN  [RolledUp_ICD9_Code]='62401' then 1 else 0 end )as [Vulvar intraeph neopl I]
,max(CASE WHEN  [RolledUp_ICD9_Code]='3350' then 1 else 0 end )as [Werdnig-hoffmann disease]


------------------
from 
Diagnoses
group by 
[SUBJECT_ID]









GO


/****** Object:  View [dbo].[ELIXHAUSER_AHRQ]    Script Date: 4/14/2019 5:03:37 PM ******/
DROP VIEW [dbo].[ELIXHAUSER_AHRQ]
GO

/****** Object:  View [dbo].[ELIXHAUSER_AHRQ]    Script Date: 4/14/2019 5:03:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ELIXHAUSER_AHRQ] as
with
icd as
(
  select hadm_id, subject_id, seq_num
    , cast(icd9_code as char(5)) as icd9_code
  from diagnoses_icd
  where seq_num != 1 -- we do not include the primary icd-9 code
)
,
eliflg as
(
select hadm_id, subject_id, seq_num, icd9_code
-- note that these codes will seem incomplete at first
-- for example, CHF is missing a lot of codes referenced in the literature (402.11, 402.91, etc)
-- these codes are captured by hypertension flags instead
-- later there are some complicated rules which confirm/reject those codes as CHF
, CASE
  when icd9_code = '39891' then 1
  when icd9_code between '4280 ' and '4289 ' then 1
		end as CHF       /* Congestive heart failure */

-- cardiac arrhythmias is removed in up to date versions
, case
    when icd9_code = '42610' then 1
    when icd9_code = '42611' then 1
    when icd9_code = '42613' then 1
    when icd9_code between '4262 ' and '42653' then 1
    when icd9_code between '4266 ' and '42689' then 1
    when icd9_code = '4270 ' then 1
    when icd9_code = '4272 ' then 1
    when icd9_code = '42731' then 1
    when icd9_code = '42760' then 1
    when icd9_code = '4279 ' then 1
    when icd9_code = '7850 ' then 1
    when icd9_code between 'V450 ' and 'V4509' then 1
    when icd9_code between 'V533 ' and 'V5339' then 1
  end as ARYTHM /* Cardiac arrhythmias */

, CASE
  when icd9_code between '09320' and '09324' then 1
  when icd9_code between '3940 ' and '3971 ' then 1
  when icd9_code = '3979 ' then 1
  when icd9_code between '4240 ' and '42499' then 1
  when icd9_code between '7463 ' and '7466 ' then 1
  when icd9_code = 'V422 ' then 1
  when icd9_code = 'V433 ' then 1
		end as VALVE     /* Valvular disease */

, CASE
  when icd9_code between '41511' and '41519' then 1
  when icd9_code between '4160 ' and '4169 ' then 1
  when icd9_code = '4179 ' then 1
		end as PULMCIRC  /* Pulmonary circulation disorder */

, CASE
  when icd9_code between '4400 ' and '4409 ' then 1
  when icd9_code between '44100' and '4419 ' then 1
  when icd9_code between '4420 ' and '4429 ' then 1
  when icd9_code between '4431 ' and '4439 ' then 1
  when icd9_code between '44421' and '44422' then 1
  when icd9_code = '4471 ' then 1
  when icd9_code = '449  ' then 1
  when icd9_code = '5571 ' then 1
  when icd9_code = '5579 ' then 1
  when icd9_code = 'V434 ' then 1
		end as PERIVASC  /* Peripheral vascular disorder */

, CASE
  when icd9_code = '4011 ' then 1
  when icd9_code = '4019 ' then 1
  when icd9_code between '64200' and '64204' then 1
		end as HTN       /* Hypertension, uncomplicated */

, CASE
  when icd9_code = '4010 ' then 1
  when icd9_code = '4372 ' then 1
		end as HTNCX     /* Hypertension, complicated */


      /******************************************************************/
      /* The following are special, temporary formats used in the       */
      /* creation of the hypertension complicated comorbidity when      */
      /* overlapping with congestive heart failure or renal failure     */
      /* occurs. These temporary formats are referenced in the program  */
      /* called comoanaly2009.txt.                                      */
      /******************************************************************/
, CASE
  when icd9_code between '64220' and '64224' then 1
		end as HTNPREG   /* Pre-existing hypertension complicating pregnancy */

, CASE
  when icd9_code = '40200' then 1
  when icd9_code = '40210' then 1
  when icd9_code = '40290' then 1
  when icd9_code = '40509' then 1
  when icd9_code = '40519' then 1
  when icd9_code = '40599'         then 1
		end as HTNWOCHF  /* Hypertensive heart disease without heart failure */

, CASE
  when icd9_code = '40201' then 1
  when icd9_code = '40211' then 1
  when icd9_code = '40291'         then 1
		end as HTNWCHF   /* Hypertensive heart disease with heart failure */

, CASE
  when icd9_code = '40300' then 1
  when icd9_code = '40310' then 1
  when icd9_code = '40390' then 1
  when icd9_code = '40501' then 1
  when icd9_code = '40511' then 1
  when icd9_code = '40591' then 1
  when icd9_code between '64210' and '64214' then 1
		end as HRENWORF  /* Hypertensive renal disease without renal failure */

, CASE
  when icd9_code = '40301' then 1
  when icd9_code = '40311' then 1
  when icd9_code = '40391'         then 1
		end as HRENWRF   /* Hypertensive renal disease with renal failure */

, CASE
  when icd9_code = '40400' then 1
  when icd9_code = '40410' then 1
  when icd9_code = '40490'         then 1
		end as HHRWOHRF  /* Hypertensive heart and renal disease without heart or renal failure */

, CASE
  when icd9_code = '40401' then 1
  when icd9_code = '40411' then 1
  when icd9_code = '40491'         then 1
		end as HHRWCHF   /* Hypertensive heart and renal disease with heart failure */

, CASE
  when icd9_code = '40402' then 1
  when icd9_code = '40412' then 1
  when icd9_code = '40492'         then 1
		end as HHRWRF    /* Hypertensive heart and renal disease with renal failure */

, CASE
  when icd9_code = '40403' then 1
  when icd9_code = '40413' then 1
  when icd9_code = '40493'         then 1
		end as HHRWHRF   /* Hypertensive heart and renal disease with heart and renal failure */

, CASE
  when icd9_code between '64270' and '64274' then 1
  when icd9_code between '64290' and '64294' then 1
		end as OHTNPREG  /* Other hypertension in pregnancy */

      /******************** End Temporary Formats ***********************/

, CASE
  when icd9_code between '3420 ' and '3449 ' then 1
  when icd9_code between '43820' and '43853' then 1
  when icd9_code = '78072'         then 1
		end as PARA      /* Paralysis */

, CASE
  when icd9_code between '3300 ' and '3319 ' then 1
  when icd9_code = '3320 ' then 1
  when icd9_code = '3334 ' then 1
  when icd9_code = '3335 ' then 1
  when icd9_code = '3337 ' then 1
  when icd9_code in ('33371','33372','33379','33385','33394') then 1
  when icd9_code between '3340 ' and '3359 ' then 1
  when icd9_code = '3380 ' then 1
  when icd9_code = '340  ' then 1
  when icd9_code between '3411 ' and '3419 ' then 1
  when icd9_code between '34500' and '34511' then 1
  when icd9_code between '3452 ' and '3453 ' then 1
  when icd9_code between '34540' and '34591' then 1
  when icd9_code between '34700' and '34701' then 1
  when icd9_code between '34710' and '34711' then 1
  when icd9_code = '3483' then 1 -- discontinued icd-9
  when icd9_code between '64940' and '64944' then 1
  when icd9_code = '7687 ' then 1
  when icd9_code between '76870' and '76873' then 1
  when icd9_code = '7803 ' then 1
  when icd9_code = '78031' then 1
  when icd9_code = '78032' then 1
  when icd9_code = '78033' then 1
  when icd9_code = '78039' then 1
  when icd9_code = '78097' then 1
  when icd9_code = '7843 '         then 1
		end as NEURO     /* Other neurological */

, CASE
  when icd9_code between '490  ' and '4928 ' then 1
  when icd9_code between '49300' and '49392' then 1
  when icd9_code between '494  ' and '4941 ' then 1
  when icd9_code between '4950 ' and '505  ' then 1
  when icd9_code = '5064 '         then 1
		end as CHRNLUNG  /* Chronic pulmonary disease */

, CASE
  when icd9_code between '25000' and '25033' then 1
  when icd9_code between '64800' and '64804' then 1
  when icd9_code between '24900' and '24931' then 1
		end as DM        /* Diabetes w/o chronic complications*/

, CASE
  when icd9_code between '25040' and '25093' then 1
  when icd9_code = '7751 ' then 1
  when icd9_code between '24940' and '24991' then 1
		end as DMCX      /* Diabetes w/ chronic complications */

, CASE
  when icd9_code between '243  ' and '2442 ' then 1
  when icd9_code = '2448 ' then 1
  when icd9_code = '2449 '         then 1
		end as HYPOTHY   /* Hypothyroidism */

, CASE
  when icd9_code = '585  ' then 1 -- discontinued code
  when icd9_code = '5853 ' then 1
  when icd9_code = '5854 ' then 1
  when icd9_code = '5855 ' then 1
  when icd9_code = '5856 ' then 1
  when icd9_code = '5859 ' then 1
  when icd9_code = '586  ' then 1
  when icd9_code = 'V420 ' then 1
  when icd9_code = 'V451 ' then 1
  when icd9_code between 'V560 ' and 'V5632' then 1
  when icd9_code = 'V568 ' then 1
  when icd9_code between 'V4511' and 'V4512' then 1
		end as RENLFAIL  /* Renal failure */

, CASE
  when icd9_code = '07022' then 1
  when icd9_code = '07023' then 1
  when icd9_code = '07032' then 1
  when icd9_code = '07033' then 1
  when icd9_code = '07044' then 1
  when icd9_code = '07054' then 1
  when icd9_code = '4560 ' then 1
  when icd9_code = '4561 ' then 1
  when icd9_code = '45620' then 1
  when icd9_code = '45621' then 1
  when icd9_code = '5710 ' then 1
  when icd9_code = '5712 ' then 1
  when icd9_code = '5713 ' then 1
  when icd9_code between '57140' and '57149' then 1
  when icd9_code = '5715 ' then 1
  when icd9_code = '5716 ' then 1
  when icd9_code = '5718 ' then 1
  when icd9_code = '5719 ' then 1
  when icd9_code = '5723 ' then 1
  when icd9_code = '5728 ' then 1
  when icd9_code = '5735 ' then 1
  when icd9_code = 'V427 '         then 1
		end as LIVER     /* Liver disease */

, CASE
  when icd9_code = '53141' then 1
  when icd9_code = '53151' then 1
  when icd9_code = '53161' then 1
  when icd9_code = '53170' then 1
  when icd9_code = '53171' then 1
  when icd9_code = '53191' then 1
  when icd9_code = '53241' then 1
  when icd9_code = '53251' then 1
  when icd9_code = '53261' then 1
  when icd9_code = '53270' then 1
  when icd9_code = '53271' then 1
  when icd9_code = '53291' then 1
  when icd9_code = '53341' then 1
  when icd9_code = '53351' then 1
  when icd9_code = '53361' then 1
  when icd9_code = '53370' then 1
  when icd9_code = '53371' then 1
  when icd9_code = '53391' then 1
  when icd9_code = '53441' then 1
  when icd9_code = '53451' then 1
  when icd9_code = '53461' then 1
  when icd9_code = '53470' then 1
  when icd9_code = '53471' then 1
  when icd9_code = '53491'         then 1
		end as ULCER     /* Chronic Peptic ulcer disease (includes bleeding only if obstruction is also present) */

, CASE
  when icd9_code between '042  ' and '0449 ' then 1
		end as AIDS      /* HIV and AIDS */

, CASE
  when icd9_code between '20000' and '20238' then 1
  when icd9_code between '20250' and '20301' then 1
  when icd9_code = '2386 ' then 1
  when icd9_code = '2733 ' then 1
  when icd9_code between '20302' and '20382' then 1
		end as LYMPH     /* Lymphoma */

, CASE
  when icd9_code between '1960 ' and '1991 ' then 1
  when icd9_code between '20970' and '20975' then 1
  when icd9_code = '20979' then 1
  when icd9_code = '78951'         then 1
		end as METS      /* Metastatic cancer */

, CASE
  when icd9_code between '1400 ' and '1729 ' then 1
  when icd9_code between '1740 ' and '1759 ' then 1
  when icd9_code between '179  ' and '1958 ' then 1
  when icd9_code between '20900' and '20924' then 1
  when icd9_code between '20925' and '2093 ' then 1
  when icd9_code between '20930' and '20936' then 1
  when icd9_code between '25801' and '25803' then 1
		end as TUMOR     /* Solid tumor without metastasis */

, CASE
  when icd9_code = '7010 ' then 1
  when icd9_code between '7100 ' and '7109 ' then 1
  when icd9_code between '7140 ' and '7149 ' then 1
  when icd9_code between '7200 ' and '7209 ' then 1
  when icd9_code = '725  ' then 1
		end as ARTH              /* Rheumatoid arthritis/collagen vascular diseases */

, CASE
  when icd9_code between '2860 ' and '2869 ' then 1
  when icd9_code = '2871 ' then 1
  when icd9_code between '2873 ' and '2875 ' then 1
  when icd9_code between '64930' and '64934' then 1
  when icd9_code = '28984'         then 1
		end as COAG      /* Coagulation deficiency */

, CASE
  when icd9_code = '2780 ' then 1
  when icd9_code = '27800' then 1
  when icd9_code = '27801' then 1
  when icd9_code = '27803' then 1
  when icd9_code between '64910' and '64914' then 1
  when icd9_code between 'V8530' and 'V8539' then 1
  when icd9_code = 'V854 ' then 1 -- hierarchy used for AHRQ v3.6 and earlier
  when icd9_code between 'V8541' and 'V8545' then 1
  when icd9_code = 'V8554' then 1
  when icd9_code = '79391'         then 1
		end as OBESE     /* Obesity      */

, CASE
  when icd9_code between '260  ' and '2639 ' then 1
  when icd9_code between '78321' and '78322' then 1
		end as WGHTLOSS  /* Weight loss */

, CASE
  when icd9_code between '2760 ' and '2769 ' then 1
		end as LYTES     /* Fluid and electrolyte disorders - note:
                                      this comorbidity should be dropped when
                                      used with the AHRQ Patient Safety Indicators*/
, CASE
  when icd9_code = '2800 ' then 1
  when icd9_code between '64820' and '64824' then 1
		end as BLDLOSS   /* Blood loss anemia */

, CASE
  when icd9_code between '2801 ' and '2819 ' then 1
  when icd9_code between '28521' and '28529' then 1
  when icd9_code = '2859 '         then 1
		end as ANEMDEF  /* Deficiency anemias */

, CASE
  when icd9_code between '2910 ' and '2913 ' then 1
  when icd9_code = '2915 ' then 1
  when icd9_code = '2918 ' then 1
  when icd9_code = '29181' then 1
  when icd9_code = '29182' then 1
  when icd9_code = '29189' then 1
  when icd9_code = '2919 ' then 1
  when icd9_code between '30300' and '30393' then 1
  when icd9_code between '30500' and '30503' then 1
		end as ALCOHOL   /* Alcohol abuse */

, CASE
  when icd9_code = '2920 ' then 1
  when icd9_code between '29282' and '29289' then 1
  when icd9_code = '2929 ' then 1
  when icd9_code between '30400' and '30493' then 1
  when icd9_code between '30520' and '30593' then 1
  when icd9_code between '64830' and '64834' then 1
		end as DRUG      /* Drug abuse */

, CASE
  when icd9_code between '29500' and '2989 ' then 1
  when icd9_code = '29910' then 1
  when icd9_code = '29911'         then 1
		end as PSYCH    /* Psychoses */

, CASE
  when icd9_code = '3004 ' then 1
  when icd9_code = '30112' then 1
  when icd9_code = '3090 ' then 1
  when icd9_code = '3091 ' then 1
  when icd9_code = '311  '         then 1
		end as DEPRESS  /* Depression */
from icd
)
-- collapse the icd9_code specific flags into hadm_id specific flags
-- this groups comorbidities together for a single patient admission
, eligrp as
(
  select hadm_id, subject_id
  , max(chf) as chf
  , max(arythm) as arythm
  , max(valve) as valve
  , max(pulmcirc) as pulmcirc
  , max(perivasc) as perivasc
  , max(htn) as htn
  , max(htncx) as htncx
  , max(htnpreg) as htnpreg
  , max(htnwochf) as htnwochf
  , max(htnwchf) as htnwchf
  , max(hrenworf) as hrenworf
  , max(hrenwrf) as hrenwrf
  , max(hhrwohrf) as hhrwohrf
  , max(hhrwchf) as hhrwchf
  , max(hhrwrf) as hhrwrf
  , max(hhrwhrf) as hhrwhrf
  , max(ohtnpreg) as ohtnpreg
  , max(para) as para
  , max(neuro) as neuro
  , max(chrnlung) as chrnlung
  , max(dm) as dm
  , max(dmcx) as dmcx
  , max(hypothy) as hypothy
  , max(renlfail) as renlfail
  , max(liver) as liver
  , max(ulcer) as ulcer
  , max(aids) as aids
  , max(lymph) as lymph
  , max(mets) as mets
  , max(tumor) as tumor
  , max(arth) as arth
  , max(coag) as coag
  , max(obese) as obese
  , max(wghtloss) as wghtloss
  , max(lytes) as lytes
  , max(bldloss) as bldloss
  , max(anemdef) as anemdef
  , max(alcohol) as alcohol
  , max(drug) as drug
  , max(psych) as psych
  , max(depress) as depress
from eliflg
group by hadm_id, subject_id
)

-- DRG FILTER --
, msdrg as
(
select
  hadm_id, subject_id
/**** V29 MS-DRG Formats ****/

/* Cardiac */
, case
    when d.drg_code between 001 and 002 then 1
    when d.drg_code between 215 and 238 then 1
    when d.drg_code between 242 and 252 then 1
    when d.drg_code between 253 and 254 then 1
    when d.drg_code between 258 and 262 then 1
    when d.drg_code between 265 and 267 then 1
    when d.drg_code between 280 and 293 then 1
    when d.drg_code between 296 and 298 then 1
    when d.drg_code between 302 and 303 then 1
    when d.drg_code between 306 and 313 then 1
else 0 end as CARDDRG

/* Peripheral vascular */
, case
    when d.drg_code between 299 and 301 then 1
else 0 end as PERIDRG

/* Renal */
, case
    when d.drg_code = 652 then 1
    when d.drg_code between 656 and 661 then 1
    when d.drg_code between 673 and 675 then 1
    when d.drg_code between 682 and 700 then 1
else 0 end as RENALDRG

/* Nervous system */
, case
    when d.drg_code between 020 and 042 then 1
    when d.drg_code between 052 and 103 then 1
else 0 end as NERVDRG

/* Cerebrovascular */
, case
    when d.drg_code between 020 and 022 then 1
    when d.drg_code between 034 and 039 then 1
    when d.drg_code between 064 and 072 then 1
else 0 end as CEREDRG

/* COPD asthma */
, case
    when d.drg_code between 190 and 192 then 1
    when d.drg_code between 202 and 203 then 1
else 0 end as PULMDRG

/* Diabetes */
, case
    when d.drg_code between 637 and 639 then 1
else 0 end as  DIABDRG

/* Thyroid endocrine */
, case
    when d.drg_code between 625 and 627 then 1
    when d.drg_code between 643 and 645 then 1
else 0 end as HYPODRG

/* Kidney transp, renal fail/dialysis */
, case
    when d.drg_code = 652 then 1
    when d.drg_code between 682 and 685 then 1
else 0 end as RENFDRG

/* Liver */
, case
    when d.drg_code between 420 and 425 then 1
    when d.drg_code between 432 and 434 then 1
    when d.drg_code between 441 and 446 then 1
else 0 end as LIVERDRG

/* GI hemorrhage or ulcer */
, case
    when d.drg_code between 377 and 384 then 1
else 0 end as ULCEDRG

/* Human immunodeficiency virus */
, case
    when d.drg_code between 969 and 970 then 1
    when d.drg_code between 974 and 977 then 1
else 0 end as HIVDRG

/* Leukemia/lymphoma */
, case
    when d.drg_code between 820 and 830 then 1
    when d.drg_code between 834 and 849 then 1
else 0 end as LEUKDRG

/* Cancer, lymphoma */
, case
    when d.drg_code = 054 then 1
    when d.drg_code = 055 then 1
    when d.drg_code between 146 and 148 then 1
    when d.drg_code between 180 and 182 then 1
    when d.drg_code between 374 and 376 then 1
    when d.drg_code between 435 and 437 then 1
    when d.drg_code between 542 and 544 then 1
    when d.drg_code between 582 and 585 then 1
    when d.drg_code between 597 and 599 then 1
    when d.drg_code between 656 and 658 then 1
    when d.drg_code between 686 and 688 then 1
    when d.drg_code between 715 and 716 then 1
    when d.drg_code between 722 and 724 then 1
    when d.drg_code between 736 and 741 then 1
    when d.drg_code between 754 and 756 then 1
    when d.drg_code between 826 and 830 then 1
    when d.drg_code between 843 and 849 then 1
else 0 end as CANCDRG

/* Connective tissue */
, case
    when d.drg_code between 545 and 547 then 1
else 0 end as ARTHDRG

/* Nutrition/metabolic */
, case
    when d.drg_code between 640 and 641 then 1
else 0 end as NUTRDRG

/* Anemia */
, case
    when d.drg_code between 808 and 812 then 1
else 0 end as ANEMDRG

/* Alcohol drug */
, case
    when d.drg_code between 894 and 897 then 1
else 0 end as ALCDRG

/*Coagulation disorders*/
, case
    when d.drg_code = 813 then 1
else 0 end as COAGDRG

/*Hypertensive Complicated  */
, case
    when d.drg_code = 077 then 1
    when d.drg_code = 078 then 1
    when d.drg_code = 304 then 1
else 0 end as HTNCXDRG

/*Hypertensive Uncomplicated  */
, case
    when d.drg_code = 079 then 1
    when d.drg_code = 305 then 1
else 0 end as HTNDRG

/* Psychoses */
, case
    when d.drg_code = 885 then 1
else 0 end as PSYDRG

/* Obesity */
, case
    when d.drg_code between 619 and 621 then 1
else 0 end as OBESEDRG

/* Depressive Neuroses */
, case
    when d.drg_code = 881 then 1
else 0 end as DEPRSDRG

from
(
  select hadm_id, subject_id, drg_type, cast(drg_code as numeric) as drg_code from drgcodes where drg_type = 'MS'
) d

)
, hcfadrg as
(
select
  hadm_id, subject_id

  /** V24 DRG Formats  **/

  /* Cardiac */
  , case
      when d.drg_code between 103 and 112 then 1
      when d.drg_code between 115 and 118 then 1
      when d.drg_code between 121 and 127 then 1
      when d.drg_code = 129 then 1
      when d.drg_code = 132 then 1
      when d.drg_code = 133 then 1
      when d.drg_code between 135 and 143 then 1
      when d.drg_code between 514 and 518 then 1
      when d.drg_code between 525 and 527 then 1
      when d.drg_code between 535 and 536 then 1
      when d.drg_code between 547 and 550 then 1
      when d.drg_code between 551 and 558 then 1
  else 0 end as CARDDRG

  /* Peripheral vascular */
  , case
      when d.drg_code = 130 then 1
      when d.drg_code = 131 then 1
  else 0 end as PERIDRG

  /* Renal */
  , case
      when d.drg_code between 302 and 305 then 1
      when d.drg_code between 315 and 333 then 1

  else 0 end as RENALDRG

  /* Nervous system */
  , case
      when d.drg_code between 1 and 35 then 1
      when d.drg_code = 524 then 1
      when d.drg_code between 528 and 534 then 1
      when d.drg_code = 543 then 1
      when d.drg_code between 559 and 564 then 1
      when d.drg_code = 577 then 1

  else 0 end as NERVDRG

   /* Cerebrovascular */
  , case
      when d.drg_code = 5 then 1
      when d.drg_code between 14 and 17 then 1
      when d.drg_code = 524 then 1
      when d.drg_code = 528 then 1
      when d.drg_code between 533 and 534 then 1
      when d.drg_code = 577 then 1
  else 0 end as CEREDRG

  /* COPD asthma */
  , case
      when d.drg_code = 88 then 1
      when d.drg_code between 96 and 98 then 1

  else 0 end as PULMDRG

  /* Diabetes */
  , case
      when d.drg_code = 294 then 1
      when d.drg_code = 295 then 1
  else 0 end as DIABDRG

  /* Thyroid endocrine */
  , case
      when d.drg_code = 290 then 1
      when d.drg_code = 300 then 1
      when d.drg_code = 301 then 1

  else 0 end as HYPODRG

  /* Kidney transp, renal fail/dialysis */
  , case
      when d.drg_code = 302 then 1
      when d.drg_code = 316 then 1
      when d.drg_code = 317 then 1
  else 0 end as RENFDRG

  /* Liver */
  , case
      when d.drg_code between 199 and 202 then 1
      when d.drg_code between 205 and 208 then 1

  else 0 end as LIVERDRG

  /* GI hemorrhage or ulcer */
  , case
      when d.drg_code between 174 and 178 then 1
  else 0 end as ULCEDRG

  /* Human immunodeficiency virus */
  , case
      when d.drg_code = 488 then 1
      when d.drg_code = 489 then 1
      when d.drg_code = 490 then 1

  else 0 end as HIVDRG

  /* Leukemia/lymphoma */
  , case
      when d.drg_code between 400 and 414 then 1
      when d.drg_code = 473 then 1
      when d.drg_code = 492 then 1
      when d.drg_code between 539 and 540 then 1

  else 0 end as LEUKDRG

  /* Cancer, lymphoma */
  , case
      when d.drg_code = 10 then 1
      when d.drg_code = 11 then 1
      when d.drg_code = 64 then 1
      when d.drg_code = 82 then 1
      when d.drg_code = 172 then 1
      when d.drg_code = 173 then 1
      when d.drg_code = 199 then 1
      when d.drg_code = 203 then 1
      when d.drg_code = 239 then 1

      when d.drg_code between 257 and 260 then 1
      when d.drg_code = 274 then 1
      when d.drg_code = 275 then 1
      when d.drg_code = 303 then 1
      when d.drg_code = 318 then 1
      when d.drg_code = 319 then 1

      when d.drg_code = 338 then 1
      when d.drg_code = 344 then 1
      when d.drg_code = 346 then 1
      when d.drg_code = 347 then 1
      when d.drg_code = 354 then 1
      when d.drg_code = 355 then 1
      when d.drg_code = 357 then 1
      when d.drg_code = 363 then 1
      when d.drg_code = 366 then 1

      when d.drg_code = 367 then 1
      when d.drg_code between 406 and 414 then 1
  else 0 end as CANCDRG

  /* Connective tissue */
  , case
      when d.drg_code = 240 then 1
      when d.drg_code = 241 then 1
  else 0 end as ARTHDRG

  /* Nutrition/metabolic */
  , case
      when d.drg_code between 296 and 298 then 1
  else 0 end as NUTRDRG

  /* Anemia */
  , case
      when d.drg_code = 395 then 1
      when d.drg_code = 396 then 1
      when d.drg_code = 574 then 1
  else 0 end as ANEMDRG

  /* Alcohol drug */
  , case
      when d.drg_code between 433 and 437 then 1
      when d.drg_code between 521 and 523 then 1
  else 0 end as ALCDRG

  /* Coagulation disorders */
  , case
      when d.drg_code = 397 then 1
  else 0 end as COAGDRG

  /* Hypertensive Complicated */
  , case
      when d.drg_code = 22 then 1
      when d.drg_code = 134 then 1
  else 0 end as HTNCXDRG

  /* Hypertensive Uncomplicated */
  , case
      when d.drg_code = 134 then 1
  else 0 end as HTNDRG

  /* Psychoses */
  , case
      when d.drg_code = 430 then 1
  else 0 end as PSYDRG

  /* Obesity */
  , case
      when d.drg_code = 288 then 1
  else 0 end as OBESEDRG

  /* Depressive Neuroses */
  , case
      when d.drg_code = 426 then 1
  else 0 end as DEPRSDRG

  from
  (
    select hadm_id, subject_id, drg_type, cast(drg_code as numeric) as drg_code from drgcodes where drg_type = 'HCFA'
  ) d
)
-- merge DRG groups together
, drggrp as
(
  select hadm_id, subject_id
, max(carddrg) as carddrg
, max(peridrg) as peridrg
, max(renaldrg) as renaldrg
, max(nervdrg) as nervdrg
, max(ceredrg) as ceredrg
, max(pulmdrg) as pulmdrg
, max(diabdrg) as diabdrg
, max(hypodrg) as hypodrg
, max(renfdrg) as renfdrg
, max(liverdrg) as liverdrg
, max(ulcedrg) as ulcedrg
, max(hivdrg) as hivdrg
, max(leukdrg) as leukdrg
, max(cancdrg) as cancdrg
, max(arthdrg) as arthdrg
, max(nutrdrg) as nutrdrg
, max(anemdrg) as anemdrg
, max(alcdrg) as alcdrg
, max(coagdrg) as coagdrg
, max(htncxdrg) as htncxdrg
, max(htndrg) as htndrg
, max(psydrg) as psydrg
, max(obesedrg) as obesedrg
, max(deprsdrg) as deprsdrg
from
(
  select d1.* from msdrg d1
  UNION
  select d1.* from hcfadrg d1
) d
group by d.hadm_id, d.subject_id
)
-- now merge these flags together to define elixhauser
-- most are straightforward.. but hypertension flags are a bit more complicated
select adm.subject_id, adm.hadm_id
, case
    when carddrg = 1 then 0 -- DRG filter

    when chf     = 1 then 1
    when htnwchf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwhrf = 1 then 1
  else 0 end as CONGESTIVE_HEART_FAILURE
, case
    when carddrg = 1 then 0 -- DRG filter
    when arythm = 1 then 1
  else 0 end as CARDIAC_ARRHYTHMIAS
, case
    when carddrg = 1 then 0
    when valve = 1 then 1
  else 0 end as VALVULAR_DISEASE
, case
    when carddrg = 1 or pulmdrg = 1 then 0
    when pulmcirc = 1 then 1
    else 0 end as PULMONARY_CIRCULATION
, case
    when peridrg  = 1 then 0
    when perivasc = 1 then 1
    else 0 end as PERIPHERAL_VASCULAR

-- we combine 'htn' and 'htncx' into 'HYPERTENSION'
-- note 'htn' (hypertension) is only 1 if 'htncx' (complicated hypertension) is 0
-- also if htncxdrg = 1, then htndrg = 1

-- In the original SAS code, it appears that:
--  HTN can be 1
--  HTNCX is set to 0 by DRGs
--  but HTN_C is still 1, because HTN is 1
-- so we have to do this complex addition.
,
case
  when
(
-- first hypertension
case
  when htndrg = 0 then 0
  when htn = 1 then 1
else 0 end
)
+
(
-- next complicated hypertension
case
    when htncx    = 1 and htncxdrg = 1 then 0

    when htnpreg  = 1 and htncxdrg = 1 then 0
    when htnwochf = 1 and (htncxdrg = 1 OR carddrg = 1) then 0
    when htnwchf  = 1 and htncxdrg = 1 then 0
    when htnwchf  = 1 and carddrg = 1 then 0
    when hrenworf = 1 and (htncxdrg = 1 or renaldrg = 1) then 0
    when hrenwrf  = 1 and htncxdrg = 1 then 0
    when hrenwrf  = 1 and renaldrg = 1 then 0
    when hhrwohrf = 1 and (htncxdrg = 1 or carddrg = 1 or renaldrg = 1) then 0
    when hhrwchf  = 1 and (htncxdrg = 1 or carddrg = 1 or renaldrg = 1) then 0
    when hhrwrf   = 1 and (htncxdrg = 1 or carddrg = 1 or renaldrg = 1) then 0
    when hhrwhrf  = 1 and (htncxdrg = 1 or carddrg = 1 or renaldrg = 1) then 0
    when ohtnpreg = 1 and (htncxdrg = 1 or carddrg = 1 or renaldrg = 1) then 0

    when htncx = 1 then 1
    when htnpreg = 1 then 1
    when htnwochf = 1 then 1
    when htnwchf = 1 then 1
    when hrenworf = 1 then 1
    when hrenwrf = 1 then 1
    when hhrwohrf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwrf = 1 then 1
    when hhrwhrf = 1 then 1
    when ohtnpreg = 1 then 1
  else 0 end
)
  > 0 then 1 else 0 end as HYPERTENSION

, case when ceredrg = 1 then 0 when para      = 1 then 1 else 0 end as PARALYSIS
, case when nervdrg = 1 then 0 when neuro     = 1 then 1 else 0 end as OTHER_NEUROLOGICAL
, case when pulmdrg = 1 then 0 when chrnlung  = 1 then 1 else 0 end as CHRONIC_PULMONARY
, case
    -- only the more severe comorbidity (complicated diabetes) is kept
    when diabdrg = 1 then 0
    when dmcx = 1 then 0
    when dm = 1 then 1
  else 0 end as DIABETES_UNCOMPLICATED
, case when diabdrg = 1 then 0 when dmcx    = 1 then 1 else 0 end as DIABETES_COMPLICATED
, case when hypodrg = 1 then 0 when hypothy = 1 then 1 else 0 end as HYPOTHYROIDISM
, case
    when renaldrg = 1 then 0
    when renlfail = 1 then 1
    when hrenwrf  = 1 then 1
    when hhrwrf   = 1 then 1
    when hhrwhrf  = 1 then 1
  else 0 end as RENAL_FAILURE

, case when liverdrg  = 1 then 0 when liver = 1 then 1 else 0 end as LIVER_DISEASE
, case when ulcedrg   = 1 then 0 when ulcer = 1 then 1 else 0 end as PEPTIC_ULCER
, case when hivdrg    = 1 then 0 when aids = 1 then 1 else 0 end as AIDS
, case when leukdrg   = 1 then 0 when lymph = 1 then 1 else 0 end as LYMPHOMA
, case when cancdrg   = 1 then 0 when mets = 1 then 1 else 0 end as METASTATIC_CANCER
, case
    when cancdrg = 1 then 0
    -- only the more severe comorbidity (metastatic cancer) is kept
    when mets = 1 then 0
    when tumor = 1 then 1
  else 0 end as SOLID_TUMOR
, case when arthdrg   = 1 then 0 when arth = 1 then 1 else 0 end as RHEUMATOID_ARTHRITIS
, case when coagdrg   = 1 then 0 when coag = 1 then 1 else 0 end as COAGULOPATHY
, case when nutrdrg   = 1
         OR obesedrg  = 1 then 0 when obese = 1 then 1 else 0 end as OBESITY
, case when nutrdrg   = 1 then 0 when wghtloss = 1 then 1 else 0 end as WEIGHT_LOSS
, case when nutrdrg   = 1 then 0 when lytes = 1 then 1 else 0 end as FLUID_ELECTROLYTE
, case when anemdrg   = 1 then 0 when bldloss = 1 then 1 else 0 end as BLOOD_LOSS_ANEMIA
, case when anemdrg   = 1 then 0 when anemdef = 1 then 1 else 0 end as DEFICIENCY_ANEMIAS
, case when alcdrg    = 1 then 0 when alcohol = 1 then 1 else 0 end as ALCOHOL_ABUSE
, case when alcdrg    = 1 then 0 when drug = 1 then 1 else 0 end as DRUG_ABUSE
, case when psydrg    = 1 then 0 when psych = 1 then 1 else 0 end as PSYCHOSES
, case when deprsdrg  = 1 then 0 when depress = 1 then 1 else 0 end as DEPRESSION


from admissions adm
left join eligrp eli
  on adm.hadm_id = eli.hadm_id and adm.subject_id = eli.subject_id
left join drggrp d
  on adm.hadm_id = d.hadm_id and adm.subject_id = d.subject_id

GO


/****** Object:  View [dbo].[elixhauser_ahrq_no_drg]    Script Date: 4/14/2019 5:04:02 PM ******/
DROP VIEW [dbo].[elixhauser_ahrq_no_drg]
GO

/****** Object:  View [dbo].[elixhauser_ahrq_no_drg]    Script Date: 4/14/2019 5:04:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[elixhauser_ahrq_no_drg] as
with
icd as
(
  select hadm_id, seq_num
    , cast(icd9_code as char(5)) as icd9_code
  from diagnoses_icd
  where seq_num != 1 -- we do not include the primary icd-9 code
)
,
eliflg as
(
select hadm_id, seq_num, icd9_code
-- note that these codes will seem incomplete at first
-- for example, CHF is missing a lot of codes referenced in the literature (402.11, 402.91, etc)
-- these codes are captured by hypertension flags instead
-- later there are some complicated rules which confirm/reject those codes as CHF
, CASE
  when icd9_code = '39891' then 1
  when icd9_code between '4280 ' and '4289 ' then 1
		end as CHF       /* Congestive heart failure */

-- cardiac arrhythmias is removed in up to date versions
, case
    when icd9_code = '42610' then 1
    when icd9_code = '42611' then 1
    when icd9_code = '42613' then 1
    when icd9_code between '4262 ' and '42653' then 1
    when icd9_code between '4266 ' and '42689' then 1
    when icd9_code = '4270 ' then 1
    when icd9_code = '4272 ' then 1
    when icd9_code = '42731' then 1
    when icd9_code = '42760' then 1
    when icd9_code = '4279 ' then 1
    when icd9_code = '7850 ' then 1
    when icd9_code between 'V450 ' and 'V4509' then 1
    when icd9_code between 'V533 ' and 'V5339' then 1
  end as ARYTHM /* Cardiac arrhythmias */

, CASE
  when icd9_code between '09320' and '09324' then 1
  when icd9_code between '3940 ' and '3971 ' then 1
  when icd9_code = '3979 ' then 1
  when icd9_code between '4240 ' and '42499' then 1
  when icd9_code between '7463 ' and '7466 ' then 1
  when icd9_code = 'V422 ' then 1
  when icd9_code = 'V433 ' then 1
		end as VALVE     /* Valvular disease */

, CASE
  when icd9_code between '41511' and '41519' then 1
  when icd9_code between '4160 ' and '4169 ' then 1
  when icd9_code = '4179 ' then 1
		end as PULMCIRC  /* Pulmonary circulation disorder */

, CASE
  when icd9_code between '4400 ' and '4409 ' then 1
  when icd9_code between '44100' and '4419 ' then 1
  when icd9_code between '4420 ' and '4429 ' then 1
  when icd9_code between '4431 ' and '4439 ' then 1
  when icd9_code between '44421' and '44422' then 1
  when icd9_code = '4471 ' then 1
  when icd9_code = '449  ' then 1
  when icd9_code = '5571 ' then 1
  when icd9_code = '5579 ' then 1
  when icd9_code = 'V434 ' then 1
		end as PERIVASC  /* Peripheral vascular disorder */

, CASE
  when icd9_code = '4011 ' then 1
  when icd9_code = '4019 ' then 1
  when icd9_code between '64200' and '64204' then 1
		end as HTN       /* Hypertension, uncomplicated */

, CASE
  when icd9_code = '4010 ' then 1
  when icd9_code = '4372 ' then 1
		end as HTNCX     /* Hypertension, complicated */


      /******************************************************************/
      /* The following are special, temporary formats used in the       */
      /* creation of the hypertension complicated comorbidity when      */
      /* overlapping with congestive heart failure or renal failure     */
      /* occurs. These temporary formats are referenced in the program  */
      /* called comoanaly2009.txt.                                      */
      /******************************************************************/
, CASE
  when icd9_code between '64220' and '64224' then 1
		end as HTNPREG   /* Pre-existing hypertension complicating pregnancy */

, CASE
  when icd9_code = '40200' then 1
  when icd9_code = '40210' then 1
  when icd9_code = '40290' then 1
  when icd9_code = '40509' then 1
  when icd9_code = '40519' then 1
  when icd9_code = '40599'         then 1
		end as HTNWOCHF  /* Hypertensive heart disease without heart failure */

, CASE
  when icd9_code = '40201' then 1
  when icd9_code = '40211' then 1
  when icd9_code = '40291'         then 1
		end as HTNWCHF   /* Hypertensive heart disease with heart failure */

, CASE
  when icd9_code = '40300' then 1
  when icd9_code = '40310' then 1
  when icd9_code = '40390' then 1
  when icd9_code = '40501' then 1
  when icd9_code = '40511' then 1
  when icd9_code = '40591' then 1
  when icd9_code between '64210' and '64214' then 1
		end as HRENWORF  /* Hypertensive renal disease without renal failure */

, CASE
  when icd9_code = '40301' then 1
  when icd9_code = '40311' then 1
  when icd9_code = '40391'         then 1
		end as HRENWRF   /* Hypertensive renal disease with renal failure */

, CASE
  when icd9_code = '40400' then 1
  when icd9_code = '40410' then 1
  when icd9_code = '40490'         then 1
		end as HHRWOHRF  /* Hypertensive heart and renal disease without heart or renal failure */

, CASE
  when icd9_code = '40401' then 1
  when icd9_code = '40411' then 1
  when icd9_code = '40491'         then 1
		end as HHRWCHF   /* Hypertensive heart and renal disease with heart failure */

, CASE
  when icd9_code = '40402' then 1
  when icd9_code = '40412' then 1
  when icd9_code = '40492'         then 1
		end as HHRWRF    /* Hypertensive heart and renal disease with renal failure */

, CASE
  when icd9_code = '40403' then 1
  when icd9_code = '40413' then 1
  when icd9_code = '40493'         then 1
		end as HHRWHRF   /* Hypertensive heart and renal disease with heart and renal failure */

, CASE
  when icd9_code between '64270' and '64274' then 1
  when icd9_code between '64290' and '64294' then 1
		end as OHTNPREG  /* Other hypertension in pregnancy */

      /******************** End Temporary Formats ***********************/

, CASE
  when icd9_code between '3420 ' and '3449 ' then 1
  when icd9_code between '43820' and '43853' then 1
  when icd9_code = '78072'         then 1
		end as PARA      /* Paralysis */

, CASE
  when icd9_code between '3300 ' and '3319 ' then 1
  when icd9_code = '3320 ' then 1
  when icd9_code = '3334 ' then 1
  when icd9_code = '3335 ' then 1
  when icd9_code = '3337 ' then 1
  when icd9_code in ('33371','33372','33379','33385','33394') then 1
  when icd9_code between '3340 ' and '3359 ' then 1
  when icd9_code = '3380 ' then 1
  when icd9_code = '340  ' then 1
  when icd9_code between '3411 ' and '3419 ' then 1
  when icd9_code between '34500' and '34511' then 1
  when icd9_code between '3452 ' and '3453 ' then 1
  when icd9_code between '34540' and '34591' then 1
  when icd9_code between '34700' and '34701' then 1
  when icd9_code between '34710' and '34711' then 1
  when icd9_code = '3483' then 1 -- discontinued icd-9
  when icd9_code between '64940' and '64944' then 1
  when icd9_code = '7687 ' then 1
  when icd9_code between '76870' and '76873' then 1
  when icd9_code = '7803 ' then 1
  when icd9_code = '78031' then 1
  when icd9_code = '78032' then 1
  when icd9_code = '78033' then 1
  when icd9_code = '78039' then 1
  when icd9_code = '78097' then 1
  when icd9_code = '7843 '         then 1
		end as NEURO     /* Other neurological */

, CASE
  when icd9_code between '490  ' and '4928 ' then 1
  when icd9_code between '49300' and '49392' then 1
  when icd9_code between '494  ' and '4941 ' then 1
  when icd9_code between '4950 ' and '505  ' then 1
  when icd9_code = '5064 '         then 1
		end as CHRNLUNG  /* Chronic pulmonary disease */

, CASE
  when icd9_code between '25000' and '25033' then 1
  when icd9_code between '64800' and '64804' then 1
  when icd9_code between '24900' and '24931' then 1
		end as DM        /* Diabetes w/o chronic complications*/

, CASE
  when icd9_code between '25040' and '25093' then 1
  when icd9_code = '7751 ' then 1
  when icd9_code between '24940' and '24991' then 1
		end as DMCX      /* Diabetes w/ chronic complications */

, CASE
  when icd9_code between '243  ' and '2442 ' then 1
  when icd9_code = '2448 ' then 1
  when icd9_code = '2449 '         then 1
		end as HYPOTHY   /* Hypothyroidism */

, CASE
  when icd9_code = '585  ' then 1 -- discontinued code
  when icd9_code = '5853 ' then 1
  when icd9_code = '5854 ' then 1
  when icd9_code = '5855 ' then 1
  when icd9_code = '5856 ' then 1
  when icd9_code = '5859 ' then 1
  when icd9_code = '586  ' then 1
  when icd9_code = 'V420 ' then 1
  when icd9_code = 'V451 ' then 1
  when icd9_code between 'V560 ' and 'V5632' then 1
  when icd9_code = 'V568 ' then 1
  when icd9_code between 'V4511' and 'V4512' then 1
		end as RENLFAIL  /* Renal failure */

, CASE
  when icd9_code = '07022' then 1
  when icd9_code = '07023' then 1
  when icd9_code = '07032' then 1
  when icd9_code = '07033' then 1
  when icd9_code = '07044' then 1
  when icd9_code = '07054' then 1
  when icd9_code = '4560 ' then 1
  when icd9_code = '4561 ' then 1
  when icd9_code = '45620' then 1
  when icd9_code = '45621' then 1
  when icd9_code = '5710 ' then 1
  when icd9_code = '5712 ' then 1
  when icd9_code = '5713 ' then 1
  when icd9_code between '57140' and '57149' then 1
  when icd9_code = '5715 ' then 1
  when icd9_code = '5716 ' then 1
  when icd9_code = '5718 ' then 1
  when icd9_code = '5719 ' then 1
  when icd9_code = '5723 ' then 1
  when icd9_code = '5728 ' then 1
  when icd9_code = '5735 ' then 1
  when icd9_code = 'V427 '         then 1
		end as LIVER     /* Liver disease */

, CASE
  when icd9_code = '53141' then 1
  when icd9_code = '53151' then 1
  when icd9_code = '53161' then 1
  when icd9_code = '53170' then 1
  when icd9_code = '53171' then 1
  when icd9_code = '53191' then 1
  when icd9_code = '53241' then 1
  when icd9_code = '53251' then 1
  when icd9_code = '53261' then 1
  when icd9_code = '53270' then 1
  when icd9_code = '53271' then 1
  when icd9_code = '53291' then 1
  when icd9_code = '53341' then 1
  when icd9_code = '53351' then 1
  when icd9_code = '53361' then 1
  when icd9_code = '53370' then 1
  when icd9_code = '53371' then 1
  when icd9_code = '53391' then 1
  when icd9_code = '53441' then 1
  when icd9_code = '53451' then 1
  when icd9_code = '53461' then 1
  when icd9_code = '53470' then 1
  when icd9_code = '53471' then 1
  when icd9_code = '53491'         then 1
		end as ULCER     /* Chronic Peptic ulcer disease (includes bleeding only if obstruction is also present) */

, CASE
  when icd9_code between '042  ' and '0449 ' then 1
		end as AIDS      /* HIV and AIDS */

, CASE
  when icd9_code between '20000' and '20238' then 1
  when icd9_code between '20250' and '20301' then 1
  when icd9_code = '2386 ' then 1
  when icd9_code = '2733 ' then 1
  when icd9_code between '20302' and '20382' then 1
		end as LYMPH     /* Lymphoma */

, CASE
  when icd9_code between '1960 ' and '1991 ' then 1
  when icd9_code between '20970' and '20975' then 1
  when icd9_code = '20979' then 1
  when icd9_code = '78951'         then 1
		end as METS      /* Metastatic cancer */

, CASE
  when icd9_code between '1400 ' and '1729 ' then 1
  when icd9_code between '1740 ' and '1759 ' then 1
  when icd9_code between '179  ' and '1958 ' then 1
  when icd9_code between '20900' and '20924' then 1
  when icd9_code between '20925' and '2093 ' then 1
  when icd9_code between '20930' and '20936' then 1
  when icd9_code between '25801' and '25803' then 1
		end as TUMOR     /* Solid tumor without metastasis */

, CASE
  when icd9_code = '7010 ' then 1
  when icd9_code between '7100 ' and '7109 ' then 1
  when icd9_code between '7140 ' and '7149 ' then 1
  when icd9_code between '7200 ' and '7209 ' then 1
  when icd9_code = '725  ' then 1
		end as ARTH              /* Rheumatoid arthritis/collagen vascular diseases */

, CASE
  when icd9_code between '2860 ' and '2869 ' then 1
  when icd9_code = '2871 ' then 1
  when icd9_code between '2873 ' and '2875 ' then 1
  when icd9_code between '64930' and '64934' then 1
  when icd9_code = '28984'         then 1
		end as COAG      /* Coagulation deficiency */

, CASE
  when icd9_code = '2780 ' then 1
  when icd9_code = '27800' then 1
  when icd9_code = '27801' then 1
  when icd9_code = '27803' then 1
  when icd9_code between '64910' and '64914' then 1
  when icd9_code between 'V8530' and 'V8539' then 1
  when icd9_code = 'V854 ' then 1 -- hierarchy used for AHRQ v3.6 and earlier
  when icd9_code between 'V8541' and 'V8545' then 1
  when icd9_code = 'V8554' then 1
  when icd9_code = '79391'         then 1
		end as OBESE     /* Obesity      */

, CASE
  when icd9_code between '260  ' and '2639 ' then 1
  when icd9_code between '78321' and '78322' then 1
		end as WGHTLOSS  /* Weight loss */

, CASE
  when icd9_code between '2760 ' and '2769 ' then 1
		end as LYTES     /* Fluid and electrolyte disorders - note:
                                      this comorbidity should be dropped when
                                      used with the AHRQ Patient Safety Indicators*/
, CASE
  when icd9_code = '2800 ' then 1
  when icd9_code between '64820' and '64824' then 1
		end as BLDLOSS   /* Blood loss anemia */

, CASE
  when icd9_code between '2801 ' and '2819 ' then 1
  when icd9_code between '28521' and '28529' then 1
  when icd9_code = '2859 '         then 1
		end as ANEMDEF  /* Deficiency anemias */

, CASE
  when icd9_code between '2910 ' and '2913 ' then 1
  when icd9_code = '2915 ' then 1
  when icd9_code = '2918 ' then 1
  when icd9_code = '29181' then 1
  when icd9_code = '29182' then 1
  when icd9_code = '29189' then 1
  when icd9_code = '2919 ' then 1
  when icd9_code between '30300' and '30393' then 1
  when icd9_code between '30500' and '30503' then 1
		end as ALCOHOL   /* Alcohol abuse */

, CASE
  when icd9_code = '2920 ' then 1
  when icd9_code between '29282' and '29289' then 1
  when icd9_code = '2929 ' then 1
  when icd9_code between '30400' and '30493' then 1
  when icd9_code between '30520' and '30593' then 1
  when icd9_code between '64830' and '64834' then 1
		end as DRUG      /* Drug abuse */

, CASE
  when icd9_code between '29500' and '2989 ' then 1
  when icd9_code = '29910' then 1
  when icd9_code = '29911'         then 1
		end as PSYCH    /* Psychoses */

, CASE
  when icd9_code = '3004 ' then 1
  when icd9_code = '30112' then 1
  when icd9_code = '3090 ' then 1
  when icd9_code = '3091 ' then 1
  when icd9_code = '311  '         then 1
		end as DEPRESS  /* Depression */
from icd
)
-- collapse the icd9_code specific flags into hadm_id specific flags
-- this groups comorbidities together for a single patient admission
, eligrp as
(
  select hadm_id
  , max(chf) as chf
  , max(arythm) as arythm
  , max(valve) as valve
  , max(pulmcirc) as pulmcirc
  , max(perivasc) as perivasc
  , max(htn) as htn
  , max(htncx) as htncx
  , max(htnpreg) as htnpreg
  , max(htnwochf) as htnwochf
  , max(htnwchf) as htnwchf
  , max(hrenworf) as hrenworf
  , max(hrenwrf) as hrenwrf
  , max(hhrwohrf) as hhrwohrf
  , max(hhrwchf) as hhrwchf
  , max(hhrwrf) as hhrwrf
  , max(hhrwhrf) as hhrwhrf
  , max(ohtnpreg) as ohtnpreg
  , max(para) as para
  , max(neuro) as neuro
  , max(chrnlung) as chrnlung
  , max(dm) as dm
  , max(dmcx) as dmcx
  , max(hypothy) as hypothy
  , max(renlfail) as renlfail
  , max(liver) as liver
  , max(ulcer) as ulcer
  , max(aids) as aids
  , max(lymph) as lymph
  , max(mets) as mets
  , max(tumor) as tumor
  , max(arth) as arth
  , max(coag) as coag
  , max(obese) as obese
  , max(wghtloss) as wghtloss
  , max(lytes) as lytes
  , max(bldloss) as bldloss
  , max(anemdef) as anemdef
  , max(alcohol) as alcohol
  , max(drug) as drug
  , max(psych) as psych
  , max(depress) as depress
from eliflg
group by hadm_id
)
-- now merge these flags together to define elixhauser
-- most are straightforward.. but hypertension flags are a bit more complicated
select adm.subject_id, adm.hadm_id
, case
    when chf     = 1 then 1
    when htnwchf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwhrf = 1 then 1
  else 0 end as CONGESTIVE_HEART_FAILURE
, case
    when arythm = 1 then 1
  else 0 end as CARDIAC_ARRHYTHMIAS
, case when    valve = 1 then 1 else 0 end as VALVULAR_DISEASE
, case when pulmcirc = 1 then 1 else 0 end as PULMONARY_CIRCULATION
, case when perivasc = 1 then 1 else 0 end as PERIPHERAL_VASCULAR

-- we combine "htn" and "htncx" into "HYPERTENSION"
-- note "htn" (hypertension) is only 1 if "htncx" (complicated hypertension) is 0
-- this matters if you filter on DRG but for this query we can just merge them immediately
, case
    when htn = 1 then 1
    when htncx = 1 then 1
    when htnpreg = 1 then 1
    when htnwochf = 1 then 1
    when htnwchf = 1 then 1
    when hrenworf = 1 then 1
    when hrenwrf = 1 then 1
    when hhrwohrf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwrf = 1 then 1
    when hhrwhrf = 1 then 1
    when ohtnpreg = 1 then 1
  else 0 end as HYPERTENSION

, case when para      = 1 then 1 else 0 end as PARALYSIS
, case when neuro     = 1 then 1 else 0 end as OTHER_NEUROLOGICAL
, case when chrnlung  = 1 then 1 else 0 end as CHRONIC_PULMONARY
, case
    -- only the more severe comorbidity (complicated diabetes) is kept
    when dmcx = 1 then 0
    when dm = 1 then 1
  else 0 end as DIABETES_UNCOMPLICATED
, case when dmcx    = 1 then 1 else 0 end as DIABETES_COMPLICATED
, case when hypothy = 1 then 1 else 0 end as HYPOTHYROIDISM
, case
    when renlfail = 1 then 1
    when hrenwrf  = 1 then 1
    when hhrwrf   = 1 then 1
    when hhrwhrf  = 1 then 1
  else 0 end as RENAL_FAILURE

, case when liver = 1 then 1 else 0 end as LIVER_DISEASE
, case when ulcer = 1 then 1 else 0 end as PEPTIC_ULCER
, case when aids = 1 then 1 else 0 end as AIDS
, case when lymph = 1 then 1 else 0 end as LYMPHOMA
, case when mets = 1 then 1 else 0 end as METASTATIC_CANCER
, case
    -- only the more severe comorbidity (metastatic cancer) is kept
    when mets = 1 then 0
    when tumor = 1 then 1
  else 0 end as SOLID_TUMOR
, case when arth = 1 then 1 else 0 end as RHEUMATOID_ARTHRITIS
, case when coag = 1 then 1 else 0 end as COAGULOPATHY
, case when obese = 1 then 1 else 0 end as OBESITY
, case when wghtloss = 1 then 1 else 0 end as WEIGHT_LOSS
, case when lytes = 1 then 1 else 0 end as FLUID_ELECTROLYTE
, case when bldloss = 1 then 1 else 0 end as BLOOD_LOSS_ANEMIA
, case when anemdef = 1 then 1 else 0 end as DEFICIENCY_ANEMIAS
, case when alcohol = 1 then 1 else 0 end as ALCOHOL_ABUSE
, case when drug = 1 then 1 else 0 end as DRUG_ABUSE
, case when psych = 1 then 1 else 0 end as PSYCHOSES
, case when depress = 1 then 1 else 0 end as DEPRESSION

from admissions adm
left join eligrp eli
  on adm.hadm_id = eli.hadm_id
GO


/****** Object:  View [dbo].[elixhauser_ahrq_no_drg_all_icd]    Script Date: 4/14/2019 5:04:28 PM ******/
DROP VIEW [dbo].[elixhauser_ahrq_no_drg_all_icd]
GO

/****** Object:  View [dbo].[elixhauser_ahrq_no_drg_all_icd]    Script Date: 4/14/2019 5:04:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[elixhauser_ahrq_no_drg_all_icd] as
with
icd as
(
  select hadm_id, seq_num
    , cast(icd9_code as char(5)) as icd9_code
  from diagnoses_icd
)
,
eliflg as
(
select hadm_id, seq_num, icd9_code
-- note that these codes will seem incomplete at first
-- for example, CHF is missing a lot of codes referenced in the literature (402.11, 402.91, etc)
-- these codes are captured by hypertension flags instead
-- later there are some complicated rules which confirm/reject those codes as CHF
, CASE
  when icd9_code = '39891' then 1
  when icd9_code between '4280 ' and '4289 ' then 1
		end as CHF       /* Congestive heart failure */

-- cardiac arrhythmias is removed in up to date versions
, case
    when icd9_code = '42610' then 1
    when icd9_code = '42611' then 1
    when icd9_code = '42613' then 1
    when icd9_code between '4262 ' and '42653' then 1
    when icd9_code between '4266 ' and '42689' then 1
    when icd9_code = '4270 ' then 1
    when icd9_code = '4272 ' then 1
    when icd9_code = '42731' then 1
    when icd9_code = '42760' then 1
    when icd9_code = '4279 ' then 1
    when icd9_code = '7850 ' then 1
    when icd9_code between 'V450 ' and 'V4509' then 1
    when icd9_code between 'V533 ' and 'V5339' then 1
  end as ARYTHM /* Cardiac arrhythmias */

, CASE
  when icd9_code between '09320' and '09324' then 1
  when icd9_code between '3940 ' and '3971 ' then 1
  when icd9_code = '3979 ' then 1
  when icd9_code between '4240 ' and '42499' then 1
  when icd9_code between '7463 ' and '7466 ' then 1
  when icd9_code = 'V422 ' then 1
  when icd9_code = 'V433 ' then 1
		end as VALVE     /* Valvular disease */

, CASE
  when icd9_code between '41511' and '41519' then 1
  when icd9_code between '4160 ' and '4169 ' then 1
  when icd9_code = '4179 ' then 1
		end as PULMCIRC  /* Pulmonary circulation disorder */

, CASE
  when icd9_code between '4400 ' and '4409 ' then 1
  when icd9_code between '44100' and '4419 ' then 1
  when icd9_code between '4420 ' and '4429 ' then 1
  when icd9_code between '4431 ' and '4439 ' then 1
  when icd9_code between '44421' and '44422' then 1
  when icd9_code = '4471 ' then 1
  when icd9_code = '449  ' then 1
  when icd9_code = '5571 ' then 1
  when icd9_code = '5579 ' then 1
  when icd9_code = 'V434 ' then 1
		end as PERIVASC  /* Peripheral vascular disorder */

, CASE
  when icd9_code = '4011 ' then 1
  when icd9_code = '4019 ' then 1
  when icd9_code between '64200' and '64204' then 1
		end as HTN       /* Hypertension, uncomplicated */

, CASE
  when icd9_code = '4010 ' then 1
  when icd9_code = '4372 ' then 1
		end as HTNCX     /* Hypertension, complicated */


      /******************************************************************/
      /* The following are special, temporary formats used in the       */
      /* creation of the hypertension complicated comorbidity when      */
      /* overlapping with congestive heart failure or renal failure     */
      /* occurs. These temporary formats are referenced in the program  */
      /* called comoanaly2009.txt.                                      */
      /******************************************************************/
, CASE
  when icd9_code between '64220' and '64224' then 1
		end as HTNPREG   /* Pre-existing hypertension complicating pregnancy */

, CASE
  when icd9_code = '40200' then 1
  when icd9_code = '40210' then 1
  when icd9_code = '40290' then 1
  when icd9_code = '40509' then 1
  when icd9_code = '40519' then 1
  when icd9_code = '40599'         then 1
		end as HTNWOCHF  /* Hypertensive heart disease without heart failure */

, CASE
  when icd9_code = '40201' then 1
  when icd9_code = '40211' then 1
  when icd9_code = '40291'         then 1
		end as HTNWCHF   /* Hypertensive heart disease with heart failure */

, CASE
  when icd9_code = '40300' then 1
  when icd9_code = '40310' then 1
  when icd9_code = '40390' then 1
  when icd9_code = '40501' then 1
  when icd9_code = '40511' then 1
  when icd9_code = '40591' then 1
  when icd9_code between '64210' and '64214' then 1
		end as HRENWORF  /* Hypertensive renal disease without renal failure */

, CASE
  when icd9_code = '40301' then 1
  when icd9_code = '40311' then 1
  when icd9_code = '40391'         then 1
		end as HRENWRF   /* Hypertensive renal disease with renal failure */

, CASE
  when icd9_code = '40400' then 1
  when icd9_code = '40410' then 1
  when icd9_code = '40490'         then 1
		end as HHRWOHRF  /* Hypertensive heart and renal disease without heart or renal failure */

, CASE
  when icd9_code = '40401' then 1
  when icd9_code = '40411' then 1
  when icd9_code = '40491'         then 1
		end as HHRWCHF   /* Hypertensive heart and renal disease with heart failure */

, CASE
  when icd9_code = '40402' then 1
  when icd9_code = '40412' then 1
  when icd9_code = '40492'         then 1
		end as HHRWRF    /* Hypertensive heart and renal disease with renal failure */

, CASE
  when icd9_code = '40403' then 1
  when icd9_code = '40413' then 1
  when icd9_code = '40493'         then 1
		end as HHRWHRF   /* Hypertensive heart and renal disease with heart and renal failure */

, CASE
  when icd9_code between '64270' and '64274' then 1
  when icd9_code between '64290' and '64294' then 1
		end as OHTNPREG  /* Other hypertension in pregnancy */

      /******************** End Temporary Formats ***********************/

, CASE
  when icd9_code between '3420 ' and '3449 ' then 1
  when icd9_code between '43820' and '43853' then 1
  when icd9_code = '78072'         then 1
		end as PARA      /* Paralysis */

, CASE
  when icd9_code between '3300 ' and '3319 ' then 1
  when icd9_code = '3320 ' then 1
  when icd9_code = '3334 ' then 1
  when icd9_code = '3335 ' then 1
  when icd9_code = '3337 ' then 1
  when icd9_code in ('33371','33372','33379','33385','33394') then 1
  when icd9_code between '3340 ' and '3359 ' then 1
  when icd9_code = '3380 ' then 1
  when icd9_code = '340  ' then 1
  when icd9_code between '3411 ' and '3419 ' then 1
  when icd9_code between '34500' and '34511' then 1
  when icd9_code between '3452 ' and '3453 ' then 1
  when icd9_code between '34540' and '34591' then 1
  when icd9_code between '34700' and '34701' then 1
  when icd9_code between '34710' and '34711' then 1
  when icd9_code = '3483' then 1 -- discontinued icd-9
  when icd9_code between '64940' and '64944' then 1
  when icd9_code = '7687 ' then 1
  when icd9_code between '76870' and '76873' then 1
  when icd9_code = '7803 ' then 1
  when icd9_code = '78031' then 1
  when icd9_code = '78032' then 1
  when icd9_code = '78033' then 1
  when icd9_code = '78039' then 1
  when icd9_code = '78097' then 1
  when icd9_code = '7843 '         then 1
		end as NEURO     /* Other neurological */

, CASE
  when icd9_code between '490  ' and '4928 ' then 1
  when icd9_code between '49300' and '49392' then 1
  when icd9_code between '494  ' and '4941 ' then 1
  when icd9_code between '4950 ' and '505  ' then 1
  when icd9_code = '5064 '         then 1
		end as CHRNLUNG  /* Chronic pulmonary disease */

, CASE
  when icd9_code between '25000' and '25033' then 1
  when icd9_code between '64800' and '64804' then 1
  when icd9_code between '24900' and '24931' then 1
		end as DM        /* Diabetes w/o chronic complications*/

, CASE
  when icd9_code between '25040' and '25093' then 1
  when icd9_code = '7751 ' then 1
  when icd9_code between '24940' and '24991' then 1
		end as DMCX      /* Diabetes w/ chronic complications */

, CASE
  when icd9_code between '243  ' and '2442 ' then 1
  when icd9_code = '2448 ' then 1
  when icd9_code = '2449 '         then 1
		end as HYPOTHY   /* Hypothyroidism */

, CASE
  when icd9_code = '585  ' then 1 -- discontinued code
  when icd9_code = '5853 ' then 1
  when icd9_code = '5854 ' then 1
  when icd9_code = '5855 ' then 1
  when icd9_code = '5856 ' then 1
  when icd9_code = '5859 ' then 1
  when icd9_code = '586  ' then 1
  when icd9_code = 'V420 ' then 1
  when icd9_code = 'V451 ' then 1
  when icd9_code between 'V560 ' and 'V5632' then 1
  when icd9_code = 'V568 ' then 1
  when icd9_code between 'V4511' and 'V4512' then 1
		end as RENLFAIL  /* Renal failure */

, CASE
  when icd9_code = '07022' then 1
  when icd9_code = '07023' then 1
  when icd9_code = '07032' then 1
  when icd9_code = '07033' then 1
  when icd9_code = '07044' then 1
  when icd9_code = '07054' then 1
  when icd9_code = '4560 ' then 1
  when icd9_code = '4561 ' then 1
  when icd9_code = '45620' then 1
  when icd9_code = '45621' then 1
  when icd9_code = '5710 ' then 1
  when icd9_code = '5712 ' then 1
  when icd9_code = '5713 ' then 1
  when icd9_code between '57140' and '57149' then 1
  when icd9_code = '5715 ' then 1
  when icd9_code = '5716 ' then 1
  when icd9_code = '5718 ' then 1
  when icd9_code = '5719 ' then 1
  when icd9_code = '5723 ' then 1
  when icd9_code = '5728 ' then 1
  when icd9_code = '5735 ' then 1
  when icd9_code = 'V427 '         then 1
		end as LIVER     /* Liver disease */

, CASE
  when icd9_code = '53141' then 1
  when icd9_code = '53151' then 1
  when icd9_code = '53161' then 1
  when icd9_code = '53170' then 1
  when icd9_code = '53171' then 1
  when icd9_code = '53191' then 1
  when icd9_code = '53241' then 1
  when icd9_code = '53251' then 1
  when icd9_code = '53261' then 1
  when icd9_code = '53270' then 1
  when icd9_code = '53271' then 1
  when icd9_code = '53291' then 1
  when icd9_code = '53341' then 1
  when icd9_code = '53351' then 1
  when icd9_code = '53361' then 1
  when icd9_code = '53370' then 1
  when icd9_code = '53371' then 1
  when icd9_code = '53391' then 1
  when icd9_code = '53441' then 1
  when icd9_code = '53451' then 1
  when icd9_code = '53461' then 1
  when icd9_code = '53470' then 1
  when icd9_code = '53471' then 1
  when icd9_code = '53491'         then 1
		end as ULCER     /* Chronic Peptic ulcer disease (includes bleeding only if obstruction is also present) */

, CASE
  when icd9_code between '042  ' and '0449 ' then 1
		end as AIDS      /* HIV and AIDS */

, CASE
  when icd9_code between '20000' and '20238' then 1
  when icd9_code between '20250' and '20301' then 1
  when icd9_code = '2386 ' then 1
  when icd9_code = '2733 ' then 1
  when icd9_code between '20302' and '20382' then 1
		end as LYMPH     /* Lymphoma */

, CASE
  when icd9_code between '1960 ' and '1991 ' then 1
  when icd9_code between '20970' and '20975' then 1
  when icd9_code = '20979' then 1
  when icd9_code = '78951'         then 1
		end as METS      /* Metastatic cancer */

, CASE
  when icd9_code between '1400 ' and '1729 ' then 1
  when icd9_code between '1740 ' and '1759 ' then 1
  when icd9_code between '179  ' and '1958 ' then 1
  when icd9_code between '20900' and '20924' then 1
  when icd9_code between '20925' and '2093 ' then 1
  when icd9_code between '20930' and '20936' then 1
  when icd9_code between '25801' and '25803' then 1
		end as TUMOR     /* Solid tumor without metastasis */

, CASE
  when icd9_code = '7010 ' then 1
  when icd9_code between '7100 ' and '7109 ' then 1
  when icd9_code between '7140 ' and '7149 ' then 1
  when icd9_code between '7200 ' and '7209 ' then 1
  when icd9_code = '725  ' then 1
		end as ARTH              /* Rheumatoid arthritis/collagen vascular diseases */

, CASE
  when icd9_code between '2860 ' and '2869 ' then 1
  when icd9_code = '2871 ' then 1
  when icd9_code between '2873 ' and '2875 ' then 1
  when icd9_code between '64930' and '64934' then 1
  when icd9_code = '28984'         then 1
		end as COAG      /* Coagulation deficiency */

, CASE
  when icd9_code = '2780 ' then 1
  when icd9_code = '27800' then 1
  when icd9_code = '27801' then 1
  when icd9_code = '27803' then 1
  when icd9_code between '64910' and '64914' then 1
  when icd9_code between 'V8530' and 'V8539' then 1
  when icd9_code = 'V854 ' then 1 -- hierarchy used for AHRQ v3.6 and earlier
  when icd9_code between 'V8541' and 'V8545' then 1
  when icd9_code = 'V8554' then 1
  when icd9_code = '79391'         then 1
		end as OBESE     /* Obesity      */

, CASE
  when icd9_code between '260  ' and '2639 ' then 1
  when icd9_code between '78321' and '78322' then 1
		end as WGHTLOSS  /* Weight loss */

, CASE
  when icd9_code between '2760 ' and '2769 ' then 1
		end as LYTES     /* Fluid and electrolyte disorders - note:
                                      this comorbidity should be dropped when
                                      used with the AHRQ Patient Safety Indicators*/
, CASE
  when icd9_code = '2800 ' then 1
  when icd9_code between '64820' and '64824' then 1
		end as BLDLOSS   /* Blood loss anemia */

, CASE
  when icd9_code between '2801 ' and '2819 ' then 1
  when icd9_code between '28521' and '28529' then 1
  when icd9_code = '2859 '         then 1
		end as ANEMDEF  /* Deficiency anemias */

, CASE
  when icd9_code between '2910 ' and '2913 ' then 1
  when icd9_code = '2915 ' then 1
  when icd9_code = '2918 ' then 1
  when icd9_code = '29181' then 1
  when icd9_code = '29182' then 1
  when icd9_code = '29189' then 1
  when icd9_code = '2919 ' then 1
  when icd9_code between '30300' and '30393' then 1
  when icd9_code between '30500' and '30503' then 1
		end as ALCOHOL   /* Alcohol abuse */

, CASE
  when icd9_code = '2920 ' then 1
  when icd9_code between '29282' and '29289' then 1
  when icd9_code = '2929 ' then 1
  when icd9_code between '30400' and '30493' then 1
  when icd9_code between '30520' and '30593' then 1
  when icd9_code between '64830' and '64834' then 1
		end as DRUG      /* Drug abuse */

, CASE
  when icd9_code between '29500' and '2989 ' then 1
  when icd9_code = '29910' then 1
  when icd9_code = '29911'         then 1
		end as PSYCH    /* Psychoses */

, CASE
  when icd9_code = '3004 ' then 1
  when icd9_code = '30112' then 1
  when icd9_code = '3090 ' then 1
  when icd9_code = '3091 ' then 1
  when icd9_code = '311  '         then 1
		end as DEPRESS  /* Depression */
from icd
)
-- collapse the icd9_code specific flags into hadm_id specific flags
-- this groups comorbidities together for a single patient admission
, eligrp as
(
  select hadm_id
  , max(chf) as chf
  , max(arythm) as arythm
  , max(valve) as valve
  , max(pulmcirc) as pulmcirc
  , max(perivasc) as perivasc
  , max(htn) as htn
  , max(htncx) as htncx
  , max(htnpreg) as htnpreg
  , max(htnwochf) as htnwochf
  , max(htnwchf) as htnwchf
  , max(hrenworf) as hrenworf
  , max(hrenwrf) as hrenwrf
  , max(hhrwohrf) as hhrwohrf
  , max(hhrwchf) as hhrwchf
  , max(hhrwrf) as hhrwrf
  , max(hhrwhrf) as hhrwhrf
  , max(ohtnpreg) as ohtnpreg
  , max(para) as para
  , max(neuro) as neuro
  , max(chrnlung) as chrnlung
  , max(dm) as dm
  , max(dmcx) as dmcx
  , max(hypothy) as hypothy
  , max(renlfail) as renlfail
  , max(liver) as liver
  , max(ulcer) as ulcer
  , max(aids) as aids
  , max(lymph) as lymph
  , max(mets) as mets
  , max(tumor) as tumor
  , max(arth) as arth
  , max(coag) as coag
  , max(obese) as obese
  , max(wghtloss) as wghtloss
  , max(lytes) as lytes
  , max(bldloss) as bldloss
  , max(anemdef) as anemdef
  , max(alcohol) as alcohol
  , max(drug) as drug
  , max(psych) as psych
  , max(depress) as depress
from eliflg
group by hadm_id
)
-- now merge these flags together to define elixhauser
-- most are straightforward.. but hypertension flags are a bit more complicated
select adm.subject_id, adm.hadm_id
, case
    when chf     = 1 then 1
    when htnwchf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwhrf = 1 then 1
  else 0 end as CONGESTIVE_HEART_FAILURE
, case
    when arythm = 1 then 1
  else 0 end as CARDIAC_ARRHYTHMIAS
, case when    valve = 1 then 1 else 0 end as VALVULAR_DISEASE
, case when pulmcirc = 1 then 1 else 0 end as PULMONARY_CIRCULATION
, case when perivasc = 1 then 1 else 0 end as PERIPHERAL_VASCULAR

-- we combine "htn" and "htncx" into "HYPERTENSION"
-- note "htn" (hypertension) is only 1 if "htncx" (complicated hypertension) is 0
-- this matters if you filter on DRG but for this query we can just merge them immediately
, case
    when htn = 1 then 1
    when htncx = 1 then 1
    when htnpreg = 1 then 1
    when htnwochf = 1 then 1
    when htnwchf = 1 then 1
    when hrenworf = 1 then 1
    when hrenwrf = 1 then 1
    when hhrwohrf = 1 then 1
    when hhrwchf = 1 then 1
    when hhrwrf = 1 then 1
    when hhrwhrf = 1 then 1
    when ohtnpreg = 1 then 1
  else 0 end as HYPERTENSION

, case when para      = 1 then 1 else 0 end as PARALYSIS
, case when neuro     = 1 then 1 else 0 end as OTHER_NEUROLOGICAL
, case when chrnlung  = 1 then 1 else 0 end as CHRONIC_PULMONARY
, case
    -- only the more severe comorbidity (complicated diabetes) is kept
    when dmcx = 1 then 0
    when dm = 1 then 1
  else 0 end as DIABETES_UNCOMPLICATED
, case when dmcx    = 1 then 1 else 0 end as DIABETES_COMPLICATED
, case when hypothy = 1 then 1 else 0 end as HYPOTHYROIDISM
, case
    when renlfail = 1 then 1
    when hrenwrf  = 1 then 1
    when hhrwrf   = 1 then 1
    when hhrwhrf  = 1 then 1
  else 0 end as RENAL_FAILURE

, case when liver = 1 then 1 else 0 end as LIVER_DISEASE
, case when ulcer = 1 then 1 else 0 end as PEPTIC_ULCER
, case when aids = 1 then 1 else 0 end as AIDS
, case when lymph = 1 then 1 else 0 end as LYMPHOMA
, case when mets = 1 then 1 else 0 end as METASTATIC_CANCER
, case
    -- only the more severe comorbidity (metastatic cancer) is kept
    when mets = 1 then 0
    when tumor = 1 then 1
  else 0 end as SOLID_TUMOR
, case when arth = 1 then 1 else 0 end as RHEUMATOID_ARTHRITIS
, case when coag = 1 then 1 else 0 end as COAGULOPATHY
, case when obese = 1 then 1 else 0 end as OBESITY
, case when wghtloss = 1 then 1 else 0 end as WEIGHT_LOSS
, case when lytes = 1 then 1 else 0 end as FLUID_ELECTROLYTE
, case when bldloss = 1 then 1 else 0 end as BLOOD_LOSS_ANEMIA
, case when anemdef = 1 then 1 else 0 end as DEFICIENCY_ANEMIAS
, case when alcohol = 1 then 1 else 0 end as ALCOHOL_ABUSE
, case when drug = 1 then 1 else 0 end as DRUG_ABUSE
, case when psych = 1 then 1 else 0 end as PSYCHOSES
, case when depress = 1 then 1 else 0 end as DEPRESSION

from admissions adm
left join eligrp eli
  on adm.hadm_id = eli.hadm_id
GO


/****** Object:  View [dbo].[ELIXHAUSER_AHRQ_SCORE]    Script Date: 4/14/2019 5:04:50 PM ******/
DROP VIEW [dbo].[ELIXHAUSER_AHRQ_SCORE]
GO

/****** Object:  View [dbo].[ELIXHAUSER_AHRQ_SCORE]    Script Date: 4/14/2019 5:04:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ELIXHAUSER_AHRQ_SCORE] AS
select subject_id, hadm_id
,  -- Below is the van Walraven score
   0 * AIDS +
   0 * ALCOHOL_ABUSE +
  -2 * BLOOD_LOSS_ANEMIA +
   7 * CONGESTIVE_HEART_FAILURE +
   -- Cardiac arrhythmias are not included in van Walraven based on Quan 2007
   3 * CHRONIC_PULMONARY +
   3 * COAGULOPATHY +
  -2 * DEFICIENCY_ANEMIAS +
  -3 * DEPRESSION +
   0 * DIABETES_COMPLICATED +
   0 * DIABETES_UNCOMPLICATED +
  -7 * DRUG_ABUSE +
   5 * FLUID_ELECTROLYTE +
   0 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   11 * LIVER_DISEASE +
   9 * LYMPHOMA +
   12 * METASTATIC_CANCER +
   6 * OTHER_NEUROLOGICAL +
  -4 * OBESITY +
   7 * PARALYSIS +
   2 * PERIPHERAL_VASCULAR +
   0 * PEPTIC_ULCER +
   0 * PSYCHOSES +
   4 * PULMONARY_CIRCULATION +
   0 * RHEUMATOID_ARTHRITIS +
   5 * RENAL_FAILURE +
   4 * SOLID_TUMOR +
  -1 * VALVULAR_DISEASE +
   6 * WEIGHT_LOSS
as elixhauser_vanwalraven



,  -- Below is the 29 component SID score
   0 * AIDS +
  -2 * ALCOHOL_ABUSE +
  -2 * BLOOD_LOSS_ANEMIA +
   -- Cardiac arrhythmias are not included in SID-29
   9 * CONGESTIVE_HEART_FAILURE +
   3 * CHRONIC_PULMONARY +
   9 * COAGULOPATHY +
   0 * DEFICIENCY_ANEMIAS +
  -4 * DEPRESSION +
   0 * DIABETES_COMPLICATED +
  -1 * DIABETES_UNCOMPLICATED +
  -8 * DRUG_ABUSE +
   9 * FLUID_ELECTROLYTE +
  -1 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   5 * LIVER_DISEASE +
   6 * LYMPHOMA +
   13 * METASTATIC_CANCER +
   4 * OTHER_NEUROLOGICAL +
  -4 * OBESITY +
   3 * PARALYSIS +
   0 * PEPTIC_ULCER +
   4 * PERIPHERAL_VASCULAR +
  -4 * PSYCHOSES +
   5 * PULMONARY_CIRCULATION +
   6 * RENAL_FAILURE +
   0 * RHEUMATOID_ARTHRITIS +
   8 * SOLID_TUMOR +
   0 * VALVULAR_DISEASE +
   8 * WEIGHT_LOSS
as elixhauser_SID29


,  -- Below is the 30 component SID score
   0 * AIDS +
   0 * ALCOHOL_ABUSE +
  -3 * BLOOD_LOSS_ANEMIA +
   8 * CARDIAC_ARRHYTHMIAS +
   9 * CONGESTIVE_HEART_FAILURE +
   3 * CHRONIC_PULMONARY +
  12 * COAGULOPATHY +
   0 * DEFICIENCY_ANEMIAS +
  -5 * DEPRESSION +
   1 * DIABETES_COMPLICATED +
   0 * DIABETES_UNCOMPLICATED +
 -11 * DRUG_ABUSE +
  11 * FLUID_ELECTROLYTE +
  -2 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   7 * LIVER_DISEASE +
   8 * LYMPHOMA +
  17 * METASTATIC_CANCER +
   5 * OTHER_NEUROLOGICAL +
  -5 * OBESITY +
   4 * PARALYSIS +
   0 * PEPTIC_ULCER +
   4 * PERIPHERAL_VASCULAR +
  -6 * PSYCHOSES +
   5 * PULMONARY_CIRCULATION +
   7 * RENAL_FAILURE +
   0 * RHEUMATOID_ARTHRITIS +
  10 * SOLID_TUMOR +
   0 * VALVULAR_DISEASE +
  10 * WEIGHT_LOSS
as elixhauser_SID30

from ELIXHAUSER_AHRQ;

GO


/****** Object:  View [dbo].[ELIXHAUSER_QUAN]    Script Date: 4/14/2019 5:05:24 PM ******/
DROP VIEW [dbo].[ELIXHAUSER_QUAN]
GO

/****** Object:  View [dbo].[ELIXHAUSER_QUAN]    Script Date: 4/14/2019 5:05:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ELIXHAUSER_QUAN] AS
with icd as
(
  select hadm_id, seq_num, icd9_code
  from diagnoses_icd
  where seq_num != 1 -- we do not include the primary icd-9 code
)
, eliflg as
(
select hadm_id, seq_num, icd9_code
, CASE
  when icd9_code in ('39891','40201','40211','40291','40401','40403','40411','40413','40491','40493') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('4254','4255','4257','4258','4259') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('428') then 1
  else 0 end as CHF       /* Congestive heart failure */

, CASE
  when icd9_code in ('42613','42610','42612','99601','99604') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('4260','4267','4269','4270','4271','4272','4273','4274','4276','4278','4279','7850','V450','V533') then 1
  else 0 end as ARRHY

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('0932','7463','7464','7465','7466','V422','V433') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('394','395','396','397','424') then 1
  else 0 end as VALVE     /* Valvular disease */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('4150','4151','4170','4178','4179') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('416') then 1
  else 0 end as PULMCIRC  /* Pulmonary circulation disorder */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('0930','4373','4431','4432','4438','4439','4471','5571','5579','V434') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('440','441') then 1
  else 0 end as PERIVASC  /* Peripheral vascular disorder */

, CASE
  when SUBSTRING(icd9_code, 1, 3) in ('401') then 1
  else 0 end as HTN       /* Hypertension, uncomplicated */

, CASE
  when SUBSTRING(icd9_code, 1, 3) in ('402','403','404','405') then 1
  else 0 end as HTNCX     /* Hypertension, complicated */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('3341','3440','3441','3442','3443','3444','3445','3446','3449') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('342','343') then 1
  else 0 end as PARA      /* Paralysis */

, CASE
  when icd9_code in ('33392') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('3319','3320','3321','3334','3335','3362','3481','3483','7803','7843') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('334','335','340','341','345') then 1
  else 0 end as NEURO     /* Other neurological */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('4168','4169','5064','5081','5088') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('490','491','492','493','494','495','496','500','501','502','503','504','505') then 1
  else 0 end as CHRNLUNG  /* Chronic pulmonary disease */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2500','2501','2502','2503') then 1
  else 0 end as DM        /* Diabetes w/o chronic complications*/

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2504','2505','2506','2507','2508','2509') then 1
  else 0 end as DMCX      /* Diabetes w/ chronic complications */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2409','2461','2468') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('243','244') then 1
  else 0 end as HYPOTHY   /* Hypothyroidism */

, CASE
  when icd9_code in ('40301','40311','40391','40402','40403','40412','40413','40492','40493') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('5880','V420','V451') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('585','586','V56') then 1
  else 0 end as RENLFAIL  /* Renal failure */

, CASE
  when icd9_code in ('07022','07023','07032','07033','07044','07054') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('0706','0709','4560','4561','4562','5722','5723','5724','5728','5733','5734','5738','5739','V427') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('570','571') then 1
  else 0 end as LIVER     /* Liver disease */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('5317','5319','5327','5329','5337','5339','5347','5349') then 1
  else 0 end as ULCER     /* Chronic Peptic ulcer disease (includes bleeding only if obstruction is also present) */

, CASE
  when SUBSTRING(icd9_code, 1, 3) in ('042','043','044') then 1
  else 0 end as AIDS      /* HIV and AIDS */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2030','2386') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('200','201','202') then 1
  else 0 end as LYMPH     /* Lymphoma */

, CASE
  when SUBSTRING(icd9_code, 1, 3) in ('196','197','198','199') then 1
  else 0 end as METS      /* Metastatic cancer */

, CASE
  when SUBSTRING(icd9_code, 1, 3) in
  (
     '140','141','142','143','144','145','146','147','148','149','150','151','152'
    ,'153','154','155','156','157','158','159','160','161','162','163','164','165'
    ,'166','167','168','169','170','171','172','174','175','176','177','178','179'
    ,'180','181','182','183','184','185','186','187','188','189','190','191','192'
    ,'193','194','195'
  ) then 1
  else 0 end as TUMOR     /* Solid tumor without metastasis */

, CASE
  when icd9_code in ('72889','72930') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('7010','7100','7101','7102','7103','7104','7108','7109','7112','7193','7285') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('446','714','720','725') then 1
  else 0 end as ARTH              /* Rheumatoid arthritis/collagen vascular diseases */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2871','2873','2874','2875') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('286') then 1
  else 0 end as COAG      /* Coagulation deficiency */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2780') then 1
  else 0 end as OBESE     /* Obesity      */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('7832','7994') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('260','261','262','263') then 1
  else 0 end as WGHTLOSS  /* Weight loss */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2536') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('276') then 1
  else 0 end as LYTES     /* Fluid and electrolyte disorders */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2800') then 1
  else 0 end as BLDLOSS   /* Blood loss anemia */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2801','2808','2809') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('281') then 1
  else 0 end as ANEMDEF  /* Deficiency anemias */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2652','2911','2912','2913','2915','2918','2919','3030','3039','3050','3575','4255','5353','5710','5711','5712','5713','V113') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('980') then 1
  else 0 end as ALCOHOL /* Alcohol abuse */

, CASE
  when icd9_code in ('V6542') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('3052','3053','3054','3055','3056','3057','3058','3059') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('292','304') then 1
  else 0 end as DRUG /* Drug abuse */

, CASE
  when icd9_code in ('29604','29614','29644','29654') then 1
  when SUBSTRING(icd9_code, 1, 4) in ('2938') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('295','297','298') then 1
  else 0 end as PSYCH /* Psychoses */

, CASE
  when SUBSTRING(icd9_code, 1, 4) in ('2962','2963','2965','3004') then 1
  when SUBSTRING(icd9_code, 1, 3) in ('309','311') then 1
  else 0 end as DEPRESS  /* Depression */
from icd
)
-- collapse the icd9_code specific flags into hadm_id specific flags
-- this groups comorbidities together for a single patient admission
, eligrp as
(
  select hadm_id
  , max(chf) as chf
  , max(arrhy) as arrhy
  , max(valve) as valve
  , max(pulmcirc) as pulmcirc
  , max(perivasc) as perivasc
  , max(htn) as htn
  , max(htncx) as htncx
  , max(para) as para
  , max(neuro) as neuro
  , max(chrnlung) as chrnlung
  , max(dm) as dm
  , max(dmcx) as dmcx
  , max(hypothy) as hypothy
  , max(renlfail) as renlfail
  , max(liver) as liver
  , max(ulcer) as ulcer
  , max(aids) as aids
  , max(lymph) as lymph
  , max(mets) as mets
  , max(tumor) as tumor
  , max(arth) as arth
  , max(coag) as coag
  , max(obese) as obese
  , max(wghtloss) as wghtloss
  , max(lytes) as lytes
  , max(bldloss) as bldloss
  , max(anemdef) as anemdef
  , max(alcohol) as alcohol
  , max(drug) as drug
  , max(psych) as psych
  , max(depress) as depress
from eliflg
group by hadm_id
)
-- now merge these flags together to define elixhauser
-- most are straightforward.. but hypertension flags are a bit more complicated


select adm.hadm_id
, chf as CONGESTIVE_HEART_FAILURE
, arrhy as CARDIAC_ARRHYTHMIAS
, valve as VALVULAR_DISEASE
, pulmcirc as PULMONARY_CIRCULATION
, perivasc as PERIPHERAL_VASCULAR
-- we combine "htn" and "htncx" into "HYPERTENSION"
, case
    when htn = 1 then 1
    when htncx = 1 then 1
  else 0 end as HYPERTENSION
, para as PARALYSIS
, neuro as OTHER_NEUROLOGICAL
, chrnlung as CHRONIC_PULMONARY
-- only the more severe comorbidity (complicated diabetes) is kept
, case
    when dmcx = 1 then 0
    when dm = 1 then 1
  else 0 end as DIABETES_UNCOMPLICATED
, dmcx as DIABETES_COMPLICATED
, hypothy as HYPOTHYROIDISM
, renlfail as RENAL_FAILURE
, liver as LIVER_DISEASE
, ulcer as PEPTIC_ULCER
, aids as AIDS
, lymph as LYMPHOMA
, mets as METASTATIC_CANCER
-- only the more severe comorbidity (metastatic cancer) is kept
, case
    when mets = 1 then 0
    when tumor = 1 then 1
  else 0 end as SOLID_TUMOR
, arth as RHEUMATOID_ARTHRITIS
, coag as COAGULOPATHY
, obese as OBESITY
, wghtloss as WEIGHT_LOSS
, lytes as FLUID_ELECTROLYTE
, bldloss as BLOOD_LOSS_ANEMIA
, anemdef as DEFICIENCY_ANEMIAS
, alcohol as ALCOHOL_ABUSE
, drug as DRUG_ABUSE
, psych as PSYCHOSES
, depress as DEPRESSION

from admissions adm
left join eligrp eli
  on adm.hadm_id = eli.hadm_id
--order by adm.hadm_id;

GO


/****** Object:  View [dbo].[ELIXHAUSER_QUAN_SCORE]    Script Date: 4/14/2019 5:06:21 PM ******/
DROP VIEW [dbo].[ELIXHAUSER_QUAN_SCORE]
GO

/****** Object:  View [dbo].[ELIXHAUSER_QUAN_SCORE]    Script Date: 4/14/2019 5:06:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ELIXHAUSER_QUAN_SCORE] AS
select hadm_id
,  -- Below is the van Walraven score
   0 * AIDS +
   0 * ALCOHOL_ABUSE +
  -2 * BLOOD_LOSS_ANEMIA +
   7 * CONGESTIVE_HEART_FAILURE +
   -- Cardiac arrhythmias are not included in van Walraven based on Quan 2007
   3 * CHRONIC_PULMONARY +
   3 * COAGULOPATHY +
  -2 * DEFICIENCY_ANEMIAS +
  -3 * DEPRESSION +
   0 * DIABETES_COMPLICATED +
   0 * DIABETES_UNCOMPLICATED +
  -7 * DRUG_ABUSE +
   5 * FLUID_ELECTROLYTE +
   0 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   11 * LIVER_DISEASE +
   9 * LYMPHOMA +
   12 * METASTATIC_CANCER +
   6 * OTHER_NEUROLOGICAL +
  -4 * OBESITY +
   7 * PARALYSIS +
   2 * PERIPHERAL_VASCULAR +
   0 * PEPTIC_ULCER +
   0 * PSYCHOSES +
   4 * PULMONARY_CIRCULATION +
   0 * RHEUMATOID_ARTHRITIS +
   5 * RENAL_FAILURE +
   4 * SOLID_TUMOR +
  -1 * VALVULAR_DISEASE +
   6 * WEIGHT_LOSS
as elixhauser_vanwalraven



,  -- Below is the 29 component SID score
   0 * AIDS +
  -2 * ALCOHOL_ABUSE +
  -2 * BLOOD_LOSS_ANEMIA +
   -- Cardiac arrhythmias are not included in SID-29
   9 * CONGESTIVE_HEART_FAILURE +
   3 * CHRONIC_PULMONARY +
   9 * COAGULOPATHY +
   0 * DEFICIENCY_ANEMIAS +
  -4 * DEPRESSION +
   0 * DIABETES_COMPLICATED +
  -1 * DIABETES_UNCOMPLICATED +
  -8 * DRUG_ABUSE +
   9 * FLUID_ELECTROLYTE +
  -1 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   5 * LIVER_DISEASE +
   6 * LYMPHOMA +
   13 * METASTATIC_CANCER +
   4 * OTHER_NEUROLOGICAL +
  -4 * OBESITY +
   3 * PARALYSIS +
   0 * PEPTIC_ULCER +
   4 * PERIPHERAL_VASCULAR +
  -4 * PSYCHOSES +
   5 * PULMONARY_CIRCULATION +
   6 * RENAL_FAILURE +
   0 * RHEUMATOID_ARTHRITIS +
   8 * SOLID_TUMOR +
   0 * VALVULAR_DISEASE +
   8 * WEIGHT_LOSS
as elixhauser_SID29


,  -- Below is the 30 component SID score
   0 * AIDS +
   0 * ALCOHOL_ABUSE +
  -3 * BLOOD_LOSS_ANEMIA +
   8 * CARDIAC_ARRHYTHMIAS +
   9 * CONGESTIVE_HEART_FAILURE +
   3 * CHRONIC_PULMONARY +
  12 * COAGULOPATHY +
   0 * DEFICIENCY_ANEMIAS +
  -5 * DEPRESSION +
   1 * DIABETES_COMPLICATED +
   0 * DIABETES_UNCOMPLICATED +
 -11 * DRUG_ABUSE +
  11 * FLUID_ELECTROLYTE +
  -2 * HYPERTENSION +
   0 * HYPOTHYROIDISM +
   7 * LIVER_DISEASE +
   8 * LYMPHOMA +
  17 * METASTATIC_CANCER +
   5 * OTHER_NEUROLOGICAL +
  -5 * OBESITY +
   4 * PARALYSIS +
   0 * PEPTIC_ULCER +
   4 * PERIPHERAL_VASCULAR +
  -6 * PSYCHOSES +
   5 * PULMONARY_CIRCULATION +
   7 * RENAL_FAILURE +
   0 * RHEUMATOID_ARTHRITIS +
  10 * SOLID_TUMOR +
   0 * VALVULAR_DISEASE +
  10 * WEIGHT_LOSS
as elixhauser_SID30

from ELIXHAUSER_QUAN;

GO


/****** Object:  View [dbo].[gcsfirstday]    Script Date: 4/14/2019 5:07:13 PM ******/
DROP VIEW [dbo].[gcsfirstday]
GO

/****** Object:  View [dbo].[gcsfirstday]    Script Date: 4/14/2019 5:07:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create view [dbo].[gcsfirstday] as
with base as
(
  SELECT pvt.ICUSTAY_ID
  , pvt.charttime

  -- Easier names - note we coalesced Metavision and CareVue IDs below
  , max(case when pvt.itemid = 223901 then pvt.valuenum else null end) as GCSMotor
  , max(case when pvt.itemid = 223900 then pvt.valuenum else null end) as GCSVerbal
  , max(case when pvt.itemid = 220739 then pvt.valuenum else null end) as GCSEyes

  -- If verbal was set to 0 in the below select, then this is an intubated patient
  , case
      when max(case when pvt.itemid = 223900 then pvt.valuenum else null end) = 0
    then 1
    else 0
    end as EndoTrachFlag

  , ROW_NUMBER ()
          OVER (PARTITION BY pvt.ICUSTAY_ID ORDER BY pvt.charttime ASC) as rn

  FROM  (
  select l.ICUSTAY_ID
  -- merge the ITEMIDs so that the pivot applies to both metavision/carevue data
  , case
      when l.ITEMID in (223900) then 223900
      when l.ITEMID in (223901) then 223901
      when l.ITEMID in (220739) then 220739
      else l.ITEMID end
    as ITEMID

  -- convert the data into a number, reserving a value of 0 for ET/Trach
  , case
      -- endotrach/vent is assigned a value of 0, later parsed specially
      when l.ITEMID = '723' and l.VALUE = '1.0 ET/Trach' then 0 -- carevue
      when l.ITEMID = '223900' and l.VALUE = 'No Response-ETT' then 0 -- metavision

      else VALUENUM
      end
    as VALUENUM
  , l.CHARTTIME
  from CHARTEVENTS l

  -- get intime for charttime subselection
  inner join icustays b
    on l.icustay_id = b.icustay_id

  -- Isolate the desired GCS variables
  where l.ITEMID in
  (
    -- 198 -- GCS
    -- GCS components, CareVue
    
    -- GCS components, Metavision
     223900, 223901, 220739
  )
--  -- Only get data for the first 24 hours
--  and l.charttime between b.intime and dateadd(day,1,b.intime)
--  -- exclude rows marked as error
--  and l.error <> 1
  ) pvt
  group by pvt.ICUSTAY_ID, pvt.charttime
)

  , gcs as (
  select b.*
  , b2.GCSVerbal as GCSVerbalPrev
  , b2.GCSMotor as GCSMotorPrev
  , b2.GCSEyes as GCSEyesPrev
  -- Calculate GCS, factoring in special case when they are intubated and prev vals
  -- note that the coalesce are used to implement the following if:
  --  if current value exists, use it
  --  if previous value exists, use it
  --  otherwise, default to normal
  , case
      -- replace GCS during sedation with 15
      when b.GCSVerbal = 0
        then 15
      when b.GCSVerbal is null and b2.GCSVerbal = 0
        then 15
      -- if previously they were intub, but they aren't now, do not use previous GCS values
      when b2.GCSVerbal = 0
        then
            coalesce(b.GCSMotor,6)
          + coalesce(b.GCSVerbal,5)
          + coalesce(b.GCSEyes,4)
      -- otherwise, add up score normally, imputing previous value if none available at current time
      else
            coalesce(b.GCSMotor,coalesce(b2.GCSMotor,6))
          + coalesce(b.GCSVerbal,coalesce(b2.GCSVerbal,5))
          + coalesce(b.GCSEyes,coalesce(b2.GCSEyes,4))
      end as GCS

  from base b
  -- join to itself within 6 hours to get previous value
  left join base b2
    on b.ICUSTAY_ID = b2.ICUSTAY_ID and b.rn = b2.rn+1 and (b2.charttime < DATEADD(HOUR,6,b.charttime))
)
, gcs_final as (
  select gcs.*
  -- This sorts the data by GCS, so rn=1 is the the lowest GCS values to keep
  , ROW_NUMBER ()
          OVER (PARTITION BY gcs.ICUSTAY_ID
                ORDER BY gcs.GCS
               ) as IsMinGCS
  from gcs
)
select ie.SUBJECT_ID, ie.HADM_ID, ie.ICUSTAY_ID
-- The minimum GCS is determined by the above row partition, we only join if IsMinGCS=1
, GCS as MinGCS
, coalesce(GCSMotor,GCSMotorPrev) as GCSMotor
, coalesce(GCSVerbal,GCSVerbalPrev) as GCSVerbal
, coalesce(GCSEyes,GCSEyesPrev) as GCSEyes
, EndoTrachFlag as EndoTrachFlag

-- subselect down to the cohort of eligible patients
from icustays ie
left join gcs_final gs
  on ie.ICUSTAY_ID = gs.ICUSTAY_ID and gs.IsMinGCS = 1;

GO


/****** Object:  View [dbo].[heightweight]    Script Date: 4/14/2019 5:07:21 PM ******/
DROP VIEW [dbo].[heightweight]
GO

/****** Object:  View [dbo].[heightweight]    Script Date: 4/14/2019 5:07:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[heightweight]
AS
WITH FirstVRawData AS
  (SELECT c.charttime,
    c.itemid,c.subject_id,c.icustay_id,
    CASE
      WHEN c.itemid IN (762, 763, 3723, 3580, 3581, 3582, 226512)
        THEN 'WEIGHT'
      WHEN c.itemid IN (920, 1394, 4187, 3486, 3485, 4188, 226707)
        THEN 'HEIGHT'
    END AS parameter,
    -- Ensure that all weights are in kg and heights are in centimeters
    CASE
      WHEN c.itemid   IN (3581, 226531)
        THEN c.valuenum * 0.45359237
      WHEN c.itemid   IN (3582)
        THEN c.valuenum * 0.0283495231
      WHEN c.itemid   IN (920, 1394, 4187, 3486, 226707)
        THEN c.valuenum * 2.54
      ELSE c.valuenum
    END AS valuenum
  FROM chartevents c
  WHERE c.valuenum   IS NOT NULL
  -- exclude rows marked as error
  AND c.error <> 1
  AND ( ( c.itemid  IN (762, 763, 3723, 3580, -- Weight Kg
    3581,                                     -- Weight lb
    3582,                                     -- Weight oz
    920, 1394, 4187, 3486,                    -- Height inches
    3485, 4188                                -- Height cm
    -- Metavision
    , 226707 -- Height, cm
    , 226512 -- Admission Weight (Kg)

    -- note we intentionally ignore the below ITEMIDs in metavision
    -- these are duplicate data in a different unit
    -- , 226531 -- Admission Weight (lbs.)
    -- , 226707 -- Height (inches)
    )
  AND c.valuenum <> 0 )
    ) )
  --)

  --select * from FirstVRawData
, SingleParameters AS (
  SELECT DISTINCT subject_id,
         icustay_id,
         parameter,
         first_value(valuenum) over
            (partition BY subject_id, icustay_id, parameter
             order by charttime ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
             AS first_valuenum,
         MIN(valuenum) over
            (partition BY subject_id, icustay_id, parameter
            order by charttime ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
            AS min_valuenum,
         MAX(valuenum) over
            (partition BY subject_id, icustay_id, parameter
            order by charttime ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
            AS max_valuenum
    FROM FirstVRawData

--   ORDER BY subject_id,
--            icustay_id,
--            parameter
  )
--select * from SingleParameters
, PivotParameters AS (SELECT subject_id, icustay_id,
    MAX(case when parameter = 'HEIGHT' then first_valuenum else NULL end) AS height_first,
    MAX(case when parameter = 'HEIGHT' then min_valuenum else NULL end)   AS height_min,
    MAX(case when parameter = 'HEIGHT' then max_valuenum else NULL end)   AS height_max,
    MAX(case when parameter = 'WEIGHT' then first_valuenum else NULL end) AS weight_first,
    MAX(case when parameter = 'WEIGHT' then min_valuenum else NULL end)   AS weight_min,
    MAX(case when parameter = 'WEIGHT' then max_valuenum else NULL end)   AS weight_max
  FROM SingleParameters
  GROUP BY subject_id,
    icustay_id
  )
--select * from PivotParameters
SELECT f.icustay_id,
  f.subject_id,
  ROUND( cast(f.height_first as numeric), 2) AS height_first,
  ROUND(cast(f.height_min as numeric),2) AS height_min,
  ROUND(cast(f.height_max as numeric),2) AS height_max,
  ROUND(cast(f.weight_first as numeric), 2) AS weight_first,
  ROUND(cast(f.weight_min as numeric), 2)   AS weight_min,
  ROUND(cast(f.weight_max as numeric), 2)   AS weight_max

FROM PivotParameters f
GO


/****** Object:  View [dbo].[ICD_DIAGNOSES_ROLLUP]    Script Date: 4/14/2019 5:07:25 PM ******/
DROP VIEW [dbo].[ICD_DIAGNOSES_ROLLUP]
GO

/****** Object:  View [dbo].[ICD_DIAGNOSES_ROLLUP]    Script Date: 4/14/2019 5:07:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[ICD_DIAGNOSES_ROLLUP]
as
-- This view rolls up the ICD-9 codes to the 3-digit category level



with CategoryTitle as (
SELECT 
[ICD9_CODE]
,[SHORT_TITLE]
,[LONG_TITLE]
, rank() over (partition by left([ICD9_CODE],3) order by [ICD9_CODE] asc) as MyRank
FROM [MIMIC3].[dbo].[D_ICD_DIAGNOSES]
)


SELECT 
a.[ICD9_CODE] as Detailed_ICD9_Code
,a.[SHORT_TITLE]  as Detailed_ICD9_Short_Title
,a.[LONG_TITLE] as Detailed_ICD9_Long_Title
,b.[ICD9_CODE] as RolledUp_ICD9_Code
,b.[SHORT_TITLE]  as RolledUp_ICD9_Short_Title
,b.[LONG_TITLE] as RolledUp_ICD9_Long_Title


FROM 
[MIMIC3].[dbo].[D_ICD_DIAGNOSES] a
inner join
(Select * from CategoryTitle where MyRank = 1) b
on left(a.[ICD9_CODE],3) = left(b.[ICD9_CODE],3)


GO


/****** Object:  View [dbo].[ICD9_to_HCC]    Script Date: 4/14/2019 5:08:22 PM ******/
DROP VIEW [dbo].[ICD9_to_HCC]
GO

/****** Object:  View [dbo].[ICD9_to_HCC]    Script Date: 4/14/2019 5:08:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/

CREATE   VIEW [dbo].[ICD9_to_HCC]
as

SELECT 
a.[ROW_ID]
,a.[ICD9_CODE]
,a.[SHORT_TITLE]
,a.[LONG_TITLE]
,b.[HCC_Code]
,c.[HCC_Description]
FROM 
[MIMIC3].[dbo].[D_ICD_DIAGNOSES] a
left outer join
[dbo].[ref_ICD9_to_HCC_Mapping] b
on a.ICD9_Code = b.[ICD9_Code]
left outer join
[dbo].[ref_HCC_Desciptions] c
on 
b.[HCC_Code]=c.[HCC_Code]
GO


/****** Object:  View [dbo].[icustay_detail]    Script Date: 4/14/2019 5:08:35 PM ******/
DROP VIEW [dbo].[icustay_detail]
GO

/****** Object:  View [dbo].[icustay_detail]    Script Date: 4/14/2019 5:08:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[icustay_detail] as

SELECT ie.subject_id, ie.hadm_id, ie.icustay_id

-- patient level factors
, pat.gender, pat.dod

-- hospital level factors
, adm.admittime, adm.dischtime
, ROUND( (CAST(datediff(second,adm.admittime,adm.dischtime )/(60*60*24) AS numeric)), 4) AS los_hospital
, ROUND( (CAST(datediff(second,adm.admittime,pat.dob)/(60*60*24*365.242) AS numeric)), 4) AS admission_age
, adm.ethnicity, adm.admission_type
, adm.hospital_expire_flag
, DENSE_RANK() OVER (PARTITION BY adm.subject_id ORDER BY adm.admittime) AS hospstay_seq
, CASE
    WHEN DENSE_RANK() OVER (PARTITION BY adm.subject_id ORDER BY adm.admittime) = 1 THEN 1
    ELSE 0 END AS first_hosp_stay

-- icu level factors
, ie.intime, ie.outtime
, ROUND( (CAST(datediff(second,ie.intime,ie.outtime)/(60*60*24) AS numeric)), 4) AS los_icu
, DENSE_RANK() OVER (PARTITION BY ie.hadm_id ORDER BY ie.intime) AS icustay_seq

-- first ICU stay *for the current hospitalization*
, CASE
    WHEN DENSE_RANK() OVER (PARTITION BY ie.hadm_id ORDER BY ie.intime) = 1 THEN 1
    ELSE 0 END AS first_icu_stay

FROM icustays ie
INNER JOIN admissions adm
    ON ie.hadm_id = adm.hadm_id
INNER JOIN patients pat
    ON ie.subject_id = pat.subject_id
WHERE adm.has_chartevents_data = 1
GO


/****** Object:  View [dbo].[icustay_times]    Script Date: 4/14/2019 5:09:13 PM ******/
DROP VIEW [dbo].[icustay_times]
GO

/****** Object:  View [dbo].[icustay_times]    Script Date: 4/14/2019 5:09:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[icustay_times] as
-- create a table which has fuzzy boundaries on hospital admission
-- involves first creating a lag/lead version of disch/admit time
with h as
(
  select
    subject_id, hadm_id, admittime, dischtime
    , lag (dischtime) over (partition by subject_id order by admittime) as dischtime_lag
    , lead (admittime) over (partition by subject_id order by admittime) as admittime_lead
  from admissions
)
, adm as
(
  select
    h.subject_id, h.hadm_id
    -- this rule is:
    --  if there are two hospitalizations within 24 hours, set the start/stop
    --  time as half way between the two admissions
    , case
        when h.dischtime_lag is not null
        and h.dischtime_lag > (dateadd(hour,-24,h.admittime))
          then h.admittime - ((datediff(hour,h.dischtime_lag,h.admittime))/2)
      else dateadd(hour,-12,h.admittime) 
      end as data_start
    , case
        when h.admittime_lead is not null
        and h.admittime_lead < dateadd(hour,24,h.dischtime)
          then h.dischtime + ((datediff(hour,h.dischtime,h.admittime_lead ))/2)
      else dateadd(hour,12,h.dischtime)
      end as data_end
    from h
)
-- get first/last heart rate measurement during hospitalization for each ICUSTAY_ID
, t1 as
(
select ce.icustay_id
, min(charttime) as intime_hr
, max(charttime) as outtime_hr
from chartevents ce
-- very loose join to admissions to ensure charttime is near patient admission
inner join adm
  on ce.hadm_id = adm.hadm_id
  and ce.charttime >= adm.data_start
  and ce.charttime <  adm.data_end
-- only look at heart rate
where ce.itemid in (211,220045)
group by ce.icustay_id
)
-- add in subject_id/hadm_id
select
  ie.subject_id, ie.hadm_id, ie.icustay_id
  , t1.intime_hr
  , t1.outtime_hr
from icustays ie
left join t1
  on ie.icustay_id = t1.icustay_id
GO


/****** Object:  View [dbo].[labsfirstday]    Script Date: 4/14/2019 5:09:28 PM ******/
DROP VIEW [dbo].[labsfirstday]
GO

/****** Object:  View [dbo].[labsfirstday]    Script Date: 4/14/2019 5:09:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[labsfirstday] AS
SELECT
  pvt.subject_id, pvt.hadm_id, pvt.icustay_id

  , min(CASE WHEN label = 'ANION GAP' THEN valuenum ELSE null END) as ANIONGAP_min
  , max(CASE WHEN label = 'ANION GAP' THEN valuenum ELSE null END) as ANIONGAP_max
  , min(CASE WHEN label = 'ALBUMIN' THEN valuenum ELSE null END) as ALBUMIN_min
  , max(CASE WHEN label = 'ALBUMIN' THEN valuenum ELSE null END) as ALBUMIN_max
  , min(CASE WHEN label = 'BANDS' THEN valuenum ELSE null END) as BANDS_min
  , max(CASE WHEN label = 'BANDS' THEN valuenum ELSE null END) as BANDS_max
  , min(CASE WHEN label = 'BICARBONATE' THEN valuenum ELSE null END) as BICARBONATE_min
  , max(CASE WHEN label = 'BICARBONATE' THEN valuenum ELSE null END) as BICARBONATE_max
  , min(CASE WHEN label = 'BILIRUBIN' THEN valuenum ELSE null END) as BILIRUBIN_min
  , max(CASE WHEN label = 'BILIRUBIN' THEN valuenum ELSE null END) as BILIRUBIN_max
  , min(CASE WHEN label = 'CREATININE' THEN valuenum ELSE null END) as CREATININE_min
  , max(CASE WHEN label = 'CREATININE' THEN valuenum ELSE null END) as CREATININE_max
  , min(CASE WHEN label = 'CHLORIDE' THEN valuenum ELSE null END) as CHLORIDE_min
  , max(CASE WHEN label = 'CHLORIDE' THEN valuenum ELSE null END) as CHLORIDE_max
  , min(CASE WHEN label = 'GLUCOSE' THEN valuenum ELSE null END) as GLUCOSE_min
  , max(CASE WHEN label = 'GLUCOSE' THEN valuenum ELSE null END) as GLUCOSE_max
  , min(CASE WHEN label = 'HEMATOCRIT' THEN valuenum ELSE null END) as HEMATOCRIT_min
  , max(CASE WHEN label = 'HEMATOCRIT' THEN valuenum ELSE null END) as HEMATOCRIT_max
  , min(CASE WHEN label = 'HEMOGLOBIN' THEN valuenum ELSE null END) as HEMOGLOBIN_min
  , max(CASE WHEN label = 'HEMOGLOBIN' THEN valuenum ELSE null END) as HEMOGLOBIN_max
  , min(CASE WHEN label = 'LACTATE' THEN valuenum ELSE null END) as LACTATE_min
  , max(CASE WHEN label = 'LACTATE' THEN valuenum ELSE null END) as LACTATE_max
  , min(CASE WHEN label = 'PLATELET' THEN valuenum ELSE null END) as PLATELET_min
  , max(CASE WHEN label = 'PLATELET' THEN valuenum ELSE null END) as PLATELET_max
  , min(CASE WHEN label = 'POTASSIUM' THEN valuenum ELSE null END) as POTASSIUM_min
  , max(CASE WHEN label = 'POTASSIUM' THEN valuenum ELSE null END) as POTASSIUM_max
  , min(CASE WHEN label = 'PTT' THEN valuenum ELSE null END) as PTT_min
  , max(CASE WHEN label = 'PTT' THEN valuenum ELSE null END) as PTT_max
  , min(CASE WHEN label = 'INR' THEN valuenum ELSE null END) as INR_min
  , max(CASE WHEN label = 'INR' THEN valuenum ELSE null END) as INR_max
  , min(CASE WHEN label = 'PT' THEN valuenum ELSE null END) as PT_min
  , max(CASE WHEN label = 'PT' THEN valuenum ELSE null END) as PT_max
  , min(CASE WHEN label = 'SODIUM' THEN valuenum ELSE null END) as SODIUM_min
  , max(CASE WHEN label = 'SODIUM' THEN valuenum ELSE null end) as SODIUM_max
  , min(CASE WHEN label = 'BUN' THEN valuenum ELSE null end) as BUN_min
  , max(CASE WHEN label = 'BUN' THEN valuenum ELSE null end) as BUN_max
  , min(CASE WHEN label = 'WBC' THEN valuenum ELSE null end) as WBC_min
  , max(CASE WHEN label = 'WBC' THEN valuenum ELSE null end) as WBC_max


FROM
( -- begin query that extracts the data
  SELECT ie.subject_id, ie.hadm_id, ie.icustay_id
  -- here we assign labels to ITEMIDs
  -- this also fuses together multiple ITEMIDs containing the same data
  , CASE
        WHEN itemid = 50868 THEN 'ANION GAP'
        WHEN itemid = 50862 THEN 'ALBUMIN'
        WHEN itemid = 51144 THEN 'BANDS'
        WHEN itemid = 50882 THEN 'BICARBONATE'
        WHEN itemid = 50885 THEN 'BILIRUBIN'
        WHEN itemid = 50912 THEN 'CREATININE'
        WHEN itemid = 50806 THEN 'CHLORIDE'
        WHEN itemid = 50902 THEN 'CHLORIDE'
        WHEN itemid = 50809 THEN 'GLUCOSE'
        WHEN itemid = 50931 THEN 'GLUCOSE'
        WHEN itemid = 50810 THEN 'HEMATOCRIT'
        WHEN itemid = 51221 THEN 'HEMATOCRIT'
        WHEN itemid = 50811 THEN 'HEMOGLOBIN'
        WHEN itemid = 51222 THEN 'HEMOGLOBIN'
        WHEN itemid = 50813 THEN 'LACTATE'
        WHEN itemid = 51265 THEN 'PLATELET'
        WHEN itemid = 50822 THEN 'POTASSIUM'
        WHEN itemid = 50971 THEN 'POTASSIUM'
        WHEN itemid = 51275 THEN 'PTT'
        WHEN itemid = 51237 THEN 'INR'
        WHEN itemid = 51274 THEN 'PT'
        WHEN itemid = 50824 THEN 'SODIUM'
        WHEN itemid = 50983 THEN 'SODIUM'
        WHEN itemid = 51006 THEN 'BUN'
        WHEN itemid = 51300 THEN 'WBC'
        WHEN itemid = 51301 THEN 'WBC'
      ELSE null
    END AS label
  , -- add in some sanity checks on the values
  -- the where clause below requires all valuenum to be > 0, so these are only upper limit checks
    CASE
      WHEN itemid = 50862 and valuenum >    10 THEN null -- g/dL 'ALBUMIN'
      WHEN itemid = 50868 and valuenum > 10000 THEN null -- mEq/L 'ANION GAP'
      WHEN itemid = 51144 and valuenum <     0 THEN null -- immature band forms, %
      WHEN itemid = 51144 and valuenum >   100 THEN null -- immature band forms, %
      WHEN itemid = 50882 and valuenum > 10000 THEN null -- mEq/L 'BICARBONATE'
      WHEN itemid = 50885 and valuenum >   150 THEN null -- mg/dL 'BILIRUBIN'
      WHEN itemid = 50806 and valuenum > 10000 THEN null -- mEq/L 'CHLORIDE'
      WHEN itemid = 50902 and valuenum > 10000 THEN null -- mEq/L 'CHLORIDE'
      WHEN itemid = 50912 and valuenum >   150 THEN null -- mg/dL 'CREATININE'
      WHEN itemid = 50809 and valuenum > 10000 THEN null -- mg/dL 'GLUCOSE'
      WHEN itemid = 50931 and valuenum > 10000 THEN null -- mg/dL 'GLUCOSE'
      WHEN itemid = 50810 and valuenum >   100 THEN null -- % 'HEMATOCRIT'
      WHEN itemid = 51221 and valuenum >   100 THEN null -- % 'HEMATOCRIT'
      WHEN itemid = 50811 and valuenum >    50 THEN null -- g/dL 'HEMOGLOBIN'
      WHEN itemid = 51222 and valuenum >    50 THEN null -- g/dL 'HEMOGLOBIN'
      WHEN itemid = 50813 and valuenum >    50 THEN null -- mmol/L 'LACTATE'
      WHEN itemid = 51265 and valuenum > 10000 THEN null -- K/uL 'PLATELET'
      WHEN itemid = 50822 and valuenum >    30 THEN null -- mEq/L 'POTASSIUM'
      WHEN itemid = 50971 and valuenum >    30 THEN null -- mEq/L 'POTASSIUM'
      WHEN itemid = 51275 and valuenum >   150 THEN null -- sec 'PTT'
      WHEN itemid = 51237 and valuenum >    50 THEN null -- 'INR'
      WHEN itemid = 51274 and valuenum >   150 THEN null -- sec 'PT'
      WHEN itemid = 50824 and valuenum >   200 THEN null -- mEq/L == mmol/L 'SODIUM'
      WHEN itemid = 50983 and valuenum >   200 THEN null -- mEq/L == mmol/L 'SODIUM'
      WHEN itemid = 51006 and valuenum >   300 THEN null -- 'BUN'
      WHEN itemid = 51300 and valuenum >  1000 THEN null -- 'WBC'
      WHEN itemid = 51301 and valuenum >  1000 THEN null -- 'WBC'
    ELSE le.valuenum
    END AS valuenum

  FROM icustays ie

  LEFT JOIN labevents le
    ON le.subject_id = ie.subject_id AND le.hadm_id = ie.hadm_id
    AND (le.charttime BETWEEN dateadd(hour,-6,ie.intime) AND dateadd(day,1,ie.intime))
    AND le.ITEMID in
    (
      -- comment is: LABEL | CATEGORY | FLUID | NUMBER OF ROWS IN LABEVENTS
      50868, -- ANION GAP | CHEMISTRY | BLOOD | 769895
      50862, -- ALBUMIN | CHEMISTRY | BLOOD | 146697
      51144, -- BANDS - hematology
      50882, -- BICARBONATE | CHEMISTRY | BLOOD | 780733
      50885, -- BILIRUBIN, TOTAL | CHEMISTRY | BLOOD | 238277
      50912, -- CREATININE | CHEMISTRY | BLOOD | 797476
      50902, -- CHLORIDE | CHEMISTRY | BLOOD | 795568
      50806, -- CHLORIDE, WHOLE BLOOD | BLOOD GAS | BLOOD | 48187
      50931, -- GLUCOSE | CHEMISTRY | BLOOD | 748981
      50809, -- GLUCOSE | BLOOD GAS | BLOOD | 196734
      51221, -- HEMATOCRIT | HEMATOLOGY | BLOOD | 881846
      50810, -- HEMATOCRIT, CALCULATED | BLOOD GAS | BLOOD | 89715
      51222, -- HEMOGLOBIN | HEMATOLOGY | BLOOD | 752523
      50811, -- HEMOGLOBIN | BLOOD GAS | BLOOD | 89712
      50813, -- LACTATE | BLOOD GAS | BLOOD | 187124
      51265, -- PLATELET COUNT | HEMATOLOGY | BLOOD | 778444
      50971, -- POTASSIUM | CHEMISTRY | BLOOD | 845825
      50822, -- POTASSIUM, WHOLE BLOOD | BLOOD GAS | BLOOD | 192946
      51275, -- PTT | HEMATOLOGY | BLOOD | 474937
      51237, -- INR(PT) | HEMATOLOGY | BLOOD | 471183
      51274, -- PT | HEMATOLOGY | BLOOD | 469090
      50983, -- SODIUM | CHEMISTRY | BLOOD | 808489
      50824, -- SODIUM, WHOLE BLOOD | BLOOD GAS | BLOOD | 71503
      51006, -- UREA NITROGEN | CHEMISTRY | BLOOD | 791925
      51301, -- WHITE BLOOD CELLS | HEMATOLOGY | BLOOD | 753301
      51300  -- WBC COUNT | HEMATOLOGY | BLOOD | 2371
    )
    AND valuenum IS NOT null AND valuenum > 0 -- lab values cannot be 0 and cannot be negative
) pvt
GROUP BY pvt.subject_id, pvt.hadm_id, pvt.icustay_id
--ORDER BY pvt.subject_id, pvt.hadm_id, pvt.icustay_id;

GO


/****** Object:  View [dbo].[uofirstday]    Script Date: 4/14/2019 5:09:43 PM ******/
DROP VIEW [dbo].[uofirstday]
GO

/****** Object:  View [dbo].[uofirstday]    Script Date: 4/14/2019 5:09:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[uofirstday] as
select
  -- patient identifiers
  ie.subject_id, ie.hadm_id, ie.icustay_id

  -- volumes associated with urine output ITEMIDs
  , sum(
      -- we consider input of GU irrigant as a negative volume
      case
        when oe.itemid = 227488 and oe.value > 0 then -1*oe.value
        else oe.value
    end) as UrineOutput
from icustays ie
-- Join to the outputevents table to get urine output
left join outputevents oe
-- join on all patient identifiers
on ie.subject_id = oe.subject_id and ie.hadm_id = oe.hadm_id and ie.icustay_id = oe.icustay_id
-- and ensure the data occurs during the first day
and oe.charttime between ie.intime and (dateadd(day,1,ie.intime)) -- first ICU day
where itemid in
(
-- these are the most frequently occurring urine output observations in CareVue
40055, -- "Urine Out Foley"
43175, -- "Urine ."
40069, -- "Urine Out Void"
40094, -- "Urine Out Condom Cath"
40715, -- "Urine Out Suprapubic"
40473, -- "Urine Out IleoConduit"
40085, -- "Urine Out Incontinent"
40057, -- "Urine Out Rt Nephrostomy"
40056, -- "Urine Out Lt Nephrostomy"
40405, -- "Urine Out Other"
40428, -- "Urine Out Straight Cath"
40086,--	Urine Out Incontinent
40096, -- "Urine Out Ureteral Stent #1"
40651, -- "Urine Out Ureteral Stent #2"

-- these are the most frequently occurring urine output observations in MetaVision
226559, -- "Foley"
226560, -- "Void"
226561, -- "Condom Cath"
226584, -- "Ileoconduit"
226563, -- "Suprapubic"
226564, -- "R Nephrostomy"
226565, -- "L Nephrostomy"
226567, --	Straight Cath
226557, -- R Ureteral Stent
226558, -- L Ureteral Stent
227488, -- GU Irrigant Volume In
227489  -- GU Irrigant/Urine Volume Out
)
group by ie.subject_id, ie.hadm_id, ie.icustay_id
--order by ie.subject_id, ie.hadm_id, ie.icustay_id;

GO


/****** Object:  View [dbo].[ventdurations]    Script Date: 4/14/2019 5:09:55 PM ******/
DROP VIEW [dbo].[ventdurations]
GO

/****** Object:  View [dbo].[ventdurations]    Script Date: 4/14/2019 5:09:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create VIEW [dbo].[ventdurations] as
with vd0 as
(
  select
    icustay_id
    -- this carries over the previous charttime which had a mechanical ventilation event
    , case
        when MechVent=1 then
          LAG(CHARTTIME, 1) OVER (partition by icustay_id, MechVent order by charttime)
        else null
      end as charttime_lag
    , charttime
    , MechVent
    , OxygenTherapy
    , Extubated
    , SelfExtubated
  from ventsettings
)
, vd1 as
(
  select
      icustay_id
      , charttime_lag
      , charttime
      , MechVent
      , OxygenTherapy
      , Extubated
      , SelfExtubated

      -- if this is a mechanical ventilation event, we calculate the time since the last event
      , case
          -- if the current observation indicates mechanical ventilation is present
          -- calculate the time since the last vent event
          when MechVent=1 then
            CHARTTIME - charttime_lag
          else null
        end as ventduration

      , LAG(Extubated,1)
      OVER
      (
      partition by icustay_id, case when MechVent=1 or Extubated=1 then 1 else 0 end
      order by charttime
      ) as ExtubatedLag

      -- now we determine if the current mech vent event is a "new", i.e. they've just been intubated
      , case
        -- if there is an extubation flag, we mark any subsequent ventilation as a new ventilation event
          --when Extubated = 1 then 0 -- extubation is *not* a new ventilation event, the *subsequent* row is
          when
            LAG(Extubated,1)
            OVER
            (
            partition by icustay_id, case when MechVent=1 or Extubated=1 then 1 else 0 end
            order by charttime
            )
            = 1 then 1
          -- if patient has initiated oxygen therapy, and is not currently vented, start a newvent
          when MechVent = 0 and OxygenTherapy = 1 then 1
            -- if there is less than 8 hours between vent settings, we do not treat this as a new ventilation event
          when (CHARTTIME - charttime_lag) > dateadd(hour,8,0)
            then 1
        else 0
        end as newvent
  -- use the staging table with only vent settings from chart events
  FROM vd0 ventsettings
)
, vd2 as
(
  select vd1.*
  -- create a cumulative sum of the instances of new ventilation
  -- this results in a monotonic integer assigned to each instance of ventilation
  , case when MechVent=1 or Extubated = 1 then
      SUM( newvent )
      OVER ( partition by icustay_id order by charttime )
    else null end
    as ventnum
  --- now we convert CHARTTIME of ventilator settings into durations
  from vd1
)
-- create the durations for each mechanical ventilation instance
select icustay_id
  -- regenerate ventnum so it's sequential
  , ROW_NUMBER() over (partition by icustay_id order by ventnum) as ventnum
  , min(charttime) as starttime
  , max(charttime) as endtime
  , datediff(hour,max(charttime),min(charttime)) AS duration_hours
from vd2
group by icustay_id, ventnum
having min(charttime) != max(charttime)
-- patient had to be mechanically ventilated at least once
-- i.e. max(mechvent) should be 1
-- this excludes a frequent situation of NIV/oxygen before intub
-- in these cases, ventnum=0 and max(mechvent)=0, so they are ignored
and max(mechvent) = 1

GO


/****** Object:  View [dbo].[ventfirstday]    Script Date: 4/14/2019 5:10:10 PM ******/
DROP VIEW [dbo].[ventfirstday]
GO

/****** Object:  View [dbo].[ventfirstday]    Script Date: 4/14/2019 5:10:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ventfirstday] AS
select
  ie.subject_id, ie.hadm_id, ie.icustay_id
  -- if vd.icustay_id is not null, then they have a valid ventilation event
  -- in this case, we say they are ventilated
  -- otherwise, they are not
  , max(case
      when vd.icustay_id is not null then 1
    else 0 end) as vent
from icustays ie
left join ventdurations vd
  on ie.icustay_id = vd.icustay_id
  and
  (
    -- ventilation duration overlaps with ICU admission -> vented on admission
    (vd.starttime <= ie.intime and vd.endtime >= ie.intime)
    -- ventilation started during the first day
    OR (vd.starttime >= ie.intime and vd.starttime <= dateadd(day,1,ie.intime))
  )
group by ie.subject_id, ie.hadm_id, ie.icustay_id
--order by ie.subject_id, ie.hadm_id, ie.icustay_id;

GO


/****** Object:  View [dbo].[ventsettings]    Script Date: 4/14/2019 5:11:02 PM ******/
DROP VIEW [dbo].[ventsettings]
GO

/****** Object:  View [dbo].[ventsettings]    Script Date: 4/14/2019 5:11:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ventsettings] AS
select
  icustay_id, charttime
  -- case statement determining whether it is an instance of mech vent
  , max(
    case
      when itemid is null or value is null then 0 -- can't have null values
      when itemid = 720 and value != 'Other/Remarks' THEN 1  -- VentTypeRecorded
      when itemid = 223848 and value != 'Other' THEN 1
      when itemid = 223849 then 1 -- ventilator mode
      when itemid = 467 and value = 'Ventilator' THEN 1 -- O2 delivery device == ventilator
      when itemid in
        (
        445, 448, 449, 450, 1340, 1486, 1600, 224687 -- minute volume
        , 639, 654, 681, 682, 683, 684,224685,224684,224686 -- tidal volume
        , 218,436,535,444,459,224697,224695,224696,224746,224747 -- High/Low/Peak/Mean/Neg insp force ("RespPressure")
        , 221,1,1211,1655,2000,226873,224738,224419,224750,227187 -- Insp pressure
        , 543 -- PlateauPressure
        , 5865,5866,224707,224709,224705,224706 -- APRV pressure
        , 60,437,505,506,686,220339,224700 -- PEEP
        , 3459 -- high pressure relief
        , 501,502,503,224702 -- PCV
        , 223,667,668,669,670,671,672 -- TCPCV
        , 224701 -- PSVlevel
        )
        THEN 1
      else 0
    end
    ) as MechVent
    , max(
      case
        -- initiation of oxygen therapy indicates the ventilation has ended
        when itemid = 226732 and value in
        (
          'Nasal cannula', -- 153714 observations
          'Face tent', -- 24601 observations
          'Aerosol-cool', -- 24560 observations
          'Trach mask ', -- 16435 observations
          'High flow neb', -- 10785 observations
          'Non-rebreather', -- 5182 observations
          'Venti mask ', -- 1947 observations
          'Medium conc mask ', -- 1888 observations
          'T-piece', -- 1135 observations
          'High flow nasal cannula', -- 925 observations
          'Ultrasonic neb', -- 9 observations
          'Vapomist' -- 3 observations
        ) then 1
        when itemid = 467 and value in
        (
          'Cannula', -- 278252 observations
          'Nasal Cannula', -- 248299 observations
          -- 'None', -- 95498 observations
          'Face Tent', -- 35766 observations
          'Aerosol-Cool', -- 33919 observations
          'Trach Mask', -- 32655 observations
          'Hi Flow Neb', -- 14070 observations
          'Non-Rebreather', -- 10856 observations
          'Venti Mask', -- 4279 observations
          'Medium Conc Mask', -- 2114 observations
          'Vapotherm', -- 1655 observations
          'T-Piece', -- 779 observations
          'Hood', -- 670 observations
          'Hut', -- 150 observations
          'TranstrachealCat', -- 78 observations
          'Heated Neb', -- 37 observations
          'Ultrasonic Neb' -- 2 observations
        ) then 1
      else 0
      end
    ) as OxygenTherapy
    , max(
      case when itemid is null or value is null then 0
        -- extubated indicates ventilation event has ended
        when itemid = 640 and value = 'Extubated' then 1
        when itemid = 640 and value = 'Self Extubation' then 1
      else 0
      end
      )
      as Extubated
    , max(
      case when itemid is null or value is null then 0
        when itemid = 640 and value = 'Self Extubation' then 1
      else 0
      end
      )
      as SelfExtubated
from chartevents ce
where ce.value is not null
-- exclude rows marked as error
and ce.error <> 1
and itemid in
(
    -- the below are settings used to indicate ventilation
      720, 223849 -- vent mode
    , 223848 -- vent type
    , 445, 448, 449, 450, 1340, 1486, 1600, 224687 -- minute volume
    , 639, 654, 681, 682, 683, 684,224685,224684,224686 -- tidal volume
    , 218,436,535,444,224697,224695,224696,224746,224747 -- High/Low/Peak/Mean ("RespPressure")
    , 221,1,1211,1655,2000,226873,224738,224419,224750,227187 -- Insp pressure
    , 543 -- PlateauPressure
    , 5865,5866,224707,224709,224705,224706 -- APRV pressure
    , 60,437,505,506,686,220339,224700 -- PEEP
    , 3459 -- high pressure relief
    , 501,502,503,224702 -- PCV
    , 223,667,668,669,670,671,672 -- TCPCV
    , 224701 -- PSVlevel

    -- the below are settings used to indicate extubation
    , 640 -- extubated

    -- the below indicate oxygen/NIV, i.e. the end of a mechanical vent event
    , 468 -- O2 Delivery Device#2
    , 469 -- O2 Delivery Mode
    , 470 -- O2 Flow (lpm)
    , 471 -- O2 Flow (lpm) #2
    , 227287 -- O2 Flow (additional cannula)
    , 226732 -- O2 Delivery Device(s)
    , 223834 -- O2 Flow

    -- used in both oxygen + vent calculation
    , 467 -- O2 Delivery Device
)
group by icustay_id, charttime
UNION
-- add in the extubation flags from procedureevents_mv
-- note that we only need the start time for the extubation
-- (extubation is always charted as ending 1 minute after it started)
select
  icustay_id, starttime as charttime
  , 0 as MechVent
  , 0 as OxygenTherapy
  , 1 as Extubated
  , case when itemid = 225468 then 1 else 0 end as SelfExtubated
from procedureevents_mv
where itemid in
(
  227194 -- "Extubation"
, 225468 -- "Unplanned Extubation (patient-initiated)"
, 225477 -- "Unplanned Extubation (non-patient initiated)"
);


GO


/****** Object:  View [dbo].[vitalsfirstday]    Script Date: 4/14/2019 5:11:06 PM ******/
DROP VIEW [dbo].[vitalsfirstday]
GO

/****** Object:  View [dbo].[vitalsfirstday]    Script Date: 4/14/2019 5:11:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vitalsfirstday] as
SELECT pvt.subject_id, pvt.hadm_id, pvt.icustay_id

-- Easier names
, min(case when VitalID = 1 then valuenum else null end) as HeartRate_Min
, max(case when VitalID = 1 then valuenum else null end) as HeartRate_Max
, avg(case when VitalID = 1 then valuenum else null end) as HeartRate_Mean
, min(case when VitalID = 2 then valuenum else null end) as SysBP_Min
, max(case when VitalID = 2 then valuenum else null end) as SysBP_Max
, avg(case when VitalID = 2 then valuenum else null end) as SysBP_Mean
, min(case when VitalID = 3 then valuenum else null end) as DiasBP_Min
, max(case when VitalID = 3 then valuenum else null end) as DiasBP_Max
, avg(case when VitalID = 3 then valuenum else null end) as DiasBP_Mean
, min(case when VitalID = 4 then valuenum else null end) as MeanBP_Min
, max(case when VitalID = 4 then valuenum else null end) as MeanBP_Max
, avg(case when VitalID = 4 then valuenum else null end) as MeanBP_Mean
, min(case when VitalID = 5 then valuenum else null end) as RespRate_Min
, max(case when VitalID = 5 then valuenum else null end) as RespRate_Max
, avg(case when VitalID = 5 then valuenum else null end) as RespRate_Mean
, min(case when VitalID = 6 then valuenum else null end) as TempC_Min
, max(case when VitalID = 6 then valuenum else null end) as TempC_Max
, avg(case when VitalID = 6 then valuenum else null end) as TempC_Mean
, min(case when VitalID = 7 then valuenum else null end) as SpO2_Min
, max(case when VitalID = 7 then valuenum else null end) as SpO2_Max
, avg(case when VitalID = 7 then valuenum else null end) as SpO2_Mean
, min(case when VitalID = 8 then valuenum else null end) as Glucose_Min
, max(case when VitalID = 8 then valuenum else null end) as Glucose_Max
, avg(case when VitalID = 8 then valuenum else null end) as Glucose_Mean

FROM  (
  select ie.subject_id, ie.hadm_id, ie.icustay_id
  , case
    when itemid in (211,220045) and valuenum > 0 and valuenum < 300 then 1 -- HeartRate
    when itemid in (51,442,455,6701,220179,220050) and valuenum > 0 and valuenum < 400 then 2 -- SysBP
    when itemid in (8368,8440,8441,8555,220180,220051) and valuenum > 0 and valuenum < 300 then 3 -- DiasBP
    when itemid in (456,52,6702,443,220052,220181,225312) and valuenum > 0 and valuenum < 300 then 4 -- MeanBP
    when itemid in (615,618,220210,224690) and valuenum > 0 and valuenum < 70 then 5 -- RespRate
    when itemid in (223761,678) and valuenum > 70 and valuenum < 120  then 6 -- TempF, converted to degC in valuenum call
    when itemid in (223762,676) and valuenum > 10 and valuenum < 50  then 6 -- TempC
    when itemid in (646,220277) and valuenum > 0 and valuenum <= 100 then 7 -- SpO2
    when itemid in (807,811,1529,3745,3744,225664,220621,226537) and valuenum > 0 then 8 -- Glucose

    else null end as VitalID
      -- convert F to C
  , case when itemid in (223761,678) then (valuenum-32)/1.8 else valuenum end as valuenum

  from icustays ie
  left join chartevents ce
  on ie.subject_id = ce.subject_id and ie.hadm_id = ce.hadm_id and ie.icustay_id = ce.icustay_id
  and ce.charttime between ie.intime and dateadd(day,1,ie.intime)
  -- exclude rows marked as error
  and ce.error <> 1
  where ce.itemid in
  (
  -- HEART RATE
  211, --"Heart Rate"
  220045, --"Heart Rate"

  -- Systolic/diastolic

  51, --	Arterial BP [Systolic]
  442, --	Manual BP [Systolic]
  455, --	NBP [Systolic]
  6701, --	Arterial BP #2 [Systolic]
  220179, --	Non Invasive Blood Pressure systolic
  220050, --	Arterial Blood Pressure systolic

  8368, --	Arterial BP [Diastolic]
  8440, --	Manual BP [Diastolic]
  8441, --	NBP [Diastolic]
  8555, --	Arterial BP #2 [Diastolic]
  220180, --	Non Invasive Blood Pressure diastolic
  220051, --	Arterial Blood Pressure diastolic


  -- MEAN ARTERIAL PRESSURE
  456, --"NBP Mean"
  52, --"Arterial BP Mean"
  6702, --	Arterial BP Mean #2
  443, --	Manual BP Mean(calc)
  220052, --"Arterial Blood Pressure mean"
  220181, --"Non Invasive Blood Pressure mean"
  225312, --"ART BP mean"

  -- RESPIRATORY RATE
  618,--	Respiratory Rate
  615,--	Resp Rate (Total)
  220210,--	Respiratory Rate
  224690, --	Respiratory Rate (Total)


  -- SPO2, peripheral
  646, 220277,

  -- GLUCOSE, both lab and fingerstick
  807,--	Fingerstick Glucose
  811,--	Glucose (70-105)
  1529,--	Glucose
  3745,--	BloodGlucose
  3744,--	Blood Glucose
  225664,--	Glucose finger stick
  220621,--	Glucose (serum)
  226537,--	Glucose (whole blood)

  -- TEMPERATURE
  223762, -- "Temperature Celsius"
  676,	-- "Temperature C"
  223761, -- "Temperature Fahrenheit"
  678 --	"Temperature F"

  )
) pvt
group by pvt.subject_id, pvt.hadm_id, pvt.icustay_id
GO


/****** Object:  View [dbo].[vwCHARTEVENTS]    Script Date: 4/14/2019 5:11:11 PM ******/
DROP VIEW [dbo].[vwCHARTEVENTS]
GO

/****** Object:  View [dbo].[vwCHARTEVENTS]    Script Date: 4/14/2019 5:11:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vwCHARTEVENTS]
as
-- The CHARTEVENTS table is very large, so I created this view as an "interface" to
-- let me code against a smaller subset of the data
SELECT *
  FROM [MIMIC3].[dbo].[CHARTEVENTS]



  -- This filter returns data for only the first 100 patients
  where subject_ID <100

GO


/****** Object:  View [dbo].[OASIS]    Script Date: 4/14/2019 5:12:17 PM ******/
DROP VIEW [dbo].[OASIS]
GO

/****** Object:  View [dbo].[OASIS]    Script Date: 4/14/2019 5:12:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[OASIS] as

with surgflag as
(
  select ie.icustay_id
    , max(case
        when lower(curr_service) like '%surg%' then 1
        when curr_service = 'ORTHO' then 1
    else 0 end) as surgical
  from icustays ie
  left join services se
    on ie.hadm_id = se.hadm_id
    and se.transfertime < dateadd(day,1,ie.intime)
  group by ie.icustay_id
)
, cohort as
(
select ie.subject_id, ie.hadm_id, ie.icustay_id
      , ie.intime
      , ie.outtime
      , adm.deathtime
      , datediff(second, adm.admittime, ie.intime)/60/60/24 as PreICULOS
      , floor( datediff(day,pat.dob,ie.intime) / 365.242 ) as age
      , gcs.mingcs
      , vital.heartrate_max
      , vital.heartrate_min
      , vital.meanbp_max
      , vital.meanbp_min
      , vital.resprate_max
      , vital.resprate_min
      , vital.tempc_max
      , vital.tempc_min
      , vent.vent as mechvent
      , uo.urineoutput

      , case
          when adm.ADMISSION_TYPE = 'ELECTIVE' and sf.surgical = 1
            then 1
          when adm.ADMISSION_TYPE is null or sf.surgical is null
            then null
          else 0
        end as ElectiveSurgery

      -- age group
      , case
        when ( ( datediff(day, pat.dob, ie.intime) ) / 365.242 ) <= 1 then 'neonate'
        when ( ( datediff(day,pat.dob,ie.intime) ) / 365.242 ) <= 15 then 'middle'
        else 'adult' end as ICUSTAY_AGE_GROUP

      -- mortality flags
      , case
          when adm.deathtime between ie.intime and ie.outtime
            then 1
          when adm.deathtime <= ie.intime -- sometimes there are typographical errors in the death date
            then 1
          when adm.dischtime <= ie.outtime and adm.discharge_location = 'DEAD/EXPIRED'
            then 1
          else 0 end
        as ICUSTAY_EXPIRE_FLAG
      , adm.hospital_expire_flag
from icustays ie
inner join admissions adm
  on ie.hadm_id = adm.hadm_id
inner join patients pat
  on ie.subject_id = pat.subject_id
left join surgflag sf
  on ie.icustay_id = sf.icustay_id
-- join to custom tables to get more data....
left join gcsfirstday gcs
  on ie.icustay_id = gcs.icustay_id
left join vitalsfirstday vital
  on ie.icustay_id = vital.icustay_id
left join uofirstday uo
  on ie.icustay_id = uo.icustay_id
left join ventfirstday vent
  on ie.icustay_id = vent.icustay_id

)
, scorecomp as
(
select co.subject_id, co.hadm_id, co.icustay_id
, co.ICUSTAY_AGE_GROUP
, co.icustay_expire_flag
, co.hospital_expire_flag

-- Below code calculates the component scores needed for OASIS
, case when preiculos is null then null
     when  convert(varchar(10), (preiculos/86400))='0' and convert(varchar(10), ((preiculos%86400)/3600)) ='0' and convert(varchar(10), (((preiculos%86400)%3600)/60)) <= '10'  then 5
     when  convert(varchar(10), (preiculos/86400))='0' and convert(varchar(10), ((preiculos%86400)/3600)) ='4' and convert(varchar(10), (((preiculos%86400)%3600)/60)) <= '57' then 3
     when  convert(varchar(10), (preiculos/86400))< '1'  then 0
     when convert(varchar(10), (preiculos/86400))<='13'  then 1
     else 2 end as preiculos_score
,  case when age is null then null
      when age < 24 then 0
      when age <= 53 then 3
      when age <= 77 then 6
      when age <= 89 then 9
      when age >= 90 then 7
      else 0 end as age_score
,  case when mingcs is null then null
      when mingcs <= 7 then 10
      when mingcs < 14 then 4
      when mingcs = 14 then 3
      else 0 end as gcs_score
,  case when heartrate_max is null then null
      when heartrate_max > 125 then 6
      when heartrate_min < 33 then 4
      when heartrate_max >= 107 and heartrate_max <= 125 then 3
      when heartrate_max >= 89 and heartrate_max <= 106 then 1
      else 0 end as heartrate_score
,  case when meanbp_min is null then null
      when meanbp_min < 20.65 then 4
      when meanbp_min < 51 then 3
      when meanbp_max > 143.44 then 3
      when meanbp_min >= 51 and meanbp_min < 61.33 then 2
      else 0 end as meanbp_score
,  case when resprate_min is null then null
      when resprate_min <   6 then 10
      when resprate_max >  44 then  9
      when resprate_max >  30 then  6
      when resprate_max >  22 then  1
      when resprate_min <  13 then 1 else 0
      end as resprate_score
,  case when tempc_max is null then null
      when tempc_max > 39.88 then 6
      when tempc_min >= 33.22 and tempc_min <= 35.93 then 4
      when tempc_max >= 33.22 and tempc_max <= 35.93 then 4
      when tempc_min < 33.22 then 3
      when tempc_min > 35.93 and tempc_min <= 36.39 then 2
      when tempc_max >= 36.89 and tempc_max <= 39.88 then 2
      else 0 end as temp_score
,  case when UrineOutput is null then null
      when UrineOutput < 671.09 then 10
      when UrineOutput > 6896.80 then 8
      when UrineOutput >= 671.09
       and UrineOutput <= 1426.99 then 5
      when UrineOutput >= 1427.00
       and UrineOutput <= 2544.14 then 1
      else 0 end as UrineOutput_score
,  case when mechvent is null then null
      when mechvent = 1 then 9
      else 0 end as mechvent_score
,  case when ElectiveSurgery is null then null
      when ElectiveSurgery = 1 then 0
      else 6 end as electivesurgery_score


-- The below code gives the component associated with each score
-- This is not needed to calculate OASIS, but provided for user convenience.
-- If both the min/max are in the normal range (score of 0), then the average value is stored.
, preiculos
, age
, mingcs as gcs
,  case when heartrate_max is null then null
      when heartrate_max > 125 then heartrate_max
      when heartrate_min < 33 then heartrate_min
      when heartrate_max >= 107 and heartrate_max <= 125 then heartrate_max
      when heartrate_max >= 89 and heartrate_max <= 106 then heartrate_max
      else (heartrate_min+heartrate_max)/2 end as heartrate
,  case when meanbp_min is null then null
      when meanbp_min < 20.65 then meanbp_min
      when meanbp_min < 51 then meanbp_min
      when meanbp_max > 143.44 then meanbp_max
      when meanbp_min >= 51 and meanbp_min < 61.33 then meanbp_min
      else (meanbp_min+meanbp_max)/2 end as meanbp
,  case when resprate_min is null then null
      when resprate_min <   6 then resprate_min
      when resprate_max >  44 then resprate_max
      when resprate_max >  30 then resprate_max
      when resprate_max >  22 then resprate_max
      when resprate_min <  13 then resprate_min
      else (resprate_min+resprate_max)/2 end as resprate
,  case when tempc_max is null then null
      when tempc_max > 39.88 then tempc_max
      when tempc_min >= 33.22 and tempc_min <= 35.93 then tempc_min
      when tempc_max >= 33.22 and tempc_max <= 35.93 then tempc_max
      when tempc_min < 33.22 then tempc_min
      when tempc_min > 35.93 and tempc_min <= 36.39 then tempc_min
      when tempc_max >= 36.89 and tempc_max <= 39.88 then tempc_max
      else (tempc_min+tempc_max)/2 end as temp
,  UrineOutput
,  mechvent
,  ElectiveSurgery
from cohort co
)
, score as
(
select s.*
    , coalesce(age_score,0)
    + coalesce(preiculos_score,0)
    + coalesce(gcs_score,0)
    + coalesce(heartrate_score,0)
    + coalesce(meanbp_score,0)
    + coalesce(resprate_score,0)
    + coalesce(temp_score,0)
    + coalesce(urineoutput_score,0)
    + coalesce(mechvent_score,0)
    + coalesce(electivesurgery_score,0)
    as OASIS
from scorecomp s
)
select
  subject_id, hadm_id, icustay_id
  , ICUSTAY_AGE_GROUP
  , hospital_expire_flag
  , icustay_expire_flag
  , OASIS
  -- Calculate the probability of in-hospital mortality
  , 1 / (1 + exp(- (-6.1746 + 0.1275*(OASIS) ))) as OASIS_PROB
  , age, age_score
  , preiculos, preiculos_score
  , gcs, gcs_score
  , heartrate, heartrate_score
  , meanbp, meanbp_score
  , resprate, resprate_score
  , temp, temp_score
  , urineoutput, UrineOutput_score
  , mechvent, mechvent_score
  , electivesurgery, electivesurgery_score
from score
GO


