-- TIPOS DE JOINS
/*
		A					B
	id	nome			id	nome
	--	--------		--	--------
	1	Robo			1	Espada
	2	Macaco			2	Robo
	3	Samurai			3	Mario
	4	Monitor			4	Samurai
*/

-- INNER JOIN
/*
	Retorna apenas os resultados que correspondem (existem) tanto na tabela A como na tabela B.

	SELECT *
	FROM tabelaA A
	INNER JOIN tabelaB B ON A.Nome = B.Nome

	id	nome	id	nome
	1	Robo	2	Robo
	3	Samurai	4	Samurai
*/

-- FULL OUTER JOIN
/*
	Retorna um conjunto de todos os registros correspondentes da TabelaA e TabelaB quando s�o iguais.
	E al�m disso, se n�o houver valores correspondentes, ele simplesmente ir� preencher com "null".

	SELECT *
	FROM tabelaA A
	FULL OUTER JOIN TabelaB B ON A.nome = B.nome

	id		nome		id		nome
	1		Robo		2		Robo
	2		Macaco		NULL	NULL
	3		Samurai		4		Samurai
	4		Monitor		NULL	NULL
	NULL	NULL		1		Espada
	NULL	NULL		3		Mario
*/

-- LEFT OUTER JOIN (OUTER � opcional)
/*
	Retorna um conjunto de todos os registros da TabelaA, e al�m disso, os registros correspondentes
	(quando dispon�veis) na tabelaB. Se n�o houver registros correspondentes ele simplesmente vai 
	preencher com "null".

	SELECT *
	FROM tabelaA A
	LEFT JOIN tabelaB B ON A.nome = B.nome

	id		nome		id		nome
	1		Robo		2		Robo
	2		Macaco		NULL	NULL
	3		Samurai		4		Samurai
	4		Monitor		NULL	NULL
*/

-- RIGHT OUTER JOIN (OUTER � opcional)
/*
	Retorna um conjunto de todos os registros da TabelaB, e al�m disso, os registros correspondentes
	(quando dispon�veis) na tabelaA. Se n�o houver registros correspondentes ele simplesmente vai
	preencher com "null".

	SELECT *
	FROM tabelaA A
	RIGHT JOIN tabelaB B ON A.nome = B.nome

	id		nome		id		nome
	NULL	NULL		1		Espada
	1		Robo		2		Robo
	NULL	NULL		3		Mario
	3		Samurai		4		Samurai
*/