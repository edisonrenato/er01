--WITH
-- Question# 3
-- the amount of standard_qty paper and total per account



SELECT a.name, SUM(o.standard_qty) standard_qty, SUM(o.total) total
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1



WITH

-- the account name and sum which has bought the most standard_qty paper
account_most AS (SELECT a.name, SUM(o.standard_qty)standard_qty, SUM(o.total) total
                FROM accounts a
                JOIN orders o
                ON a.id = o.account_id
                GROUP BY 1
                ORDER BY 2 DESC
                LIMIT 1),

-- C: the total corresponding to max standard_qty
sub1 AS (SELECT total
        FROM account_most),

-- listing accounts bigger than
sub AS (SELECT a.name
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY 1
HAVING SUM(o.total) > (SELECT total from account_most)

---
SELECT COUNT(*)
FROM sub1;
