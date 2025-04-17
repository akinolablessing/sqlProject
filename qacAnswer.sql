-- Customer Data 
select * from customer;
select LastName,FirstName,Phone from customer;
select LastName,FirstName,Phone 
from customer
where FirstName ='John';
select LastName,FirstName,Phone 
from customer
where FirstName like 'D%';
select LastName,FirstName,Phone 
from customer
where FirstName like '%ne%';
SELECT LastName, FirstName, Phone
FROM customer
WHERE SUBSTR(Phone, 8, 2) = '56';





-- Item Data
select * from item;


-- Sale Data
select * from sale;
select c.LastName, c.FirstName, c.Phone, s.SaleDate, s.SubTotal
from sale s
join customer c on s.CustomerID = c.CustomerID
where s.Total > 100.00;
SELECT MAX(Total) AS MaxTotal, MIN(Total) AS MinTotal
FROM sale;
select avg(Total) as AverageTotal
from sale;
select count(*) as NumberOfCustomers
from sale;
SELECT LastName, FirstName, COUNT(*) AS CustomerCount
FROM customer
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;
SELECT LastName, FirstName, Phone
FROM customer
WHERE CustomerID IN (
    SELECT CustomerID
    FROM sale
    WHERE Total > 100.00
)
ORDER BY LastName ASC, FirstName DESC;
SELECT c.LastName, c.FirstName, c.Phone
FROM customer c, sale s
WHERE c.CustomerID = s.CustomerID AND s.Total > 100.00
ORDER BY c.LastName ASC, c.FirstName DESC;
SELECT c.LastName, c.FirstName, c.Phone
FROM customer c, sale s
WHERE c.CustomerID = s.CustomerID AND s.Total > 100.00
ORDER BY c.LastName ASC, c.FirstName DESC;
SELECT LastName, FirstName, Phone
FROM Customers
WHERE CustomerID IN (
    SELECT o.CustomerID
    FROM sale s
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    WHERE oi.ItemName = 'Desk Lamp'
)
ORDER BY LastName ASC, FirstName DESC;



-- sale_item Data
select * from sale_item