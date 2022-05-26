SELECT r.name Region, s.name SalesRep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
AND r.name = 'Midwest'
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name


SELECT r.name Region, s.name SalesRep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
AND r.name = 'Midwest'
AND s.name LIKE 'S%'
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name


SELECT r.name Region, s.name SalesRep, a.name Account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
AND r.name = 'Midwest'
AND s.name LIKE '% K%'
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name


SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total+0.01) UnitPrice
FROM orders o
JOIN accounts a
ON o.account_id = a.id
AND o.standard_qty > 100
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
--4 mil e poucas rows


SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total+0.01) UnitPrice
FROM orders o
JOIN accounts a
ON o.account_id = a.id
AND o.standard_qty > 100
AND o.poster_qty > 50
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
ORDER BY UnitPrice
-- 835 rows


SELECT r.name Region, a.name Account, o.total_amt_usd/(o.total+0.01) UnitPrice
FROM orders o
JOIN accounts a
ON o.account_id = a.id
AND o.standard_qty > 100
AND o.poster_qty > 50
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
ORDER BY UnitPrice DESC


SELECT DISTINCT a.name, w.channel
FROM accounts a
JOIN web_events w
ON a.id = w. account_id
AND a.id = 1001


SELECT o.occurred_at, a.name, o.total, o.total_amt_usd
FROM accounts a
JOIN orders o
ON o.account_id = a.id
WHERE o.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occurred_at DESC;
--AND o.occurred_at > 2015-01-01
