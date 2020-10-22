-- CHAVE PRIM�RIA E ESTRANGEIRA
/*
	>> CHAVE PRIM�RIA
	* Uma chave prim�ria � basicamente uma coluna ou grupo de colunas, usada para identificar
		unicamente uma linha em uma tabela.
	* Voc� consegue criar essas chaves prim�rias atrav�s de restri��es (CONSTRAINTS), que s�o regras
		que voc� define quando est� criando uma coluna.
	* Quando voc� faz isso, voc� est� criando um �ndice �nico para aquela coluna ou grupo de colunas.

	CREATE TABLE NomeTabela (
		nomeColuna1 tipoDeDados PRIMARY KEY
		nomeColuna2 tipoDeDados
	)
*/

/*
	>> CHAVE ESTRANGEIRA
	* Uma chave estrangeira � uma coluna ou grupo de colunas em uma tabela que identifica unicamente
		uma linha em outra tabela.
	* � definida em uma tabela onde ela � apenas uma refer�ncia e n�o cont�m todos os dados ali.
	* Chave Estrangeira � simplesmente uma coluna ou grupo de colunas que �/s�o Chave Prim�ria
		em outra tabela.
	* A tabela que cont�m a chave estrangeira � chamada de tabela referenciadora ou tabela filho.
		E a tabela na qual a chave estrangeira � referenciada � chamada de tabela referenciada ou
		tabela pai.
	* Uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento
		com as outras tabelas.
	* No SQL Server voc� define uma chave estrangeira atrav�s de "FOREIGN KEY CONSTRAINT"
		ou Restri��o de Chave Estrangeira.
	* Uma Restri��o de Chave Estrangeira indica que os valores em uma coluna ou grupo de colunas na
		tabela filho correspondem aos valores na tabela pai.
	* Chave Estrangeira mant�m a "integridade referencial".
*/