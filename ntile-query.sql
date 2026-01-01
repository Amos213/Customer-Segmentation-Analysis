SELECT customerID,Age,`Annual Income (k$)`, `Spending Score (1-100)`,
     NTILE(10) OVER(ORDER BY `Spending Score (1-100)` DESC) AS parts
          FROM mall_customers
          