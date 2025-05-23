CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(p_BookingID INT, p_CustomerID INT, p_TableNumber INT, p_BookingDate DATE)
BEGIN

INSERT INTO bookings(BookingID, CustomerID, TableNumber, Date) VALUES (p_BookingID, p_CustomerID, p_TableNumber, DATE(p_BookingDate));
SELECT CONCAT(`New booking added`) AS `Confirmation`;

END