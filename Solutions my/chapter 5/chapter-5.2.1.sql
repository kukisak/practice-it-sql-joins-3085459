-- SQLite
-- Cross JOIN can be executed via 
-- SELECT * from TABLE_A JOIN TABLE_B
-- or via
-- SELECT * from TABLE_A CROSS JOIN TABLE_B

SELECT count(1) from DimDepartmentGroup;
SELECT count(1) from DimCurrency;

SELECT * 
FROM DimCurrency
JOIN DimDepartmentGroup;