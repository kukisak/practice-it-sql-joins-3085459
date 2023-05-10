--SQLite
--Practice both inner and left join by combining Reseller with DimGeography and output the Reseller mailing addresses for customers within the geographic region of your choice. The region can be passed through the a where clause. Also, return the products sold for those resellers and their product subcategory.

-- My original solution
SELECT 
RS.ProductKey, 
RS.ResellerKey, 
PS.EnglishProductSubcategoryName, 
P.EnglishProductName, 
R.ResellerName, 
G.CountryRegionCode, 
G.City
FROM FactResellerSales RS
LEFT JOIN DimProduct P USING(ProductKey)
LEFT JOIN DimProductSubcategory PS USING(ProductSubcategoryKey)
LEFT JOIN DimReseller R USING(ResellerKey)
INNER JOIN DimGeography G USING(GeographyKey)
WHERE G.CountryRegionCode = 'AU'
ORDER BY GeographyKey;

-- My solution after checked solution
SELECT 
R.ResellerName,
R.AddressLine1,
R.AddressLine2,
G.City,
G.StateProvinceCode,
G.PostalCode,
G.CountryRegionCode,
RS.ProductKey,
P.ProductSubcategoryKey,
RS.SalesAmount
FROM DimReseller as R
LEFT JOIN FactResellerSales as RS
ON R.ResellerKey = RS.ResellerKey
INNER JOIN DimGeography as G
ON R.GeographyKey = G.GeographyKey
LEFT JOIN DimProduct as P
ON P.ProductKey = RS.ProductKey
WHERE G.CountryRegionCode = 'AU'
ORDER BY RS.SalesAmount ASC;