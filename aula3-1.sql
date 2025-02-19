CREATE TABLE users (
  id INT,
  name VARCHAR(255) NOT NULL COMMENT 'User name',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'User email address',
  birth_date DATE NOT NULL COMMENT 'User birth date',
  address VARCHAR(50) NOT NULL COMMENT 'User address'
);

CREATE TABLE travels.destinations (
  id INT,
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Destination name',
  description VARCHAR(255) NOT NULL COMMENT 'Destination description'
);

CREATE TABLE travels.bookings (
  id INT COMMENT 'Unique booking identificator',
  id_user INT COMMENT 'User ID who make the booking',
  id_destination INT COMMENT 'booking destination ID',
  date DATE COMMENT 'booking date',
  status VARCHAR(255) DEFAULT 'pending' COMMENT 'Booking status (confirmed, pending, canceled, etc.)'
);

-- Inserts --
INSERT INTO travels.users (id, name, email, birth_date, address) VALUES 
(1, 'João Silva', 'joao@email.com', '1990-05-15', 'Rua Altamiro Guimarães, 123, Tubarão, SC'),
(2, 'Maria Santos', 'maria@email.com', '1985-08-22', 'Rua Fortunato Brunato, 456, Tubarão, SC'),
(3, 'Pedro Souza', 'pedro@email.com', '1998-02-10', 'Avenida Marechal Deodoro, 789, Tubarão, SC');

INSERT INTO travels.destinations (id, name, description) VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT INTO travels.bookings (id, id_user, id_destination, date, status) VALUES 
(1, 1, 2, '2023-07-10', 'confirmed'),
(2, 2, 1, '2023-08-05', 'pending'),
(3, 3, 3, '2023-09-20', 'canceled');

-- Selects --

-- Selecionar todos os registros da tabela "usuarios"
SELECT * FROM users;

-- Selecionar apenas o nome e o email dos usuários
SELECT name, email FROM users;

-- Selecionar os usuários que possuem o nome "João Silva"
SELECT * FROM users WHERE name = 'João Silva';

-- Selecionar os usuários que nasceram antes de uma determinada data
SELECT * FROM users WHERE birth_date < '1990-01-01';

-- Like
SELECT * FROM users WHERE name LIKE '%Silva%';
SELECT * FROM users WHERE name LIKE 'Jo_o%';

-- Update --
UPDATE users SET address = 'Rua Joao Paulo, 123, Imbituba, SC' WHERE email = 'joao@email.com';

-- delete --
DELETE FROM bookings WHERE status = 'canceled';
