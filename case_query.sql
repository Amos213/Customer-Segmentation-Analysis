SELECT  Gender,`Annual Income (k$)` AS  income ,
 `Spending Score (1-100)` AS score,
CASE  WHEN `Annual Income (k$)` <=50 
        AND `Spending Score (1-100)` >60 THEN " poor spender"
      WHEN `Annual Income (k$)` > 60 
        AND`Spending Score (1-100)` >=40 THEN "good spender"
 ELSE "average spender"
    END AS outcome
FROM mall_customers
GROUP BY  Gender,income,score
HAVING  `Spending Score (1-100)` >50 ;