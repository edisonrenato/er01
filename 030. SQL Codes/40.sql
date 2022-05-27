-- Question# 6
-- Last question!
-- What is the lifetime average amount spent in terms of total_amt_usd,
 -- including only the companies that spent more per order, on average,
 -- than the average of all orders


 -- the average of all orders
SELECT AVG(o.total_amt_usd) FROM orders o


-- company expenditure per order, on average
SELECT a.id, a.name, AVG(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY 1,2
ORDER BY 3 DESC


-- companies that spent more than the average
SELECT a.id, a.name, AVG(o.total_amt_usd) value
FROM accounts a
JOIN orders o
ON o.account_id = a.id
GROUP BY 1,2
HAVING AVG(o.total_amt_usd) > (SELECT AVG(o.total_amt_usd) FROM orders o)
ORDER BY 3 DESC


-- avg amount spent for top buyers

SELECT AVG(value)
FROM (SELECT a.id, a.name, AVG(o.total_amt_usd) value
      FROM accounts a
      JOIN orders o
      ON o.account_id = a.id
      GROUP BY 1,2
      HAVING AVG(o.total_amt_usd) > (SELECT AVG(o.total_amt_usd) FROM orders o)
      ORDER BY 3 DESC
) sub
