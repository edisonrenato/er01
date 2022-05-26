SELECT
      id,
      account_id,
      standard_amt_used / standard_qty as unit_price
  FROM orders
WHERE
ORDER BY
LIMIT 10;
