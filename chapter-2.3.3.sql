-- SQLite
SELECT a.*, b.* FROM 
FactInternetSales a
INNER JOIN DimCustomer b
ON a.CustomerKey = b.CustomerKey
ORDER BY CustomerKey;