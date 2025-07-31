-- Add address columns to table "users"
ALTER TABLE users
ADD Street VARCHAR(100),
ADD Number VARCHAR(10),
ADD City VARCHAR(50),
ADD State VARCHAR(50);

-- Copy data from original table to new table
UPDATE users
SET Street = SUBSTRING_INDEX(SUBSTRING_INDEX(address, ',', 1), ',', -1),
    Number = SUBSTRING_INDEX(SUBSTRING_INDEX(address, ',', 2), ',', -1),
    City = SUBSTRING_INDEX(SUBSTRING_INDEX(address, ',', 3), ',', -1),
    State = SUBSTRING_INDEX(address, ',', -1);

-- Exclusion from column "address" from original table
ALTER TABLE users
DROP COLUMN address;
