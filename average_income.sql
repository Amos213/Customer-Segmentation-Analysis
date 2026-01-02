SELECT Gender, age,
  AVG(`Annual Income (k$)`) AS avg_income,
  AVG(`Spending Score (1-100)`) AS  avg_score
FROM mall_customers
GROUP BY  Gender, age
  HAVING avg_income >=70 AND avg_score <=40