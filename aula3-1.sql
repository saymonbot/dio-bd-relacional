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
  id_user INT COMMENT 'User ID who maked the booking',
  id_destination INT COMMENT 'destination ID of booking',
  date DATE COMMENT 'booking date',
  status VARCHAR(255) DEFAULT 'pending' COMMENT 'Booking status (confirmed, pending, canceled, etc.)'
);

-- Inserts --
INSERT INTO travels.users (id, name, email, birth_date, address) VALUES 
(1, 'João Silva', 'joao@example.com', '1990-05-15', 'Street A, 123, City X, State Y'),
(2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Street B, 456, City Y, State Z'),
(3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenue C, 789, City X, State Y');

INSERT INTO travels.destinations (id, name, description) VALUES 
(1, 'Turtle Beach', 'A beautiful beach with white sand and crystal clear sea'),
(2, 'Vale Verde Waterfall', 'A lush waterfall surrounded by nature'),
(3, 'Historic City of Pedra Alta', 'A city rich in history and architecture');

INSERT INTO travels.bookings (id, id_user, id_destination, date, status) VALUES 
(1, 1, 2, '2023-07-10', 'confirmed'),
(2, 2, 1, '2023-08-05', 'pending'),
(3, 3, 3, '2023-09-20', 'canceled');

-- Selects --

-- Select all records from the "users" table
SELECT * FROM users;

-- Select only the users name and email
SELECT name, email FROM users;

-- Select users whose name is "João Silva"
SELECT * FROM users WHERE name = 'João Silva';

-- Select users who were born before a certain date
SELECT * FROM users WHERE birth_date < '1990-01-01';

-- Like
SELECT * FROM users WHERE name LIKE '%Silva%';
SELECT * FROM users WHERE name LIKE 'Jo_o%';

-- Update --
UPDATE users SET address = 'New Street, 123' WHERE email = 'joao@example.com';

-- delete --
DELETE FROM bookings WHERE status = 'canceled';
