--Subqueries

select InvoiceNo, Sum(Quantity * UnitPrice) as total_sales
from Ecom_data
group by InvoiceNo
having Sum(Quantity * UnitPrice) >
          ( select avg(Quantity * UnitPrice)
          from Ecom_data);