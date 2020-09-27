-- SELECT
-- SQL Server, Postgres, Oracle, MySql

/*
	SELECT coluna1, coluna2
	FROM tabela
	
	SELECT *
	FROM tabela
*/
----------------------------------------------- // -----------------------------------------------

SELECT *
FROM Person.Person;

SELECT Title
FROM Person.Person;

SELECT *
FROM Person.EmailAddress;
----------------------------------------------- // -----------------------------------------------
-- DESAFIO:
-- A Equipe de Marketing precisa fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa
-- do nome e sobrenome de todos os clientes que estão cadastrados no sistema.

SELECT FirstName, LastName
FROM Person.Person;