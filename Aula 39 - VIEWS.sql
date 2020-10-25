-- VIEWS
/*
	CREATE VIEW [Pessoas Simplificado] AS
	SELECT FirstName, MiddleName, LastName
	FROM Person.Person
	WHERE Title = 'Ms.'
*/

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT *
FROM [Pessoas Simplificado]

