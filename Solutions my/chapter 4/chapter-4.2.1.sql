-- SQLite
-- RIGHT JOIN can be executed via LEFT JOIN just by changing the tables order
SELECT 
P.ProductKey,
P.EnglishProductName, S.*
FROM FactInternetSales S
LEFT JOIN DimProduct P
ON P.ProductKey = S.ProductKey;
