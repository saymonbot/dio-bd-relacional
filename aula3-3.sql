-- Update --
UPDATE users SET address = 'New street, 123' WHERE email = 'joao@example.com';

-- delete --
DELETE FROM bookings WHERE status = 'canceled';
