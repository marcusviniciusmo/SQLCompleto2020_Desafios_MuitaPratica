-- CHECK CONSTRAINT
/*
	>> Criar restrições de valores que podem ser inseridos em uma coluna na criação de uma tabela.

	CREATE TABLE CarteiraMotorista (
		Id INT NOT NULL,
		Nome VARCHAR(255) NOT NULL,
		Idade INT CHECK (Idade >= 18)
	)
*/

CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >= 18)
);

SELECT *
FROM CarteiraMotorista

INSERT INTO CarteiraMotorista
VALUES
(1, 'José da Silva', 65)

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
-- Criar 2 tabelas novas e 1 restrição para cada tabela.

USE YouTube

CREATE TABLE EstadosBrasileiros(
	Id INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Sigla VARCHAR(2) CHECK (LEN(Sigla) = 2)
)

INSERT INTO EstadosBrasileiros
VALUES (1, 'São Paulo', 'SP')

SELECT *
FROM EstadosBrasileiros

CREATE TABLE DisciplinasFaculdade(
	Id INT PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	CargaHoraria INT NOT NULL CHECK (CargaHoraria >= 45 AND CargaHoraria <= 60),
	Professor VARCHAR(50) NOT NULL
)

INSERT INTO DisciplinasFaculdade
VALUES (1, 'Lógica de Programação', 60, 'João Sebastião')

SELECT *
FROM DisciplinasFaculdade