SELECT DISTINCT a.name, COUNT(r.name) num
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
GROUP BY a.name
ORDER BY num DESC


SELECT DISTINCT s.name, COUNT(a.name) num
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
GROUP BY s.name
ORDER BY num DESC






SELECT a.name, o.occurred_at
FROM accounts a
JOIN orders o
ON o.account_id = a.id
ORDER BY o.occurred_atSELECT DISTINCT a.name, COUNT(r.name) num
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
GROUP BY a.name
ORDER BY num DESC



LIMIT 1;


SELECT a.name, SUM(o.total_amt_usd) total_sales
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name;

SELECT w.occurred_at, w.channel, a.name
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
ORDER BY w.occurred_at DESC
LIMIT 1;


SELECT channel, count(*)
FROM web_events
GROUP BY channel


SELECT a.primary_poc
FROM accounts a
JOIN web_events w
ON w.account_id = a.id
ORDER BY w.occurred_at
LIMIT 1;

SELECT a.name, MIN(o.total_amt_usd) min
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name
ORDER BY min;


SELECT r.name region, count(s.id) reps
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
GROUP BY region
ORDER BY reps
