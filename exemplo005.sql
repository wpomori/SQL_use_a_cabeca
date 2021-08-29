-- Esta é uma linha de comentário em SQL
-- Este script está sendo construído em POSTGRESQL

-- Comando de inserção de dados na tabela meus_contatos, conforme descrito na página 33 do livro Use a Cabeça SQL
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
-- Com os comandos abaixo, vamos notar alguns erros, bem como vamos notar mensagens de sucesso se a operação for realizada corretamente

-- Erro 1: na inserção, falta informações para o campo local (Palo alto, CA, ver script exemplo004.sql). Por isso, o erro do comando abaixo será:
--			ERROR:  INSERT has more target columns than expressions
--			LINE 12:  procura
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
	'05-09-1980',
	'Escritora Técnica',
	'Solteira',
	'Caiaque, Répteis',
	'Relacionamentos, Amigos'
);


-- Erro 2: na inserção, foi esquecida a coluna email. No entanto, foram passados todos os valores a serem inseridos nas colunas criadas com o script exemplo004.sql.
-- Por isso, o erro do comando abaixo será:
--			ERROR:  INSERT has more expressions than target columns
--			LINE 24:  'Relacionamentos, Amigos'
INSERT INTO meus_contatos
(
	sobrenome,
	primeiro_nome,
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
	'05-09-1980',
	'Escritora Técnica',
	'Palo Alto, CA',
	'Solteira',
	'Caiaque, Répteis',
	'Relacionamentos, Amigos'
);


-- Erro 3: na inserção, todas as colunas e todos os valores se conrresponde conforme tabela criada com exemplo004.sql.
-- Por isso, não haverá erro após a execução do comando abaixo, sendo a mensagem exibida:
--			INSERT 0 1
--			Query returned successfully in 91 msec.
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
	'05-09-1980',
	'Escritora Técnica',
	'Palo Alto, CA',
	'Solteira',
	'Caiaque, Répteis',
	'Relacionamentos, Amigos'
);


-- Erro 4: na inserção, todos os campos e vaores a serem inseridos são correspondentes.
-- As colunas são as esperadas após criação com script exemplo004.sql.
-- No entanto, o valor a ser adicionado na última coluna não teve a áspas de fechamento da string a ser inserida.
-- Por isso, o erro do comando abaixo será:
--			ERROR:  unterminated quoted string at or near "'Relacionamentos, Amigos
--			);
--			"
--			LINE 25:  'Relacionamentos, Amigos
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
	'05-09-1980',
	'Escritora Técnica',
	'Palo Alto, CA',
	'Solteira',
	'Caiaque, Répteis',
	'Relacionamentos, Amigos
);
