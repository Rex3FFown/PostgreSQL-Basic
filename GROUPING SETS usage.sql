SELECT region, product, month, SUM(amount) as total_sales
FROM sales
GROUP BY GROUPING SETS (
    (region, product),
    (region, month),
    (product, month),
    ()
);
