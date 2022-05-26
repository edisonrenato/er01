SELECT  SUM(poster_qty) totalPoster
FROM orders

SELECT  SUM(standard_qty) totalStandard
FROM orders

SELECT  SUM(total_amt_usd) totalAmountUSD
FROM orders


SELECT  SUM(standard_amt_usd) stdAmountUSD, SUM(gloss_amt_usd) glossAmountUSD,
 SUM(standard_amt_usd) + SUM(gloss_amt_usd) BothAmountUSD
FROM orders;



SELECT SUM(standard_amt_usd) / SUM(standard_qty)
FROM orders;
