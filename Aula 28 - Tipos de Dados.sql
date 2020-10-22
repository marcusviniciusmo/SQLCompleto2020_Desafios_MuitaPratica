-- TIPOS DE DADOS

/*
	1. Booleanos
	2. Caractere
	3. N�meros
	4. Temporais
*/

/*
	### 1. Booleanos
		Por padr�o � inicializado como nulo, e pode receber 1 ou 0. Tipo BIT.

	### 2. Caractere
		## Tamanho fixo - char // permite inserir at� uma quantidade fixa de caracteres
			e sempre ocupa todo o espa�o reservado na mem�ria.
		## Tamanhos vari�veis - varchar ou nvarchar // permite inserir at� uma quantidade
			que for definida, por�m s� usa o espa�o que for preenchido.

	### 3. N�meros
		## Valores Exatos
			# TINYINT - n�o tem parte do valor fracionado (Ex.: 1.43) somente 1; 123; 321; etc.
			# SMALLINT - mesmo do TINYINT, por�m com um limite maior.
			# INT - mesmo do SMALLINT, por�m com um limite maior.
			# BIGINT - mesmo do INT, por�m com um limite maior.

			# NUMERIC ou DECIMAL - valores exatos, por�m permitem valores fracionados, que tamb�m
				pode ser especificado a precis�o e escala (escala � o n�mero de d�gitos na parte
				fracionada) - Ex.: NUMERIC(5,2) = 113,44
		##Valores Aproximados
			# REAL - Tem precis�o aproximada de at� 15 d�gitos.
			# FLOAT - mesmo conceito do REAL.

	### 4. Temporais
		DATE - armazena data no formato aaaa/mm/dd
		DATETIME - armazena data e horas no formato aaaa/mm/dd HH:mm:ss
		DATETIME2 - armazena data e horas com adi��o de milisegundos no formato
			aaaa/mm/dd HH:mm:ss.msmsms
		SMALLDATETIME - armazena data e hora respeitando o limite entre
			'1900-01-01 00:00:00' at� '2079-06-06 23:59:59'
		TIME - armazena horas, minutos, segundos e milisegundos respeitando o limite
			'00:00:00:0000000' at� '23:59:59:9999999'
		DATETIMEOFFSET - permite armazenar informa��es de datas e horas incluindo o fuso hor�rio
*/
