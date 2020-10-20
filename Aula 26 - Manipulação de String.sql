-- MANIPULA��O DE STRING

-- CONCATENAR
SELECT FirstName, LastName, CONCAT(FirstName, ' ' ,LastName) AS NOME_E_SOBRENOME
FROM Person.Person

-- MAI�SCULAS E MIN�SCULAS
SELECT FirstName, UPPER(FirstName) AS MAI�SCULA
FROM Person.Person

SELECT FirstName, LOWER(FirstName) AS MIN�SCULA
FROM Person.Person

-- TAMANHO
SELECT FirstName, LEN(FirstName) AS TAMANHO
FROM Person.Person

-- SUBSTRING
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS REMOVENDO -- Come�ando do �ndice 1 e pegando 3 letras
FROM Person.Person

-- REPLACE
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') AS SUBSTITUIR
FROM Production.Product