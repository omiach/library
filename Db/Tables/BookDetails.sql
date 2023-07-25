CREATE TABLE [dbo].[BookDetails]
(
	[Id] INT NOT NULL, 
    [Description] NVARCHAR(500) NOT NULL, 
    [NumberOfPages] INT NOT NULL,
    CONSTRAINT [PK_BookDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BookDetails_Books] FOREIGN KEY ([Id]) REFERENCES [dbo].[Books] ([Id])
)
