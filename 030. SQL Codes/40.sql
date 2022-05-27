-- Question# 5

-- What is the lifetime average amount spent in terms of total_amt_usd for the top 10 total spending accounts?

-- the top 10 total spending accounts
SELECT a.id top_id, a.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10


-- the average amount spent

SELECT a.id, a.name, AVG(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id AND a.id IN (SELECT top_id FROM
                                      (SELECT a.id top_id, a.name, SUM(o.total_amt_usd)
                                      FROM accounts a
                                      JOIN orders o
                                      ON a.id = o.account_id
                                      GROUP BY 1,2
                                      ORDER BY 3 DESC
                                      LIMIT 10) sub)
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10


--
-- the top 10 total spending accounts
SELECT a.id top_id, a.name, SUM(o.total_amt_usd) AVG(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10
