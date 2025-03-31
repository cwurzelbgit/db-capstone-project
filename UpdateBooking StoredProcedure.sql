CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(p_BookingID int, p_BookingDate DATE)
BEGIN

UPDATE bookings SET Date = (DATE(p_BookingDate)) WHERE BookingID = p_BookingID;
SELECT CONCAT(`Booking`, p_BookingID, `update`) AS `Confirmation`;

END