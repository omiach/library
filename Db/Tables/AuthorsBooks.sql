CREATE TABLE [dbo].[AuthorsBooks]
(
	[Id] INT IDENTITY (1, 1) NOT NULL, 
	[AuthorId] INT NOT NULL, 
    [BookId] INT NOT NULL, 
    CONSTRAINT [PK_AuthorsBooks] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_AuthorsBooks_Authors] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[Authors] ([Id]),
	CONSTRAINT [FK_AuthorsBooks_Books] FOREIGN KEY ([BookId]) REFERENCES [dbo].[Books] ([Id]),
)
