SELECT id, account_id, total_amt_usd
    FROM orders
  ORDER BY total_amt_usd
  LIMIT 20;
