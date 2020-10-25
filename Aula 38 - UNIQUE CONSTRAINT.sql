-- UNIQUE CONSTRAINT
/*
	CREATE TABLE CarteiraDeMotorista(
		Id INT PRIMARY KEY,
		NomeCondutor VARCHAR(50) NOT NULL UNIQUE,
		Idade INT CHECK (Idade >= 18),
		CodigoCNH INT NOT NULL UNIQUE
	)
*/

CREATE TABLE CarteiraDeMotorista(
		Id INT PRIMARY KEY,
		NomeCondutor VARCHAR(50) NOT NULL UNIQUE,
		Idade INT CHECK (Idade >= 18),
		CodigoCNH INT NOT NULL UNIQUE
)

INSERT INTO CarteiraDeMotorista (Id, NomeCondutor, Idade, CodigoCNH)
VALUES
(1, 'João Silva', 45, 987654321),
(2, 'Maria da Silva', 42, 123456789);

SELECT *
FROM CarteiraDeMotorista