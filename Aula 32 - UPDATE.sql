-- UPDATE
/*
	UPDATE nomeTabela
	SET coluna1 = valor1,
		coluna2 = valor2
	WHERE condicao
*/

SELECT *
FROM Aula

UPDATE Aula
SET Nome = 'Aulas - Essas linhas foram alteradas sem utilizar o WHERE'

UPDATE Aula
SET Nome = 'Aula 1 - Essa linha foi alterada usando o WHERE'
WHERE Id = 1

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Altere o nome de duas linhas diferentes.

SELECT *
FROM PrimeiraTabela

UPDATE PrimeiraTabela 
SET NomePrimeiraTabela = 'EDITADO'
WHERE IdPrimeiraTabela = 5 OR
IdPrimeiraTabela = 3