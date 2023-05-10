-- SQLite
drop view customer_email_a;
create view customer_email_a AS
SELECT CustomerKey, EmailAddress from DimCustomer
where EmailAddress like '%a%@adventure-works.com';

drop view customer_address_us;
create view customer_address_us AS
SELECT CustomerKey, AddressLine1, AddressLine2, C.GeographyKey from DimCustomer C
JOIN DimGeography G ON C.GeographyKey = G.GeographyKey
WHERE CountryRegionCode = 'US';