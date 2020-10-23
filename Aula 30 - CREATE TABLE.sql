-- CREATE TABLE
/*
	CREATE TABLE nomeTabela (
		coluna1 tipo restricaoDaColuna,
		coluna2 tipo restricaoDaColuna,
		coluna3 tipo restricaoDaColuna,
		...
	)
*/

/*
	>> PRINCIPAIS RESTRIÇÕES:
	* NOT NULL - Não permite nulos.
	* UNIQUE - Força que todos os valores em uma coluna sejam diferentes.
	* PRIMARY KEY - uma junção de NOT NULL e UNIQUE.
	* FOREIGN KEY - identifica unicamente uma linha em outra tabela.
	* CHECK - Força uma condição específica em uma coluna.
	* DEFAULT - Força um valor padrão quando nenhum valor é passado.
*/

CREATE DATABASE YouTube;

USE YouTube

CREATE TABLE Canal (
	IdCanal INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	ContagemInscritos INT DEFAULT 0,
	DataCriacao DATETIME NOT NULL
);

SELECT *
FROM Canal

CREATE TABLE Video (
	IdVideo INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Visualizacoes INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	IdCanal INT FOREIGN KEY REFERENCES Canal(IdCanal)
);

SELECT *
FROM Video