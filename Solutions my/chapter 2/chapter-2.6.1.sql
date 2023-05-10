-- SQLite
-- DimEmployee has an EmployeeKey and ParentEmployeeKey
-- Write a SQL query that returns the employee name and their manager's name using the employeeKey and parentEmployeeKey. 
SELECT A.EmployeeKey as Employee_Key,
 A.FirstName as Employee_First_Name,
 A.LastName as Employee_Last_Name, 
 B.FirstName as Manager_First_Name, 
 B.LastName as Manager_Last_Name
FROM DimEmployee A
INNER JOIN DimEmployee B
ON A.ParentEmployeeKey = B.EmployeeKey
ORDER BY B.LastName,B.FirstName