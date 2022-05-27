-- Question# 2
-- The total_amt_usd for each region
(SELECT r.name region_name, SUM(o.total_amt_usd) total_region
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
GROUP BY 1) t2



-- The max total_amt_usd
SELECT MAX(total_region) AS max_totalregion
FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_region
  FROM region r
  JOIN sales_reps s
  ON r.id = s.region_id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id
  GROUP BY 1) t1

-- the name of the max region

SELECT t2.region_name name_region
FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_region
  FROM region r
  JOIN sales_reps s
  ON r.id = s.region_id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id
  GROUP BY 1
  ORDER BY 2 DESC) t2
JOIN (SELECT MAX(total_region) AS max_totalregion
  FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_region
  FROM region r
  JOIN sales_reps s
  ON r.id = s.region_id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id
  GROUP BY 1
  ORDER BY 2 DESC) t1) t3
ON t2.total_region = t3.max_totalregion

-- total orders for the region
SELECT COUNT(*)
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
WHERE r.name =  (
SELECT t2.region_name name_region
FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_region
  FROM region r
  JOIN sales_reps s
  ON r.id = s.region_id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id
  GROUP BY 1
  ORDER BY 2 DESC) t2
JOIN (SELECT MAX(total_region) AS max_totalregion
  FROM (SELECT r.name region_name, SUM(o.total_amt_usd) total_region
  FROM region r
  JOIN sales_reps s
  ON r.id = s.region_id
  JOIN accounts a
  ON a.sales_rep_id = s.id
  JOIN orders o
  ON o.account_id = a.id
  GROUP BY 1
  ORDER BY 2 DESC) t1) t3
ON t2.total_region = t3.max_totalregion)
