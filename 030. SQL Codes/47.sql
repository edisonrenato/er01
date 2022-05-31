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


-- COALESCE
-- EX. 1

SELECT *, COALESCE(o.account_id,1731) AS changed
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id
WHERE account_id IS Null;

-- Ex. 2
SELECT COALESCE(o.id, a.id) filled_id, a.name, a.website, a.lat, a.long, a.primary_poc, a.sales_rep_id, o.*
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id
WHERE o.total IS NULL;



-- Ex. 4
SELECT *,
	COALESCE(o.account_id,1731) AS account_id_mod,
	COALESCE(o.standard_qty,0) AS standard_qty_mod,
	COALESCE(o.poster_qty,0) AS poster_qty_mod,
	COALESCE(o.gloss_qty,0) AS gloss_qty_mod,
	COALESCE(o.total,0) AS total_mod,
	COALESCE(o.standard_amt_usd,0) AS standard_amt_mod,
	COALESCE(o.poster_amt_usd,0) AS poster_amt_mod,
	COALESCE(o.gloss_amt_usd,0) AS gloss_amt_mod,
	COALESCE(o.total_amt_usd,0) AS total_amt_usd_mod
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id
WHERE account_id IS Null;

-- Ex. 4 mod
SELECT *,
	COALESCE(o.account_id,1731) AS account_id_mod,
	COALESCE(o.standard_qty,0) AS standard_qty_mod,
	COALESCE(o.poster_qty,0) AS poster_qty_mod,
	COALESCE(o.gloss_qty,0) AS gloss_qty_mod,
	COALESCE(o.total,0) AS total_mod,
	COALESCE(o.standard_amt_usd,0) AS standard_amt_mod,
	COALESCE(o.poster_amt_usd,0) AS poster_amt_mod,
	COALESCE(o.gloss_amt_usd,0) AS gloss_amt_mod,
	COALESCE(o.total_amt_usd,0) AS total_amt_usd_mod
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id;

-- Ex. 5



-- Ex. 6 = 6913

SELECT COUNT(*)
FROM (SELECT *,
	COALESCE(o.account_id,1731) AS account_id_mod,
	COALESCE(o.standard_qty,0) AS standard_qty_mod,
	COALESCE(o.poster_qty,0) AS poster_qty_mod,
	COALESCE(o.gloss_qty,0) AS gloss_qty_mod,
	COALESCE(o.total,0) AS total_mod,
	COALESCE(o.standard_amt_usd,0) AS standard_amt_mod,
	COALESCE(o.poster_amt_usd,0) AS poster_amt_mod,
	COALESCE(o.gloss_amt_usd,0) AS gloss_amt_mod,
	COALESCE(o.total_amt_usd,0) AS total_amt_usd_mod
FROM accounts a
LEFT JOIN orders o
ON a.id = o.account_id) sub1
