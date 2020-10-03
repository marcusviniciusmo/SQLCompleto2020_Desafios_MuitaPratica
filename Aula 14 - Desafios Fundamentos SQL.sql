----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Quantos produtos temos cadastrados no sistema, que custam mais que 1500 dólares?

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Quantas pessoas temos com o sobrenome que inicia com a letra P?

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 3:
-- Em quantas cidades únicas estão cadastradas nossos clientes?

SELECT COUNT(DISTINCT City)
FROM Person.Address

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 4:
-- Quais são as cidades únicas que temos cadastradas em nosso sistema?

SELECT DISTINCT(City)
FROM Person.Address

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 5:
-- Quantos produtos vermelhos têm preço entre 500 e 1000 dólares?

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice BETWEEN 500 AND 1000

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 6:
-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%'