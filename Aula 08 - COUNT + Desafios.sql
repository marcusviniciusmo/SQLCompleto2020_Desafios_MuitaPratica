-- COUNT 
-- Retorna o número de linhas de acordo com a condição dada
/*
	SELECT COUNT(*)
	FROM tabela

	SELECT COUNT(DISTINCT coluna1) // Conta todos os valores distintos e diferentes de nulo
	FROM tabela
*/

SELECT *
FROM Person.Person;

SELECT COUNT(*)
FROM Person.Person;

SELECT COUNT(Title)
FROM Person.Person;

SELECT COUNT(DISTINCT Title)
FROM Person.Person;
----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Quantos produtos temos cadastrados em nossa tabela de produtos.

SELECT COUNT(*)
FROM Production.Product;

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
-- Quantos tamanhos de produtos temos cadastrados em nossa tabela.

SELECT COUNT(Size)
FROM Production.Product;

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 3:
-- Quantos tamanhos diferentes de produtos eu tenho cadastrado em nossa tabela.

SELECT COUNT(DISTINCT Size)
FROM Production.Product;