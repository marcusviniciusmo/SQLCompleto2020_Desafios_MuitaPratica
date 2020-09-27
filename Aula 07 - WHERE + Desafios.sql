-- WHERE
/*
	SELECT coluna1, coluna2, coluna_N
	FROM tabela
	WHERE condicao
*/

/*
	OPERADOR	-	DESCRI��O
	=				IGUAL
	>				MAIOR QUE
	<				MENOR QUE
	>=				MAIOR OU IGUAL QUE
	<=				MENOR OU IGUAL QUE
	<>				DIFERENTE DE
	AND				OPERADOR L�GICO E
	OR				OPERADOR L�GICO OU
*/

SELECT *
FROM Person.Person
WHERE LastName = 'Miller' AND FirstName = 'Anna';

SELECT *
From Production.Product
WHERE Color = 'blue' or Color = 'black';

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

SELECT *
FROM Production.Product
WHERE Color <> 'Red'
----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
/*
	A Equipe de Produ��o de produtos precisa do nome de todas as pe�as que pesam mais de 500Kg, 
	mas n�o mais que 700kg, para inspe��o.
*/

SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
/*
	FOi pedido pelo marketing uma rela��o de todos os empregados que s�o casados e s�o assalariados.
*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 3:
/*
	Um usu�rio chamado Peter Krebs est� devendo um pagamento, consiga o email dele 
	para que possamos enviar uma cobran�a!
*/

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;