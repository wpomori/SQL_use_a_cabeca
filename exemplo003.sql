-- Esta é uma linha de comentário em SQL
-- Este script está sendo construído em POSTGRESQL

-- Comando de criação de tabela lista_donut na página 28-29 do livro Use a Cabeça SQL
-- Quando criamos a tabela meus_contatos com o script exemplo002.sql, vimos que faltou criar a coluna sexo
-- A ideia é concertar este erro ... será que vai funcionar com o uso do comando CREATE TABLE?
CREATE TABLE meus_contatos
(
	sobre_nome VARCHAR(30),
	primeiro_nome VARCHAR(20),
	email VARCHAR(50),
	sexo CHAR(1),
	aniversario DATE,
	profissao VARCHAR(50),
	local VARCHAR(50),
	estado_civil VARCHAR(20),
	interesses VARCHAR(100),
	procura VARCHAR(100)
);

-- Ao executar o comando CREATE TABLE acima, você obterá um erro, pois aqui a tabela criado no exemplo002.sql ainda existia
-- Para isso, como a tabela está vazia, podemos apagá-la e gerar ela novamente com o comando CREATE TABLE acima
DROP TABLE meus_contatos;
CREATE TABLE meus_contatos
(
	sobre_nome VARCHAR(30),
	primeiro_nome VARCHAR(20),
	email VARCHAR(50),
	sexo CHAR(1),
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
