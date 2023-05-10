-- SQLite
-- many-to-many relationship
select a.*, b.*
from FactInternetSales a
inner join FactSurveyResponse b
ON
a.OrderDate = b.Date