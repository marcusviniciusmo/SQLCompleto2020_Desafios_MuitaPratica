-- CHAVE PRIMÁRIA E ESTRANGEIRA
/*
	>> CHAVE PRIMÁRIA
	* Uma chave primária é basicamente uma coluna ou grupo de colunas, usada para identificar
		unicamente uma linha em uma tabela.
	* Você consegue criar essas chaves primárias através de restrições (CONSTRAINTS), que são regras
		que você define quando está criando uma coluna.
	* Quando você faz isso, você está criando um índice único para aquela coluna ou grupo de colunas.

	CREATE TABLE NomeTabela (
		nomeColuna1 tipoDeDados PRIMARY KEY
		nomeColuna2 tipoDeDados
	)
*/

/*
	>> CHAVE ESTRANGEIRA
	* Uma chave estrangeira é uma coluna ou grupo de colunas em uma tabela que identifica unicamente
		uma linha em outra tabela.
	* É definida em uma tabela onde ela é apenas uma referência e não contém todos os dados ali.
	* Chave Estrangeira é simplesmente uma coluna ou grupo de colunas que é/são Chave Primária
		em outra tabela.
	* A tabela que contém a chave estrangeira é chamada de tabela referenciadora ou tabela filho.
		E a tabela na qual a chave estrangeira é referenciada é chamada de tabela referenciada ou
		tabela pai.
	* Uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento
		com as outras tabelas.
	* No SQL Server você define uma chave estrangeira através de "FOREIGN KEY CONSTRAINT"
		ou Restrição de Chave Estrangeira.
	* Uma Restrição de Chave Estrangeira indica que os valores em uma coluna ou grupo de colunas na
		tabela filho correspondem aos valores na tabela pai.
	* Chave Estrangeira mantém a "integridade referencial".
*/