INSERT INTO users (name, email, birth_date, street, number, city, state) VALUES ('Users without bookings', 'withoutbooking@example.com', '1990-10-10', 'Street','123','City','State');

-- Only users with bookings
SELECT * FROM users us
INNER JOIN bookings bk
	ON us.id = bk.id_user;

-- All users and bookings if exist
SELECT * FROM users us
LEFT JOIN bookings bk
	ON us.id = bk.id_user;

INSERT INTO travels.destinations (name, description) VALUES 
('Destination whitout booking', 'A beautiful beach with white sand and crystal clear sea')

-- All destinations and bookings if exist -- 
SELECT * FROM bookings bk
RIGHT JOIN destinations des
	ON des.id = bk.id_destination;

-- Same result as previous code
SELECT * FROM destinations des
LEFT JOIN bookings bk
	ON des.id = bk.id_destination;

-- Sub-querys
-- Users whitout bookings
SELECT name
FROM users
WHERE id NOT IN (SELECT id_user FROM bookings);

-- Sub-query to find less populars destinations (whit less bookings):
SELECT name
FROM destinations
WHERE id NOT IN (SELECT id_destination FROM bookings)
ORDER BY id;

-- Bookings by users
SELECT name, (SELECT COUNT(*) FROM bookings WHERE id_users = users.id) AS total_bookings
FROM users;
