SELECT
      id,
      account_id,
      poster_amt_usd / (poster_amt_usd + gloss_amt_usd + standard_amt_usd) as percentage_poster
  FROM orders
LIMIT 10;
