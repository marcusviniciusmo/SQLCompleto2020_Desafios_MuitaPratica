-- UNION
-- Combina dois ou mais resultados de um SELECT em um resultado apenas. E remove os dados duplicados
/*
	SELECT coluna1, coluna2
	FROM tabela1
	UNION
	SELECT coluna1, coluna2
	FROM tabela2

	Obs: devem ser relacionadas a mesma quantidade de colunas, e o mesmo tipo de dados
*/
-- Exemplo 1:
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Decal%'

-- Exemplo 2:
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title LIKE 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName LIKE 'A'

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:

SELECT BusinessEntityID, CreditCardID
FROM Sales.PersonCreditCard
WHERE ModifiedDate BETWEEN '2014-01-01 00:00:00.000' AND '2014-31-12 00:00:00.000'
UNION
SELECT BusinessEntityID, CreditCardID
FROM Sales.PersonCreditCard
WHERE ModifiedDate BETWEEN '2012-01-01 00:00:00.000' AND '2012-31-12 00:00:00.000'