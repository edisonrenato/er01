-- Question# 4

-- Customer that spent the most
SELECT a.id, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- get only the name

SELECT id
FROM(SELECT a.id id, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1)sub



-- The web_events for that customer

SELECT w.id
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE w.account_id = (SELECT id
FROM(SELECT a.id id, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1)sub)


-- count the previous

SELECT COUNT(*)
FROM (
SELECT w.id
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE w.account_id = (SELECT id
FROM(SELECT a.id id, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1)sub)
) sub2
