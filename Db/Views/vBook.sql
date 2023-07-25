CREATE VIEW [dbo].[vBook]
	AS 
WITH BooksAuthors_CTE (BookId, Authors)
AS
(
SELECT 
      [BookId],
	  STRING_AGG([Authors].FirstName + ' ' +[Authors].LastName, ', ') as Authors
  FROM [AuthorsBooks]
  JOIN  [Authors] on [AuthorsBooks].[AuthorId] = [Authors].[Id]
  GROUP BY [BookId]
)
SELECT [Books].[Id]
      ,[Books].[Name] as [Book]
      ,[isActive]
	  ,ISNULL([Description],'-') as [Description]
	  ,ISNULL([BooksAuthors_CTE].[Authors], '-') as [Authors]
	  ,[Publishers].[Name] as [Publisher]
  FROM [Books]
  LEFT OUTER JOIN [BookDetails] on [Books].[Id] = [BookDetails].[Id]
  LEFT OUTER JOIN [BooksAuthors_CTE] on [Books].[Id] = [BooksAuthors_CTE].[BookId]
  JOIN [Publishers] on [Books].[PublisherId] = [Publishers].[Id]
