SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE a.name = 'Walmart';



SELECT r.name AS Region, s.name AS Sales_Representative, a.name AS Account
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
ORDER BY a.name;


SELECT r.name AS Region_name, a.name AS Account_name, (o.total_amt_usd/(o.total +0.01)) Unit_Price
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
JOIN orders o
ON o.account_id = a.id;
