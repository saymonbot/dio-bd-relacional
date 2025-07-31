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

-- Select all registers from table "users"
SELECT * FROM users;

-- Select only name and email from users
SELECT name, email FROM users;

-- Select users named "João Silva"
SELECT * FROM users WHERE name = 'João Silva';

-- Select users born before a date
SELECT * FROM users WHERE birth_date < '1990-01-01';

-- Like
SELECT * FROM users WHERE name LIKE '%Silva%';
SELECT * FROM users WHERE name LIKE 'Jo_o%';
