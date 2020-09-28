-- BETWEEN
-- Usado para encontrar valor entre um valor mínimo e um valor máximo.

/*
	SELECT coluna1, coluna2
	FROM tabela
	WHERE valor BETWEEN valor_mínimo AND valor_máximo

	É a mesma coisa que dizer:
	valor >= valor_mínimo AND valor <= valor_máximo
*/

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500;

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate ASC