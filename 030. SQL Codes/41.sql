-- WITH STATEMENT
-- Quiz Mania: With STATEMENT
--Question # 1

WITH
-- The max for each region_name
max as  (SELECT region_name AS Region, Max(total_seller) AS biggest
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
          ORDER BY 2 DESC),

-- People query - sellers per region and sum
people as (SELECT s.name AS seller_name, r.name AS region_name, SUM(o.total_amt_usd) as total_seller
            FROM accounts a
            JOIN orders o
            ON a.id = o.account_id
            JOIN sales_reps s
            ON s.id = a.sales_rep_id
            JOIN region r
            ON r.id = s.region_id
            GROUP BY 2, 1
            ORDER BY 3 DESC)

-- Query joining both - logic

SELECT people.seller_name, people.region_name, people.total_seller
FROM people
JOIN max
ON max.Region = people.region_name AND max.biggest = people.total_seller
GROUP BY 1,2,3
ORDER BY 3
