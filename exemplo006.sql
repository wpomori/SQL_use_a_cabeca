-- Esta é uma linha de comentário em SQL
-- Este script está sendo construído em POSTGRESQL

-- Comando de inserção de dados na tabela meus_contatos, conforme descrito na página 35 do livro Use a Cabeça SQL
-- A tabela meus_contatos CORRETA (com a coluna sexo) foi criada com o script exemplo003.sql
-- Com o script exemplo004.sql, foi inserido dados na tabela meus_contatos
-- Verificando colunas tabela meus_contatos
SELECT
        table_name,
        column_name,
        data_type
FROM
        information_schema.COLUMNS
WHERE
        TABLE_NAME = 'meus_contatos';

-- Inserindo dados na tabela meus_contatos. A ORDEM ENTRE COLUNAS E NOVOS VALORES IMPORTA.
-- A seguir, vamos inserir dados incon=mpletos na tabela meus_contatos e ver como as colunas sem informações se comportam.
INSERT INTO meus_contatos
(
	primeiro_nome,
	email,
	profissao,
	local
)
	VALUES
(
	'Pat',
	'patpost@breakneckpizza.com',
	'Carteiro(a)',
	'Princeton, NJ'
);

-- Para ver como os valores ficaram após inserção na tabela meus_contatos, vamos usar SELECT.
-- Para os campos que não tínhamos informações a serem preenchidas, os mesmos ficaram com valor NULL.
-- Como há duas linhas na tabela até o momento, vamos usar o comando SELECT desta forma:
SELECT * FROM meus_contatos;
