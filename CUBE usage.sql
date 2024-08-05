SELECT region, product, month, SUM(amount) as total_sales
FROM sales
GROUP BY CUBE (region, product, month);
