-- DATEPART

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS M�s
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader

-- M�dia de vencimentos por m�s
SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mes

-- M�dia de vencimentos por ano
SELECT AVG(TotalDue) AS Media, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano

-- M�dia de vencimentos por dia
SELECT AVG(TotalDue) AS Media, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Encontrar qualquer tabela no banco que possua colunas com datas, e extrair m�s e ano dessa coluna.

-- Total de Produtos que come�aram a ser vendidos, agrupados por ano.
SELECT COUNT(Name) AS Total_Produtos, DATEPART(YEAR, SellStartDate) Ano_Inicio
FROM Production.Product
GROUP BY DATEPART(YEAR, SellStartDate)
ORDER BY Ano_Inicio

-- Total de Produtos que come�aram a ser vendidos, agrupados por m�s.
SELECT COUNT(Name) AS Total_Produtos, DATEPART(MONTH, SellStartDate) Mes_Inicio
FROM Production.Product
GROUP BY DATEPART(MONTH, SellStartDate)
ORDER BY Mes_Inicio