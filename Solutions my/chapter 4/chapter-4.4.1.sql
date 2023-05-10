-- SQLite
-- Unsupported FULL OUTER JOIN in SQLite. 
--SELECT a.*, b.*
--FROM DimCustomer a
--FULL JOIN FactSurveyResponse b
--ON a.CustomerKey = b.CustomerKey;

-- We can supply it with two LEFT JOINS and UNION. Name of the aliases must be the same and also the the order of columns in the select.
SELECT a.*, b.*
FROM DimCustomer a
LEFT JOIN FactSurveyResponse b
ON a.CustomerKey = b.CustomerKey
UNION
SELECT a.*, b.*
FROM FactSurveyResponse b
LEFT JOIN DimCustomer a
ON a.CustomerKey = b.CustomerKey;