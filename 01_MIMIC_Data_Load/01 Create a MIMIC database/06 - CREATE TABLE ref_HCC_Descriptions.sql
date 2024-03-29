-- Spiro Ganas
-- 1/30/17
--
-- HCC codes and descriptions
-- From the 2014 Medicare risk adjustment model:  https://www.cms.gov/Medicare/Health-Plans/MedicareAdvtgSpecRateStats/Risk-Adjustors.html







USE [MIMIC3]
GO
/****** Object:  Table [dbo].[ref_HCC_Desciptions]    Script Date: 1/30/2018 9:56:58 AM ******/
DROP TABLE IF EXISTS [dbo].[ref_HCC_Desciptions];
GO
/****** Object:  Table [dbo].[ref_HCC_Desciptions]    Script Date: 1/30/2018 9:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_HCC_Desciptions](
	[HCC_Code] [int] NOT NULL,
	[HCC_Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ref_ICD9_to_HCC_Mappings] PRIMARY KEY CLUSTERED 
(
	[HCC_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (1, N'HIV/AIDS')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (2, N'Septicemia, Sepsis, Systemic Inflammatory Response Syndrome/Shock')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (6, N'Opportunistic Infections')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (8, N'Metastatic Cancer and Acute Leukemia')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (9, N'Lung and Other Severe Cancers')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (10, N'Lymphoma and Other Cancers')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (11, N'Colorectal, Bladder, and Other Cancers')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (12, N'Breast, Prostate, and Other Cancers and Tumors')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (17, N'Diabetes with Acute Complications')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (18, N'Diabetes with Chronic Complications')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (19, N'Diabetes without Complication')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (21, N'Protein-Calorie Malnutrition')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (22, N'Morbid Obesity')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (23, N'Other Significant Endocrine and Metabolic Disorders')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (27, N'End-Stage Liver Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (28, N'Cirrhosis of Liver')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (29, N'Chronic Hepatitis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (33, N'Intestinal Obstruction/Perforation')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (34, N'Chronic Pancreatitis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (35, N'Inflammatory Bowel Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (39, N'Bone/Joint/Muscle Infections/Necrosis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (40, N'Rheumatoid Arthritis and Inflammatory Connective Tissue Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (46, N'Severe Hematological Disorders')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (47, N'Disorders of Immunity')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (48, N'Coagulation Defects and Other Specified Hematological Disorders')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (51, N'Dementia With Complications')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (52, N'Dementia Without Complication')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (54, N'Drug/Alcohol Psychosis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (55, N'Drug/Alcohol Dependence')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (57, N'Schizophrenia')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (58, N'Major Depressive, Bipolar, and Paranoid Disorders')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (70, N'Quadriplegia')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (71, N'Paraplegia')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (72, N'Spinal Cord Disorders/Injuries')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (73, N'Amyotrophic Lateral Sclerosis and Other Motor Neuron Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (74, N'Cerebral Palsy')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (75, N'Polyneuropathy')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (76, N'Muscular Dystrophy')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (77, N'Multiple Sclerosis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (78, N'Parkinson''s and Huntington''s Diseases')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (79, N'Seizure Disorders and Convulsions')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (80, N'Coma, Brain Compression/Anoxic Damage')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (82, N'Respirator Dependence/Tracheostomy Status')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (83, N'Respiratory Arrest')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (84, N'Cardio-Respiratory Failure and Shock')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (85, N'Congestive Heart Failure')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (86, N'Acute Myocardial Infarction')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (87, N'Unstable Angina and Other Acute Ischemic Heart Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (88, N'Angina Pectoris')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (96, N'Specified Heart Arrhythmias')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (99, N'Cerebral Hemorrhage')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (100, N'Ischemic or Unspecified Stroke')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (103, N'Hemiplegia/Hemiparesis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (104, N'Monoplegia, Other Paralytic Syndromes')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (106, N'Atherosclerosis of the Extremities with Ulceration or Gangrene')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (107, N'Vascular Disease with Complications')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (108, N'Vascular Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (110, N'Cystic Fibrosis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (111, N'Chronic Obstructive Pulmonary Disease')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (112, N'Fibrosis of Lung and Other Chronic Lung Disorders')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (114, N'Aspiration and Specified Bacterial Pneumonias')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (115, N'Pneumococcal Pneumonia, Empyema, Lung Abscess')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (122, N'Proliferative Diabetic Retinopathy and Vitreous Hemorrhage')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (124, N'Exudative Macular Degeneration')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (134, N'Dialysis Status')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (135, N'Acute Renal Failure')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (136, N'Chronic Kidney Disease, Stage 5')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (137, N'Chronic Kidney Disease, Severe (Stage 4)')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (138, N'Chronic Kidney Disease, Moderate (Stage 3)')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (139, N'Chronic Kidney Disease, Mild or Unspecified (Stages 1-2 or Unspecified)')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (140, N'Unspecified Renal Failure')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (141, N'Nephritis')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (157, N'Pressure Ulcer of Skin with Necrosis Through to Muscle, Tendon, or Bone')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (158, N'Pressure Ulcer of Skin with Full Thickness Skin Loss')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (159, N'Pressure Ulcer of Skin with Partial Thickness Skin Loss')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (160, N'Pressure Pre-Ulcer Skin Changes or Unspecified Stage')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (161, N'Chronic Ulcer of Skin, Except Pressure')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (162, N'Severe Skin Burn or Condition')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (166, N'Severe Head Injury')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (167, N'Major Head Injury')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (169, N'Vertebral Fractures without Spinal Cord Injury')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (170, N'Hip Fracture/Dislocation')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (173, N'Traumatic Amputations and Complications')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (176, N'Complications of Specified Implanted Device or Graft')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (186, N'Major Organ Transplant or Replacement Status')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (188, N'Artificial Openings for Feeding or Elimination')
GO
INSERT [dbo].[ref_HCC_Desciptions] ([HCC_Code], [HCC_Description]) VALUES (189, N'Amputation Status, Lower Limb/Amputation Complications')
GO
