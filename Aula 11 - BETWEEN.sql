-- BETWEEN
-- Usado para encontrar valor entre um valor m�nimo e um valor m�ximo.

/*
	SELECT coluna1, coluna2
	FROM tabela
	WHERE valor BETWEEN valor_m�nimo AND valor_m�ximo

	� a mesma coisa que dizer:
	valor >= valor_m�nimo AND valor <= valor_m�ximo
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