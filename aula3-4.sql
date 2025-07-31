-- Creating new table --
CREATE TABLE users_new (
  id INT,
  name VARCHAR(255) NOT NULL COMMENT 'user name',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'User email address',
  birth_date DATE NOT NULL COMMENT 'User Birth Date',
  address VARCHAR(100) NOT NULL COMMENT 'User address'
);

-- Migrating data --
INSERT INTO users_new
SELECT * from users;

-- Deleting previous table --
DROP table users;

-- Renaming previous table --
ALTER TABLE users_new RENAME users;

-- Option 2 : Change address column size -- 
ALTER TABLE users MODIFY COLUMN address VARCHAR(100);
