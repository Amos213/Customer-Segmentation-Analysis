SELECT customerID, total_price,
NTILE (4) OVER(ORDER BY total_price DESC) AS spend_group
FROM( SELECT customerID,sum(`Annual Income (k$)`+`Spending Score (1-100)`) AS total_price
FROM  mall_customers
GROUP BY CustomerID)t;
