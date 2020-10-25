-- DROP TABLE
/*
	DROP TABLE nomeTabela
*/

CREATE TABLE TabelaASerExcluida (
	Id INT PRIMARY KEY,
	Descricao VARCHAR(50)
)

SELECT *
FROM TabelaASerExcluida

-- EXCLUI TODA A TABELA
DROP TABLE TabelaASerExcluida

CREATE TABLE TabelaComDadosASeremExcluidos (
	Id INT PRIMARY KEY,
	Descricao VARCHAR(50)
)

SELECT *
FROM TabelaComDadosASeremExcluidos

INSERT INTO TabelaComDadosASeremExcluidos
VALUES
(1, 'Linha 1'),
(2, 'Linha 2');

-- EXCLUI OS REGISTROS DE UMA TABELA
TRUNCATE TABLE TabelaComDadosASeremExcluidos