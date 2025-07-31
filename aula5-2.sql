SELECT COUNT(*) FROM users;

--Average age by user
SELECT AVG(TIMESTAMPDIFF(YEAR, birth_date, CURRENT_DATE())) AS age
FROM users;

-- Sum age users
SELECT SUM(TIMESTAMPDIFF(YEAR, birth_date, CURRENT_DATE())) AS average_age
FROM users;

-- Lower age
SELECT MIN(TIMESTAMPDIFF(YEAR, birth_date, CURRENT_DATE())) AS average_age
FROM users;

-- Higher age
SELECT MAX(TIMESTAMPDIFF(YEAR, birth_date, CURRENT_DATE())) AS average_age
FROM users;

-- Calc quantity of bookings by destination --
SELECT *, COUNT(*) AS total_bookings FROM bookings GROUP BY id_destination ;


-- Limit
SELECT *, COUNT(*) AS total_bookings FROM bookings GROUP BY id_destination LIMIT 1 OFFSET 2;

SELECT *, COUNT(*) AS total_bookings FROM bookings GROUP BY id_destination LIMIT 1;

-- Ordenation
SELECT name
FROM users
ORDER BY name;

SELECT name, birth_date
FROM users
ORDER BY birth_date, name;

SELECT name, birth_date
FROM users
ORDER BY birth_date, name DESC;
