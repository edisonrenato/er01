SELECT a.name, AVG(o.standard_qty), AVG(o.poster_qty), AVG(o.gloss_qty)
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name
ORDER BY a.name

SELECT a.name, AVG(o.standard_amt_usd), AVG(o.poster_amt_usd), AVG(o.gloss_amt_usd)
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY a.name
ORDER BY a.name



SELECT s.name, w.channel, COUNT(*) Total
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.name, w.channel
ORDER BY Total DESC

SELECT r.name, w.channel, COUNT(*) Total
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN regions r
ON r.id = s.region_id
GROUP BY r.name, w.channel
ORDER BY Total DESC
