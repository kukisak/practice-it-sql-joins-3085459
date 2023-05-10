-- SQLite
SELECT C.CustomerKey,
C.FirstName,
C.LastName,
A.EmailAddress,
B.GeographyKey
FROM DimCustomer C
LEFT JOIN customer_email_a as A
ON C.CustomerKey = A.CustomerKey
LEFT JOIN customer_address_us as B
ON C.CustomerKey = B.CustomerKey;
