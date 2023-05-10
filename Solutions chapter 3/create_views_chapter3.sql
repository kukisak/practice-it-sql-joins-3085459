-- SQLite
create view customer_email_a AS
SELECT CustomerKey, EmailAddress from DimCustomer
where EmailAddress like '%a%@adventure-works.com';

create view customer_address_us AS
SELECT CustomerKey, AddressLine1, AddressLine2, GeographyKey from DimCustomer
WHERE CountryRegionCode = 'US';