-- SELF JOIN
-- � obrigat�rio o uso de alias.
/*
	SELECT coluna1
	FROM tabela A, tabela B
*/

-- Todos os clientes que moram na mesma regi�o.
SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region

-- Encontrar nome e data de contrata��o de todos os funcion�rios que foram contratados no mesmo ano
SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Saber, na tabela Detalhe do Pedido, quais produtos t�m o mesmo percentual de desconto.

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount