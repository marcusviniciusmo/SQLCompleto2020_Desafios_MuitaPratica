-- DISTINCT 
-- Usado quando se deseja omitir dados duplicados.

SELECT FirstName
FROM Person.Person; -- 19.972 registros

SELECT DISTINCT FirstName
FROM Person.Person; -- 1.018 registros
----------------------------------------------- // -----------------------------------------------
-- DESAFIO:
-- Quantos sobrenomes únicos temos em nossa tabela Person.Person?

SELECT DISTINCT LastName
FROM Person.Person;