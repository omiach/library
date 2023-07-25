CREATE TABLE [dbo].[Books]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
    [Name]	NVARCHAR(100)	NOT NULL,
	[isActive] BIT NOT NULL, 
	[PublisherId] INT NOT NULL,
    CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Books_Publishers] FOREIGN KEY ([Id]) REFERENCES [dbo].[Publishers] ([Id])
)
