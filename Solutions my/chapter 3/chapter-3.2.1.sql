-- SQLite
SELECT A.CustomerKey, A.FirstName, A.LastName, COALESCE(B.EmailAddress, 'N/A') as 'Email' 
FROM DimCustomer A
LEFT JOIN customer_email_a B
ON A.CustomerKey = B.CustomerKey;