-- WITH STATEMENT
-- Quiz Mania: With STATEMENT
--Question # 2

WITH

largest_region AS -- The total_amt_usd for each region
    (SELECT r.id, r.name region_name, SUM(o.total_amt_usd) total_region
    FROM region r
    JOIN sales_reps s
    ON r.id = s.region_id
    JOIN accounts a
    ON a.sales_rep_id = s.id
    JOIN orders o
    ON o.account_id = a.id
    GROUP BY 1,2
    ORDER BY 3 DESC
    LIMIT 1),


total_orders AS

SELECT o.id
