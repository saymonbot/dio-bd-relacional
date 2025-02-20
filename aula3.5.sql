

-- Primary Key--
-- Tabela "usuarios"
ALTER TABLE users
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Tabela "destinos"
ALTER TABLE destinations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Tabela "reservas"
ALTER TABLE bookings
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Exemplos --

-- Inserção na tabela "usuarios"
INSERT INTO users (name, email, birth_date, address)
VALUES ('João Maria', 'joaomaria@example.com', '1990-01-01', 'Street A, 123');

-- Inserção na tabela "destinos"
INSERT INTO destinations (name, description)
VALUES ('Praia Teste', 'Destino paradisíaco com belas praias.');

-- Inserção na tabela "reservas"
INSERT INTO bookings (id_user, id_destination, date, status)
VALUES (4, 4, '2023-07-01', 'pending');

-- Chaves estrangeiras --

-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "usuarios"
ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_users
FOREIGN KEY (id_user) REFERENCES users(id);

-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "destinos"
ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_destinations
FOREIGN KEY (id_destinations) REFERENCES destinations(id);

-- Alterando a restrição da chave estrangeira "fk_reservas_usuarios" na tabela "reservas" para ON DELETE CASCADE
ALTER TABLE bookings
DROP FOREIGN KEY fk_bookings_users;

ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_users
FOREIGN KEY (id_users) REFERENCES users(id)
ON DELETE CASCADE;
