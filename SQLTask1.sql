

SELECT Country,SUM( Quantity * UnitPrice) AS total_spent, AVG(UnitPrice),
COUNT(*) AS total_sales
FROM dbo.Ecom_data
WHERE Country = 'United Kingdom'
GROUP BY Country
ORDER BY total_sales DESC;

