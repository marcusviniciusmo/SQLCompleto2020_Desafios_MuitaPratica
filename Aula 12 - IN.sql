-- IN
/**
	Verificar se um valor corresponde com qualquer valor passado na lista de valores.
	Usado juntamente com o WHERE.

	SELECT *
	FROM tabela
	WHERE valor IN (valor1, valor2)

	SELECT *
	FROM tabela
	WHERE color IN ('blue', 'black')

	SELECT *
	FROM tabela
	WHERE valor IN (SELECT valor FROM nomeDaTabela)
*/

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2, 7, 13)
