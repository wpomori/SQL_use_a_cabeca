-- Esta é uma linha de comentário em SQL
-- Este script está sendo construído em POSTGRESQL

-- Comando de criação de tabela lista_donut na página 20 do livro Use a Cabeça SQL
CREATE TABLE meus_contatos
(
	sobrenome VARCHAR(30),
	primeiro_nome VARCHAR(20),
	email VARCHAR(50),
	aniversario DATE,
	profissao VARCHAR(50),
	local VARCHAR(50),
	estado_civil VARCHAR(20),
	interesses VARCHAR(100),
	procura VARCHAR(100)
);

-- Verificando colunas tabela meus_contatos
SELECT
	table_name,
	column_name,
	data_type
FROM
	information_schema.COLUMNS
WHERE
	TABLE_NAME = 'meus_contatos';

