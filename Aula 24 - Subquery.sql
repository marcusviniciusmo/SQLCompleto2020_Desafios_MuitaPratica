-- SUBQUERY ou SUBSELECT

-- Relat�rio de todos os produtos cadastrados que t�m pre�o de venda acima da m�dia.
SELECT *
FROM Production.Product
WHERE ListPrice > (
	SELECT AVG(ListPrice)
	FROM Production.Product
)

-- Nome dos funcion�rios que t�m o cargo de 'Design Engineer'
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
	SELECT BusinessEntityID
	FROM HumanResources.Employee
	WHERE JobTitle = 'Design Engineer'
)

SELECT PP.FirstName
FROM Person.Person PP
INNER JOIN HumanResources.Employee HRE ON PP.BusinessEntityID = HRE.BusinessEntityID
WHERE HRE.JobTitle = 'Design Engineer'

/*
	Obs: Os dois casos podem ser utilizados, mas deve-se verificar o desempenho no banco e escolher
	o que possui menor processamento. Para verificar o custo basta selecionar a op��o 'Incluir Plano
	de Execu��o Real (Ctrl + M)', executar a query e verificar na aba 'Plano de Execu��o'.
*/


----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Encontre os endere�os que est�o no Estado de 'Alberta'. Pode trazer todas as informa��es.

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
	SELECT StateProvinceID
	FROM Person.StateProvince
	WHERE Name = 'Alberta'
)

SELECT *
FROM Person.Address PA
INNER JOIN Person.StateProvince PSP ON PA.StateProvinceID = PSP.StateProvinceID
WHERE PSP.Name = 'Alberta'