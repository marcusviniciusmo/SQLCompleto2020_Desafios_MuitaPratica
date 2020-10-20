-- OPERA��ES MATEM�TICAS

-- SOMA
SELECT UnitPrice, (UnitPrice + UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail

-- SUBTRA��O
SELECT UnitPrice, (UnitPrice - UnitPrice) AS SUBTRA��O
FROM Sales.SalesOrderDetail

-- MULTIPLICA��O
SELECT UnitPrice, (UnitPrice * UnitPrice) AS MULTIPLICA��O
FROM Sales.SalesOrderDetail

-- DIVIS�O
SELECT UnitPrice, (UnitPrice / UnitPrice) AS DIVIS�O
FROM Sales.SalesOrderDetail

-- M�DIA
SELECT AVG(UnitPrice) AS M�DIA
FROM Sales.SalesOrderDetail

-- SOMA
SELECT SUM(UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail

-- MAIOR VALOR
SELECT MAX(UnitPrice) AS MAIOR
FROM Sales.SalesOrderDetail

-- MENOR VALOR
SELECT MIN(UnitPrice) AS MENOR
FROM Sales.SalesOrderDetail

-- PRECIS�O DECIMAL
SELECT LineTotal, ROUND(LineTotal, 2) AS ARREDONDAMENTO
FROM Sales.SalesOrderDetail

-- RAIZ QUADRADA
SELECT LineTotal, SQRT(LineTotal) AS RAIZ_QUADRADA
FROM Sales.SalesOrderDetail