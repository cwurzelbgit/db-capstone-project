CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(p_BookingID INT)
BEGIN

DELETE FROM bookings WHERE BookingID = p_BookingID;
SELECT CONCAT(`Booking `, p_BookingID, ` cancelled`) AS `Confirmation`;

END