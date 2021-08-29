-- Esta é uma linha de comentário em SQL
-- Este script está sendo construído em POSTGRESQL

-- Comando de inserção de dados na tabela meus_contatos, conforme descrito na página 33 do livro Use a Cabeça SQL
-- A tabela meus_contatos CORRETA (com a coluna sexo) foi criada com o script exemplo003.sql
-- Verificando colunas tabela meus_contatos
SELECT
        table_name,
        column_name,
        data_type
FROM
        information_schema.COLUMNS
WHERE
        TABLE_NAME = 'meus_contatos';

-- Inserindo dados na tabela meus_contatos. A ORDEM ENTRE COLUNAS E NOVOS VALORES IMPORTA, por isso cuidado.
INSERT INTO meus_contatos
(
	sobrenome,
	primeiro_nome,
	email,
	sexo,
	aniversario,
	profissao,
	local,
	estado_civil,
	interesses,
	procura
)
	VALUES
(
	'Anderson',
	'Jillian',
	'jill_anderson@breakneckpizza.com',
	'F',
	'05/09/1980',
	'Escritora Técnica',
	'Palo Alto, CA',
	'Solteira',
	'Caiaque, Répteis',
	'Relacionamentos, Amigos'
);
