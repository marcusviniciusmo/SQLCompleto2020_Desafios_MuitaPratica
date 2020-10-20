-- OPERAÇÕES MATEMÁTICAS

-- SOMA
SELECT UnitPrice, (UnitPrice + UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail

-- SUBTRAÇÃO
SELECT UnitPrice, (UnitPrice - UnitPrice) AS SUBTRAÇÃO
FROM Sales.SalesOrderDetail

-- MULTIPLICAÇÃO
SELECT UnitPrice, (UnitPrice * UnitPrice) AS MULTIPLICAÇÃO
FROM Sales.SalesOrderDetail

-- DIVISÃO
SELECT UnitPrice, (UnitPrice / UnitPrice) AS DIVISÃO
FROM Sales.SalesOrderDetail

-- MÉDIA
SELECT AVG(UnitPrice) AS MÉDIA
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

-- PRECISÃO DECIMAL
SELECT LineTotal, ROUND(LineTotal, 2) AS ARREDONDAMENTO
FROM Sales.SalesOrderDetail

-- RAIZ QUADRADA
SELECT LineTotal, SQRT(LineTotal) AS RAIZ_QUADRADA
FROM Sales.SalesOrderDetail