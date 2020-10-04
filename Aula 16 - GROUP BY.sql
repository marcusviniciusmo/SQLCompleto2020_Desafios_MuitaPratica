-- GROUP BY
/*
	Divide o resultado da pesquisa em grupos.
	Para cada grupo você pode aplicar uma função de agregação.

	SELECT coluna1, funcaoAgregacao(coluna2)
	FROM tabela
	GROUP BY coluna1
*/

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

--  Quanto de cada produto foi vendido até hoje?
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de cada nome temos cadastrados em nosso banco de dados?
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY FirstName

-- Na tabela Production.Product, saber a média de preço para os produtos que são prata.
SELECT Color, AVG(ListPrice) AS MEDIA
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Saber quantas pessoas tem o mesmo MiddleName agrupadas por o Middlename.

SELECT MiddleName, COUNT(MiddleName) AS "TOTAL"
FROM Person.Person
GROUP BY MiddleName

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Saber em média qual a quantidade que cada produto é vendido na loja.

SELECT ProductID, AVG(OrderQty) AS MEDIA
FROM Sales.SalesOrderDetail
GROUP BY ProductID

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 3:
/*
	Saber qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior
	valor para o menor.
*/

SELECT TOP 10 ProductID, SUM(LineTotal) AS "VENDA TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [VENDA TOTAL] DESC

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 4:
/*
	Saber quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas
	ordens de serviço, agrupados por ProductId.
*/

SELECT ProductID, 
COUNT(ProductID) AS CONTAGEM, AVG(OrderQty) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID