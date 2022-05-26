SELECT id, account_id, total_amt_usd,
CASE WHEN total_amt_usd > 3000 THEN 'Large'
ELSE 'Small' END AS Order_Level
FROM orders

SELECT
CASE  WHEN total >= 2000 THEN 'At Least 2000'
      WHEN total > 1000 AND total < 2000 THEN 'Between 1000 and 2000'
      ELSE 'Less than 1000' END AS Category, COUNT(*)
FROM orders
GROUP BY 4


SELECT  a.name, SUM(o.total_amt_usd),
CASE  WHEN SUM(o.total_amt_usd) > 200000 THEN 'More than 200k'
      WHEN SUM(o.total_amt_usd) > 100000 AND SUM(o.total_amt_usd) <= 200000 THEN 'Between 100 and 200k'
      ELSE 'Less than 100k' END AS Category
FROM orders o
JOIN accounts a
ON a.id = o.account_id
GROUP BY 1
ORDER BY 2 DESC




SELECT  a.name, SUM(o.total_amt_usd),
CASE  WHEN SUM(o.total_amt_usd) > 200000 THEN 'More than 200k'
      WHEN SUM(o.total_amt_usd) > 100000 AND SUM(o.total_amt_usd) <= 200000 THEN 'Between 100 and 200k'
      ELSE 'Less than 100k' END AS Category
FROM orders o
JOIN accounts a
ON a.id = o.account_id
JOIN web_events w
ON w.account_id = a.id
GROUP BY 1, w.occurred_at
WHERE w.occurred_at BETWEEN '2016-01-01' AND '2017-12-31'
ORDER BY 2 DESC




-- 5) We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders. Create a table with the sales rep name, the total number of orders, and a column with top or not depending on if they have more than 200 orders. Place the top sales people first in your final table.


-- 6) The previous didn't account for the middle, nor the dollar amount associated with the sales. Management decides they want to see these characteristics represented as well. We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders or more than 750000 in total sales. The middle group has any rep with more than 150 orders or 500000 in sales. Create a table with the sales rep name, the total number of orders, total sales across all orders, and a column with top, middle, or low depending on this criteria. Place the top sales people based on dollar amount of sales first in your final table. You might see a few upset sales people by this criteria!
