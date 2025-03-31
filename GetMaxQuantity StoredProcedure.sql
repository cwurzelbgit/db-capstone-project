CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN

SELECT MAX(OrderQuantity) AS "Max Quantity in Order" 
FROM orders;

END