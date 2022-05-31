-- LEFT AND RIGHT

--question 1

SELECT DISTINCT(RIGHT(website,3)), COUNT(RIGHT(website,3))
FROM accounts a
GROUP BY 1


-- question 2
SELECT LEFT(UPPER(name),1), COUNT (*)
FROM accounts a
GROUP BY 1
ORDER BY 2 DESC

-- question 3
SELECT CASE WHEN LEFT(name,1) IN ('1','2','3','4','5','6','7','8','9','0'] THEN 'number',
            ELSE 'letter' END AS type,
            COUNT (*)
FROM accounts a
GROUP BY 1
ORDER BY 2 DESC

SELECT SUM(num) nums, SUM(letter) letters
FROM (SELECT name, CASE WHEN LEFT(UPPER(name), 1) IN ('0','1','2','3','4','5','6','7','8','9')
                       THEN 1 ELSE 0 END AS num,
         CASE WHEN LEFT(UPPER(name), 1) IN ('0','1','2','3','4','5','6','7','8','9')
                       THEN 0 ELSE 1 END AS letter
      FROM accounts) t1;


-- question 4

WITH

  counter AS (SELECT CASE WHEN LEFT(UPPER(name),1) IN ('A','E','I','O', 'U') THEN 1
            ELSE 0 END AS vowel,
            COUNT (*) AS num
FROM accounts a
GROUP BY 1)

SELECT c.vowel, c.num
FROM counter c
GROUP BY 1,2
ORDER BY 2 DESC
