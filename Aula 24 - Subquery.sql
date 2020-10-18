-- SUBQUERY ou SUBSELECT

-- Relatório de todos os produtos cadastrados que têm preço de venda acima da média.
SELECT *
FROM Production.Product
WHERE ListPrice > (
	SELECT AVG(ListPrice)
	FROM Production.Product
)

-- Nome dos funcionários que têm o cargo de 'Design Engineer'
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
	o que possui menor processamento. Para verificar o custo basta selecionar a opção 'Incluir Plano
	de Execução Real (Ctrl + M)', executar a query e verificar na aba 'Plano de Execução'.
*/


----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Encontre os endereços que estão no Estado de 'Alberta'. Pode trazer todas as informações.

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