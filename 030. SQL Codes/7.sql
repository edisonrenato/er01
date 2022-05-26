SELECT *
FROM orders
WHERE total_amt_usd < 500
ORDER BY total_amt_usd
LIMIT 10;
