-- SQLite
-- One-to-One relationship
SELECT a.*, b.*
FROM vwCUSTOMER_ADDRESS a
INNER JOIN vwCUSTOMER_BIRTHDATE b
ON a.CustomerKey = b.CustomerKey;