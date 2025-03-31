SELECT 
customers.CustomerID, orders.OrderID, orders.TotalCost, menu.Cuisine, menu.Starter, menu.Course, menuitems.ItemName

FROM orders
INNER JOIN customers on customers.CustomerID = orders.CustomerID
INNER JOIN menu on orders.MenuID = menu.MenuID
INNER JOIN menuitems on orders.MenuItemID = menuitems.MenuItemID

WHERE orders.TotalCost > 150;

