-- Question# 4

-- Customer that spent the most (4211)
SELECT a.id most_id, a.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1;

-- The web_events for that customer
SELECT w.id, w.channel, most_id
FROM web_events w
JOIN
(SELECT a.id most_id, a.name, SUM(o.total_amt_usd)
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1) sub
 ON sub.most_id = w.account_id


-- divide the previous by channel
SELECT channel, COUNT(*)
FROM (SELECT w.id, w.channel, most_id
      FROM web_events w
      JOIN
      (SELECT a.id most_id, a.name, SUM(o.total_amt_usd)
      FROM accounts a
      JOIN orders o
      ON a.id = o.account_id
      GROUP BY 1,2
      ORDER BY 3 DESC
      LIMIT 1) sub
       ON sub.most_id = w.account_id ) sub2
 GROUP BY 1
 ORDER BY 2 DESC
