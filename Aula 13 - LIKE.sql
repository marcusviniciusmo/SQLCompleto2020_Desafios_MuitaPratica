-- LIKE
/*
	Encontrar por exemplo, uma pessoa no banco de dados que voc� conhece parte do nome dela.

	SELECT coluna1, coluna2
	FROM tabela
	WHERE name like '%ovi%'

	Obs.: O comando LIKE n�o � Case Sensitive.
*/

-- Conhece o in�cio do nome
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

-- Substitui��o de apenas 1 caractere
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_'