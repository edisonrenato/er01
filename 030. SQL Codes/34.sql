
SELECT DATE_TRUNC('month',occurred_at),AVG(standard_qty) as standard_avg, AVG(poster_qty) as poster_avg, AVG(gloss_qty) as gloss_avg
FROM orders o
WHERE DATE_TRUNC('month',occurred_at) =
  (SELECT MIN(DATE_TRUNC('month', occurred_at)) as min_month FROM orders o)
GROUP BY DATE_TRUNC('month',occurred_at)




SELECT s.name, r.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
GROUP BY 2, 1


SELECT region_name, seller_name,Max(total_seller)
FROM (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
  FROM accounts a
  JOIN orders o
  ON a.id = o.account_id
  JOIN sales_reps s
  ON s.id = a.sales_rep_id
  JOIN region r
  ON r.id = s.region_id
  GROUP BY 2, 1
  ORDER BY 3 DESC) sub
GROUP BY 1,2
ORDER BY 3;



--    9. QUIZ: SUBQUERY MANIA
-- Question# 1
-- The max for each region_name
(SELECT region_name AS Region, Max(total_seller) AS biggest
FROM (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
  FROM accounts a
  JOIN orders o
  ON a.id = o.account_id
  JOIN sales_reps s
  ON s.id = a.sales_rep_id
  JOIN region r
  ON r.id = s.region_id
  GROUP BY 2, 1
  ORDER BY 3 DESC) t1
GROUP BY 1
ORDER BY 2 DESC) t2


-- People query - sellers per region and sum
  (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
  FROM accounts a
  JOIN orders o
  ON a.id = o.account_id
  JOIN sales_reps s
  ON s.id = a.sales_rep_id
  JOIN region r
  ON r.id = s.region_id
  GROUP BY 2, 1
  ORDER BY 3 DESC) people



-- Query joining both - logic

SELECT seller_name, region_name, total_seller
FROM people
JOIN t2
ON t2.Region = people.region_name AND t2.biggest = people.total_seller
GROUP BY 1,2

-- Final product: CORRECT!

SELECT people.seller_name, people.region_name, people.total_seller
FROM
  (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
    FROM accounts a
    JOIN orders o
    ON a.id = o.account_id
    JOIN sales_reps s
    ON s.id = a.sales_rep_id
    JOIN region r
    ON r.id = s.region_id
    GROUP BY 2, 1
    ORDER BY 3 DESC) people
JOIN
  (SELECT region_name AS Region, Max(total_seller) AS biggest
    FROM (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
          FROM accounts a
          JOIN orders o
          ON a.id = o.account_id
          JOIN sales_reps s
          ON s.id = a.sales_rep_id
          JOIN region r
          ON r.id = s.region_id
          GROUP BY 2, 1
          ORDER BY 3 DESC) t1
    GROUP BY 1
    ORDER BY 2 DESC) t2
ON t2.Region = people.region_name AND t2.biggest = people.total_seller



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
GROUP BY 1
ORDER BY 2 DESC) t2



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
  GROUP BY 1
  ORDER BY 2 DESC) t1

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
