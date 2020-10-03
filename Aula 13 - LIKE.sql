-- LIKE
/*
	Encontrar por exemplo, uma pessoa no banco de dados que você conhece parte do nome dela.

	SELECT coluna1, coluna2
	FROM tabela
	WHERE name like '%ovi%'

	Obs.: O comando LIKE não é Case Sensitive.
*/

-- Conhece o início do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'

-- Conhece o fim do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to'

-- Conhece o meio do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'

-- Substituição de apenas 1 caractere
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_'