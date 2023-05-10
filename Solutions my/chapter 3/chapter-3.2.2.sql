--SQLite
-- Write LEFT JOIN that returns the ProductKey from DimProduct and the total sales for each product from FactInternetSales
select A.ProductKey, sum(B.SalesAmount) as sum_of_sales
FROM DimProduct A 
LEFT JOIN FactInternetSales B USING(ProductKey)
-- ON A.ProductKey = B.ProductKey
GROUP BY A.ProductKey
ORDER BY A.ProductKey; 

-- Write LEFT JOIN query that returns the ProductKey and EnglishProductName from the DimProduct and the OrderDate, OrderQuantity, and SalesAmount from FactInternetSales. 
SELECT A.ProductKey, A.EnglishProductName, B.OrderDate, B.OrderQuantity, B.SalesAmount
FROM FactInternetSales B
LEFT JOIN DimProduct A
ON A.ProductKey = B.ProductKey
ORDER BY A.ProductKey;