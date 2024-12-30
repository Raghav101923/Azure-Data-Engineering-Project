------------------------
-- CREATE VIEW CALENDAR
------------------------
CREATE VIEW lvl3.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1
------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW lvl3.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW lvl3.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW lvl3.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1
        

------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW lvl3.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW lvl3.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_SubCategories/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW lvl3.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://raghavdataproject.blob.core.windows.net/lvl2/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1

