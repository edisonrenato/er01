-- UNION
-- Ex.1

SELECT *
FROM accounts a1

UNION ALL

SELECT *
FROM accounts a2

--- Ex.2

SELECT *
FROM accounts a1
WHERE LOWER(name) = 'walmart'

UNION ALL

SELECT *
FROM accounts a2
WHERE LOWER(name) = 'disney'


-- Ex.3
WITH double_accounts AS(SELECT *
FROM accounts a1

UNION ALL

SELECT *
FROM accounts a2
)

SELECT name, COUNT(*)
FROM double_accounts
GROUP BY 1
ORDER BY 2 DESC
