SELECT 
    a.transaction_date, 
    AVG(a.total_amount) AS rolling_3_day_avg
FROM 
    (SELECT 
         SUBSTRING(transaction_time, 1, 10) AS transaction_date, 
         SUM(transaction_amount) AS total_amount
     FROM 
         transactions
     WHERE 
         SUBSTRING(transaction_time, 1, 10) BETWEEN '2021-01-29' AND '2021-01-31'
     GROUP BY 
         SUBSTRING(transaction_time, 1, 10)
    ) a
    where transaction_date = "2021-01-31"
;
