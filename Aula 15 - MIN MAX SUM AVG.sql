-- FUN��ES DE AGREGA��O: MIN MAX SUM AVG
-- Agregam ou combinam dados de uma tabela em 1 resultado s�

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

-- FUN��O SUM
SELECT TOP 10 SUM(LineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail

-- FUN��O MIN
SELECT TOP 10 MIN(LineTotal) AS "MENOR"
FROM Sales.SalesOrderDetail

-- FUN��O MAX
SELECT TOP 10 MAX(LineTotal) AS "MAIOR"
FROM Sales.SalesOrderDetail

-- FUN��O AVG
SELECT TOP 10 AVG(LineTotal) AS "M�DIA"
FROM Sales.SalesOrderDetail