-- HAVING
/*
	Usado em jun��o com o group by para filtrar resultados de um agrupamento ('um WHERE para dados agrupados').

	Diferen�a entre WHERE e HAVING:
	O HAVING � aplicado depois que os dados foram agrupados, e o WHERE � aplicado antes dos dados serem agrupados.

	SELECT coluna1, funcaoAgregacao(coluna2)
	FROM tabela
	GROUP BY coluna1,
	HAVING condicao
*/

-- Dizer quais nomes no sistema tem uma ocorr�ncia maior que 10 vezes.
SELECT FirstName, COUNT(FirstName) AS "OCORRENCIA"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Saber quais produtos que no total de vendas est�o entre 162k a 500k.
SELECT ProductID, SUM(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quais nomes no sistema tem ocorr�ncia maior que 10 vezes, por�m somente onde o t�tulo � 'Mr.'.
SELECT FirstName, COUNT(FirstName) AS TOTAL
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
/*
	Identificar as prov�ncias com o maior n�mero de cadastros no nosso sistema, ent�o � preciso encontrar
	quais prov�ncias est�o registradas no banco de dados mais que 1000 vezes.
*/

SELECT StateProvinceID, COUNT(StateProvinceID) AS TOTAL
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Os gerentes querem saber quais produtos n�o est�o trazendo em m�dia no m�nimo 1 milh�o em total de vendas

SELECT ProductID, AVG(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000