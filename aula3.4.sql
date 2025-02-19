-- Criando nova tabela --

CREATE TABLE users_new (
  id INT,
  name VARCHAR(255) NOT NULL COMMENT 'user name',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'User email address',
  birth_date DATE NOT NULL COMMENT 'User Birth Date',
  address VARCHAR(100) NOT NULL COMMENT 'User address'
);

-- Migrando os dados --

INSERT INTO users_new
SELECT * from users;

-- Excluindo tabela anterior --
DROP table users;

-- Renomeando nova tabela --
ALTER TABLE users_new RENAME users;


-- Ou opção 2 : Alterar tamanho da coluna endereço -- 
ALTER TABLE users MODIFY COLUMN address VARCHAR(100);
