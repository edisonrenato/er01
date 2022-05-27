SELECT channel, DATE_TRUNC('day', occurred_at), COUNT(*)

FROM web_events

GROUP BY channel, 2


SELECT *
FROM
(SELECT channel, DATE_TRUNC('day', occurred_at), COUNT(*)

FROM web_events

GROUP BY channel, 2
) sub
ORDER BY 3 DESC





SELECT channel, AVG(COUNT(*))
FROM
(SELECT channel, DATE_TRUNC('day', occurred_at), COUNT(*)

FROM web_events

GROUP BY channel, 2
) sub
GROUP BY channel, 2
ORDER BY 2 DESC



SELECT channel, AVG(amount)
FROM
(SELECT channel, DATE_TRUNC('day', occurred_at), COUNT(*) amount

FROM web_events

GROUP BY channel, 2
) sub
GROUP BY channel
ORDER BY 2 DESC


SELECT channel, AVG(events) AS average_events
FROM (SELECT DATE_TRUNC('day',occurred_at) AS day,
             channel, COUNT(*) as events
      FROM web_events
      GROUP BY 1,2) sub
GROUP BY channel
ORDER BY 2 DESC;
