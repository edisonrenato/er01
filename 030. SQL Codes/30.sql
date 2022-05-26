SELECT a.name, o.occurred_at
FROM accounts a
JOIN orders o
ON o.account_id = a.id
ORDER BY o.occurred_at
LIMIT 1;


SELECT a.name, SUM(o.total_amt_usd) total_sales
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name;

-- Questions: HAVING
SELECT s.name, COUNT(a.id) num
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.name
HAVING COUNT(a.id) > 5
ORDER BY num DESC
 -- 34 sales reps


 SELECT a.name, COUNT(o.id) num
 FROM accounts a
 JOIN orders o
 ON o.account_id = a.id
 GROUP BY a.name
 HAVING COUNT(o.id) > 20
 ORDER BY num DESC
-- 2:  120 accounts
-- 3; Leucadia National

SELECT a.name, sum(o.total_amt_usd) total_spent
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name
HAVING SUM(o.total_amt_usd)> 30000
ORDER BY total_spent DESC


SELECT a.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name, o.total_amt_usd
HAVING sum(o.total_amt_usd) < 1000
ORDER BY o.total_amt_usd DESC




SELECT a.name, o.total_amt_usd
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name, o.total_amt_usd
ORDER BY o.total_amt_usd DESC
LIMIT 1;
-- Pacific Life


SELECT a.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name,
ORDER BY SUM(o.total_amt_usd)
LIMIT 1;
-- Nike

SELECT a.name, w.channel, COUNT(w.id) Num_times
FROM accounts a
JOIN web_events w
ON w.account_id = a.id
GROUP BY a.name, w.channel
HAVING w.channel = 'facebook' AND COUNT(w.id) > 6
ORDER BY COUNT(w.id) DESC



SELECT a.name, w.channel, COUNT(w.id) Num_times
FROM accounts a
JOIN web_events w
ON w.account_id = a.id
GROUP BY a.name, w.channel
ORDER BY w.channel DESC

-- Leucadia National
