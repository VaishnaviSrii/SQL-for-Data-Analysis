SELECT e.CustomerID,SUM( Quantity * UnitPrice) AS total_spent, AVG(UnitPrice),
COUNT(*) AS total_sales
FROM dbo.Ecom_data e

inner join CustomerInfo c on e.CustomerID=c.CustomerID
--left join CustomerInfo c on e.CustomerID=c.CustomerID
--right join CustomerInfo c on e.CustomerID=c.CustomerID
GROUP BY e.CustomerID, c.CustomerName
ORDER BY total_sales DESC;