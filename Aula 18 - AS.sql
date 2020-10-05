-- AS
-- Nomear uma coluna ou uma consulta.

SELECT TOP 10 ListPrice AS PREÇO
FROM Production.Product

SELECT TOP 10 ListPrice AS "PREÇO DO PRODUTO"
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "MÉDIA DE PREÇO"
FROM Production.Product

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Renomear o FirstName e LastName da tabela Person.Person

SELECT TOP 10 FirstName AS PrimeiroNome, LastName AS Sobrenome
FROM Person.Person

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Renomear ProductNumber da tabela Production.Product

SELECT TOP 10 ProductNumber AS CodigoProduto
FROM Production.Product

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 3:
-- Renomear UnitPrice da tabela Sales.SalesOrderDetail

SELECT TOP 10 UnitPrice AS PrecoUnitario
FROM Sales.SalesOrderDetail