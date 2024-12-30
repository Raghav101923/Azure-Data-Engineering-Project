CREATE DATABASE SCOPED CREDENTIAL cred_rag
WITH 
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_lvl3
WITH
(
    LOCATION = 'https://raghavdataproject.blob.core.windows.net/lvl3',
    CREDENTIAL = cred_rag 
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-----------------------------------
------CREATE EXTERNAL TABLES-------
-----------------------------------

CREATE EXTERNAL TABLE lvl3.ext_calendar
WITH(
    LOCATION = 'ext_calendar',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.calendar

----------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_customers
WITH(
    LOCATION = 'ext_customers',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.customers

------------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_products
WITH(
    LOCATION = 'ext_products',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.products

------------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_returns
WITH(
    LOCATION = 'ext_returns',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.returns

------------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_sales
WITH(
    LOCATION = 'ext_sales',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.sales

------------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_subcat
WITH(
    LOCATION = 'ext_subcat',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.subcat

------------------------------------------

CREATE EXTERNAL TABLE lvl3.ext_territories
WITH(
    LOCATION = 'ext_territories',
    DATA_SOURCE = source_lvl3,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM lvl3.territories

DROP TABLE ext_territories;

