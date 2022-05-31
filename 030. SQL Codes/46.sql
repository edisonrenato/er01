-- Ex. 1

SELECT *

FROM sf_crime_data
LIMIT 10


-- Ex. 3
WITH tab AS (SELECT
LEFT(date, 2) as month,
SUBSTRING(date,4,2) AS day,
SUBSTRING(date from 7 for 4) AS year
FROM sf_crime_data
LIMIT 10)

SELECT CAST(year ||'-'|| month ||'-'|| day AS DATE)
FROM tab
