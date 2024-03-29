/****** Script for SelectTopNRows command from SSMS  ******/
drop table if exists #OasisScoresScaled;
SELECT b.[subject_id]
	  ,b.[hadm_id]
      ,b.[icustay_id]
      ,b.[ICUSTAY_AGE_GROUP]
      ,b.[hospital_expire_flag]
      ,b.[icustay_expire_flag]
      ,b.[OASIS]
      ,b.[OASIS_PROB]
      ,a.[elixhauser_vanwalraven]
      ,a.[elixhauser_SID29]
      ,a.[elixhauser_SID30]
      ,b.[age]
      ,b.[age_score]
      ,b.[preiculos]
      ,b.[preiculos_score]
      ,b.[gcs]
      ,b.[gcs_score]
      ,b.[heartrate]
      ,b.[heartrate_score]
      ,b.[meanbp]
      ,b.[meanbp_score]
      ,b.[resprate]
      ,b.[resprate_score]
      ,b.[temp]
      ,b.[temp_score]
      ,b.[urineoutput]
      ,b.[UrineOutput_score]
      ,b.[mechvent]
      ,b.[mechvent_score]
      ,b.[electivesurgery]
      ,b.[electivesurgery_score]
	  ,c.[SAPSII]
      ,c.[SAPSII_PROB]
      ,c.[hr_score]
      ,c.[sysbp_score]
      ,c.[PaO2FiO2_score]
      ,c.[uo_score]
      ,c.[bun_score]
      ,c.[wbc_score]
      ,c.[potassium_score]
      ,c.[sodium_score]
      ,c.[bicarbonate_score]
      ,c.[bilirubin_score]
      ,c.[comorbidity_score]
      ,c.[admissiontype_score]
	  into #OasisScoresScaled
  FROM [MIMIC3].[dbo].[ELIXHAUSER_AHRQ_SCORE] a
  join [dbo].[OASIS] b on b.subject_id = a.subject_id and b.hadm_id = a.hadm_id 
  join [dbo].[SAPSII] c on b.subject_id = c.subject_id and b.hadm_id = c.hadm_id and b.icustay_id=c.icustay_id

  select count(*) from #OasisScoresScaled

  select max(Oasis) from #OasisScoresScaled
  select max(age_score) from #OasisScoresScaled
  select max(preiculos_score) from #OasisScoresScaled
  select max(elixhauser_vanwalraven) from #OasisScoresScaled
   select max(elixhauser_SID29) from #OasisScoresScaled
   select max(elixhauser_SID30) from #OasisScoresScaled
   select max(SAPSII) from #OasisScoresScaled

  SELECT b.[subject_id]
	  ,b.[hadm_id]
      ,b.[icustay_id]
      ,b.[ICUSTAY_AGE_GROUP]
      ,b.[hospital_expire_flag]
      ,b.[icustay_expire_flag]
      ,cast(b.[OASIS] as float)/61.000 as oasis
      ,b.[OASIS_PROB]
      ,cast(a.[elixhauser_vanwalraven] as float)/(select max(elixhauser_vanwalraven) from #OasisScoresScaled) as elixhauser_vanwalraven
      ,cast(a.[elixhauser_sid29] as float)/(select max(elixhauser_sid29) from #OasisScoresScaled) as elixhauser_sid29
      ,cast(a.[elixhauser_sid30] as float)/(select max(elixhauser_sid30) from #OasisScoresScaled) as elixhauser_sid30

      ,b.[age]
      ,cast(b.[age_score] as float)/9.0000 as age_score
      ,b.[preiculos]
      ,b.[preiculos_score] 
      ,b.[gcs]
      ,b.[gcs_score]
      ,b.[heartrate]
      ,b.[heartrate_score]
      ,b.[meanbp]
      ,b.[meanbp_score]
      ,b.[resprate]
      ,b.[resprate_score]
      ,b.[temp]
      ,b.[temp_score]
      ,b.[urineoutput]
      ,b.[UrineOutput_score]
      ,b.[mechvent]
      ,b.[mechvent_score]
      ,b.[electivesurgery]
      ,b.[electivesurgery_score]
	  ,cast(c.[SAPSII] as float)/(select max([SAPSII]) from #OasisScoresScaled) 
		as SAPSII
	  ,c.[SAPSII_PROB]
      ,c.[hr_score]
      ,c.[sysbp_score]
      ,c.[PaO2FiO2_score]
      ,c.[uo_score]
      ,c.[bun_score]
      ,c.[wbc_score]
      ,c.[potassium_score]
      ,c.[sodium_score]
      ,c.[bicarbonate_score]
      ,c.[bilirubin_score]
      ,c.[comorbidity_score]
      ,c.[admissiontype_score]
  FROM [MIMIC3].[dbo].[ELIXHAUSER_AHRQ_SCORE] a
  join [dbo].[OASIS] b on b.subject_id = a.subject_id and b.hadm_id = a.hadm_id 
  join [dbo].[SAPSII] c on b.subject_id = c.subject_id and b.hadm_id = c.hadm_id and b.icustay_id=c.icustay_id


  select count(*) from admissions

  select distinct icd9_code from diagnoses_icd