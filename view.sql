CREATE VIEW UK_Sales_View AS
SELECT CustomerID, SUM(Quantity * UnitPrice) AS total_spent
FROM dbo.Ecom_data
WHERE Country = 'United Kingdom'
GROUP BY CustomerID;


SELECT * FROM UK_Sales_View
WHERE total_spent > 500;
