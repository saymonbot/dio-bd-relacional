-- Inserts --
INSERT INTO travels.users (id, name, email, birth_date, address) VALUES 
(1, 'João Silva', 'joao@example.com', '1990-05-15', 'Street A, 123, City X, State Y'),
(2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Street B, 456, City Y, State Z'),
(3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenue C, 789, City X, State Y');

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
