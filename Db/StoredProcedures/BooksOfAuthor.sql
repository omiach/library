CREATE PROCEDURE [dbo].[BooksOfAuthor]
	@AuthorId int = 0
AS
BEGIN	
SELECT 
	 [Books].[Name]
	,[BookDetails].[Description]
FROM [AuthorsBooks]
	JOIN [Books] on [AuthorsBooks].[BookId] = [Books].[Id]
	LEFT OUTER JOIN [BookDetails] on [Books].[Id] = [BookDetails].[Id]
WHERE [AuthorsBooks].[AuthorId] = @AuthorId
END

