SELECT DATE_TRUNC('year', w.occurred_at), SUM(total_amt_usd)/100000
FROM orders o
JOIN accounts a
ON o.account_id = a.id
JOIN web_events w
ON a.id = w.account_id
GROUP BY 1
ORDER BY 1;



SELECT DATE_PART('month', w.occurred_at), SUM(total_amt_usd)/100000
FROM orders o
JOIN accounts a
ON o.account_id = a.id
JOIN web_events w
ON a.id = w.account_id
GROUP BY 1
ORDER BY 1;

SELECT DATE_PART('month', w.occurred_at), SUM(total_amt_usd)/100000, COUNT(*)
FROM orders o
JOIN accounts a
ON o.account_id = a.id
JOIN web_events w
ON a.id = w.account_id
GROUP BY 1
ORDER BY 1;

SELECT DATE_TRUNC('month', w.occurred_at), SUM(gloss_amt_usd), COUNT(*)
FROM orders o
JOIN accounts a
ON o.account_id = a.id
JOIN web_events w
ON a.id = w.account_id
GROUP BY 1, a.name
HAVING a.name = 'Walmart'
ORDER BY 2 DESC
LIMIT 1;
