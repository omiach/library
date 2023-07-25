﻿CREATE TABLE [dbo].[Books]
(
	[Id]	INT				IDENTITY (1, 1) NOT NULL, 
    [Name]	NVARCHAR(100)	NOT NULL,
	CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id] ASC)
)
