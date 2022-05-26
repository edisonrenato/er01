SELECT occurred_at, gloss_qty
FROM orders
WHERE gloss_qty BETWEEN (24 , 29)
ORDER BY gloss_qty;
