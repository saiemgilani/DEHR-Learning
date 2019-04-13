-- Index the big tables to make queries run faster




USE [MIMIC3]
GO




CREATE NONCLUSTERED INDEX [IDX_ADMISSIONS__SUBJECT_ID] 
ON 
[dbo].[ADMISSIONS]
(
	[SUBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



CREATE NONCLUSTERED INDEX [IDX_NOTEEVENTS__SUBJECT_ID] ON [dbo].[NOTEEVENTS]
(
	[SUBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO





