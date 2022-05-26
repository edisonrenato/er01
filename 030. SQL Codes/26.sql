SELECT MIN(occurred_at)
FROM orders


SELECT occurred_at
FROM orders
ORDER BY occurred_at
LIMIT 1;

SELECT MAX(occurred_at)
FROM web_events


SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

SELECT AVG(standard_amt_usd) StdAvg, AVG(gloss_amt_usd) GlossAvg, AVG(poster_amt_usd) PosterAVG,
AVG(standard_qty) StdQTY, AVG(gloss_qty) GlossQTY, AVG(poster_qty) PosterQTY
FROM orders


SELECT SUM(total_amt_usd)/count(*)
FROM orders
