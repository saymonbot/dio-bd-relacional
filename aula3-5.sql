-- Primary Key--
-- Table "users"
ALTER TABLE users
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Table "destinos"
ALTER TABLE destinations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Table "reservas"
ALTER TABLE bookings
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Examples --
-- Inserction on table "users"
INSERT INTO users (name, email, birth_date, address)
VALUES ('João Maria', 'joaomaria@example.com', '1990-01-01', 'Street A, 123');

-- Inserction on table "destinations"
INSERT INTO destinations (name, description)
VALUES ('Test Beach', 'Paradisiacal destination with beautiful beaches.');

-- Inserction on table "bookings"
INSERT INTO bookings (id_user, id_destination, date, status)
VALUES (4, 4, '2023-07-01', 'pending');

-- Foreign keys --
-- Adding foreign keys on table "bookings" refering table "users"
ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_users
FOREIGN KEY (id_user) REFERENCES users(id);

-- Adding foreign keys on table "bookings" refering table "destinations"
ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_destinations
FOREIGN KEY (id_destinations) REFERENCES destinations(id);

-- Changing retrition to foreign key "fk_bookings_users" on table "bookings" to ON DELETE CASCADE
ALTER TABLE bookings
DROP FOREIGN KEY fk_bookings_users;

ALTER TABLE bookings
ADD CONSTRAINT fk_bookings_users
FOREIGN KEY (id_users) REFERENCES users(id)
ON DELETE CASCADE;
