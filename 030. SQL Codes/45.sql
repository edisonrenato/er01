
-- Question 1



SELECT LEFT(name, STRPOS(name,' ')-1), RIGHT(name, LENGTH(name) - STRPOS(name,' '))

FROM sales_reps



-- CONCAT
-- Question 2

SELECT LEFT(primary_poc, STRPOS(primary_poc,' ')-1) first_name,
        RIGHT(primary_poc, LENGTH(primary_poc) - STRPOS(primary_poc,' ')) last_name,
        LOWER(LEFT(primary_poc, STRPOS(primary_poc,' ')-1)) || '.'||
        LOWER(RIGHT(primary_poc, LENGTH(primary_poc) - STRPOS(primary_poc,' ')))
		    ||'@'||
		    LOWER(REPLACE(name,' ',''))
		||'.com'

FROM accounts a

--- Question 3

WITH tab1 AS (SELECT LEFT(primary_poc, STRPOS(primary_poc,' ')-1) first_name,
    RIGHT(primary_poc, LENGTH(primary_poc) - STRPOS(primary_poc,' ')) last_name,
	a.name compname
	FROM accounts a)


SELECT  LOWER(LEFT(first_name,1)) ||
        RIGHT(LOWER(first_name),1) ||
        LEFT(LOWER(last_name),1) ||
        RIGHT(LOWER(last_name),1) ||
        LENGTH(first_name) ||
        LENGTH(last_name) ||
        UPPER(replace(compname,' ',''))
FROM tab1
