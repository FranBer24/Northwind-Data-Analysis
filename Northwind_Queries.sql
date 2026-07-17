Use Northwind;
Go

Select O.OrderID, O.OrderDate, O.ShipCountry, P.ProductName, C.CategoryName, OD.UnitPrice, OD.Quantity, OD.Discount 
from Orders as O inner join [Order Details] as OD 
on O.OrderID=OD.OrderID
inner join Products as P
on OD.ProductID=P.ProductID
inner join Categories as C
on C.CategoryID=P.CategoryID

Select O.OrderID, E.FirstName, E.LastName, C.CompanyName, C.Country, S.CompanyName 
from Orders as O inner join Employees as E 
on O.EmployeeID=E.EmployeeID
inner join Customers as C
on O.CustomerID=C.CustomerID
inner join Shippers as S
on S.ShipperID=O.ShipVia