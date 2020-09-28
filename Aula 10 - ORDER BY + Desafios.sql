-- ORDER BY
-- Ordena os resultados em ordem crescente ou decrescente.
-- Default: asc

/*
	SELECT coluna1, coluna2
	FROM tabela
	ORDER BY coluna1 asc/desc
*/

-- Ordenar por ordem crescente.
SELECT *
FROM Person.Person
ORDER BY FirstName asc

-- Ordenar por ordem decrescente.
SELECT *
FROM Person.Person
ORDER BY LastName desc

-- Ordenar uma coluna por ordem crescente e outra por ordem decrescente.
SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc

SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc

SELECT FirstName, LastName, MiddleName
FROM Person.Person
ORDER BY MiddleName asc

-- Ordenar por uma coluna que não aparece na consulta (porém, não é uma boa prática em alguns bancos de dados).
SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
/*
	Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro
	para o mais barato.
*/

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Obter o nome e número do produto dos produtos que tem o ProductId entre 1~4

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc