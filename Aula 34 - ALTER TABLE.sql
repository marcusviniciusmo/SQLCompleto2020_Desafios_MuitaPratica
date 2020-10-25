-- ALTER TABLE
/*
	ALTER TABLE nomeTabela
	acao

	>> Exemplos do que pode ser feito:
	* Adicionar, remover ou alterar uma coluna.
	* Alterar valores padrões para uma coluna.
	* Adicionar ou remover restrições de colunas.
	* Renomear tabelas e colunas.
*/

CREATE TABLE YouTubeAlterado (
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Categoria VARCHAR(200) NOT NULL,
	DataCriacao DATETIME NOT NULL DEFAULT GETDATE()
)

SELECT *
FROM YouTubeAlterado

-- ADICIONAR COLUNA
ALTER TABLE YouTubeAlterado
ADD Ativo BIT

-- ALTERAR O TIPO DE UMA COLUNA
ALTER TABLE YouTubeAlterado
ALTER COLUMN Categoria VARCHAR(300) NOT NULL

-- ALTERAR O NOME DE UMA COLUNA
-- DEVE RODAR UMA PROCEDURE ESPECÍFICA PARA ISSO:
-- EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'
EXEC sp_RENAME 'YouTubeAlterado.Nome', 'nomeCanal', 'COLUMN'

-- ALTERAR O NOME DA TABELA
-- DEVE RODAR UMA PROCEDURE ESPEFÍCICA PARA ISSO:
-- EXEC sp_RENAME 'NomeTabelaAtual', 'nomeTabelaNova'
EXEC SP_RENAME 'YouTubeAlterado', 'YouTubeComNovoNome'

SELECT *
FROM YouTubeComNovoNome

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
/*
	Criar uma tabela nova com 3 colunas e depois:
	1. Alterar o tipo de uma coluna.
	2. Renomear o nome de uma coluna.
	3. Renomear o nome da tabela criada.
*/

CREATE TABLE CanalYouTube (
	IdCanal INT PRIMARY KEY,
	NomeCanal VARCHAR(50) NOT NULL UNIQUE,
	DescricaoCanal VARCHAR(200),
	DataCriacao DATETIME DEFAULT GETDATE(),
	Premium BIT DEFAULT 0,
	Inscritos INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0
)

SELECT *
FROM CanalYouTube

ALTER TABLE CanalYouTube
ALTER COLUMN DescricaoCanal VARCHAR(300)

EXEC SP_RENAME 'CanalYouTube.Inscritos', 'InscritosCanal', 'COLUMN'

EXEC SP_RENAME 'CanalYouTube', 'PerfilCanalYouTube'

SELECT *
FROM PerfilCanalYouTube