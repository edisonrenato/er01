SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
ORDER BY gloss_amt_usd
LIMIT 5;
