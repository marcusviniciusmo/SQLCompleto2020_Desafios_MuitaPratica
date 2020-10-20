-- MANIPULAÇÃO DE STRING

-- CONCATENAR
SELECT FirstName, LastName, CONCAT(FirstName, ' ' ,LastName) AS NOME_E_SOBRENOME
FROM Person.Person

-- MAIÚSCULAS E MINÚSCULAS
SELECT FirstName, UPPER(FirstName) AS MAIÚSCULA
FROM Person.Person

SELECT FirstName, LOWER(FirstName) AS MINÚSCULA
FROM Person.Person

-- TAMANHO
SELECT FirstName, LEN(FirstName) AS TAMANHO
FROM Person.Person

-- SUBSTRING
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS REMOVENDO -- Começando do índice 1 e pegando 3 letras
FROM Person.Person

-- REPLACE
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') AS SUBSTITUIR
FROM Production.Product