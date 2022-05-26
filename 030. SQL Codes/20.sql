SELECT id
FROM orders
WHERE gloss_qty > 4000 or poster_qty > 4000;

SELECT *
  FROM orders
WHERE standard_qty = 0
      AND (gloss_qty > 1000 OR poster_qty > 1000);
