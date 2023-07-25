CREATE FUNCTION [dbo].[CountOfBooksOfAuthor]
(
	@AuthorId int = 0
)
RETURNS INT
AS
BEGIN
	RETURN
	(
		SELECT TOP (1)
			[AuthorBooksCount].[Count]
		FROM
			(SELECT
				1 as [Order]
				,COUNT([BookId]) as [Count]
				FROM [AuthorsBooks] 
				WHERE [AuthorId] = @AuthorId
				GROUP BY AuthorId
			UNION ALL
				SELECT 
				2
				,0
			) as AuthorBooksCount
		WHERE [AuthorBooksCount].[Count] IS NOT NULL
		ORDER BY [AuthorBooksCount].[Order]
	)
END
