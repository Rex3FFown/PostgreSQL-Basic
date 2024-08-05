SELECT region, product, month, SUM(amount) as total_sales
FROM sales
GROUP BY ROLLUP (region, product, month);
