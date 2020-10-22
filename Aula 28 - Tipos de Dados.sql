-- TIPOS DE DADOS

/*
	1. Booleanos
	2. Caractere
	3. Números
	4. Temporais
*/

/*
	### 1. Booleanos
		Por padrão é inicializado como nulo, e pode receber 1 ou 0. Tipo BIT.

	### 2. Caractere
		## Tamanho fixo - char // permite inserir até uma quantidade fixa de caracteres
			e sempre ocupa todo o espaço reservado na memória.
		## Tamanhos variáveis - varchar ou nvarchar // permite inserir até uma quantidade
			que for definida, porém só usa o espaço que for preenchido.

	### 3. Números
		## Valores Exatos
			# TINYINT - não tem parte do valor fracionado (Ex.: 1.43) somente 1; 123; 321; etc.
			# SMALLINT - mesmo do TINYINT, porém com um limite maior.
			# INT - mesmo do SMALLINT, porém com um limite maior.
			# BIGINT - mesmo do INT, porém com um limite maior.

			# NUMERIC ou DECIMAL - valores exatos, porém permitem valores fracionados, que também
				pode ser especificado a precisão e escala (escala é o número de dígitos na parte
				fracionada) - Ex.: NUMERIC(5,2) = 113,44
		##Valores Aproximados
			# REAL - Tem precisão aproximada de até 15 dígitos.
			# FLOAT - mesmo conceito do REAL.

	### 4. Temporais
		DATE - armazena data no formato aaaa/mm/dd
		DATETIME - armazena data e horas no formato aaaa/mm/dd HH:mm:ss
		DATETIME2 - armazena data e horas com adição de milisegundos no formato
			aaaa/mm/dd HH:mm:ss.msmsms
		SMALLDATETIME - armazena data e hora respeitando o limite entre
			'1900-01-01 00:00:00' até '2079-06-06 23:59:59'
		TIME - armazena horas, minutos, segundos e milisegundos respeitando o limite
			'00:00:00:0000000' até '23:59:59:9999999'
		DATETIMEOFFSET - permite armazenar informações de datas e horas incluindo o fuso horário
*/
