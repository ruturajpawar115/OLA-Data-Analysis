CREATE DATABASE Ola;
USE Ola;

#1.Retrieve all successful bookings:
CREATE VIEW Successfull_Booking AS
SELECT * FROM bookings 
WHERE booking_Status = 'Success';

SELECT * FROM Successfull_Booking;

#2.Find the average ride distance for each vehicle type:
CREATE VIEW  ride_distance_for_each_vehicle AS
SELECT  Vehicle_type, AVG( Ride_Distance)
AS Avg_Ride_Distance FROM bookings
GROUP BY vehicle_type; 

SELECT * FROM ride_distance_for_each_vehicle;

#3.Get the total number of canceled rides by customers:
Create View canceled_rides_by_customers AS
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = 'Canceled by Customer';

SELECT * FROM canceled_rides_by_customers;

#4.List the top 5 customers who booked the highest number of rides:
CREATE VIEW top_5_customers AS
SELECT Customer_ID, COUNT(MyUnknownColumn) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

SELECT * FROM top_5_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues
CREATE VIEW rides_cancelled_by_drivers_PC_issues AS
SELECT COUNT(*) FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM rides_cancelled_by_drivers_PC_issues ;

#6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM bookings 
WHERE Vehicle_Type = 'Prime Sedan';
Use Ola;

SELECT * FROM Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Create View Payment_UPI AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM Payment_UPI;

#8. Find the average customer rating per vehicle type:
Create View Avg_Customer_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM Avg_Customer_Rating;

#9.Calculate the total booking value of rides completed successfully:
Create View total_successfull_ride_value AS
SELECT Booking_Status,SUM(Booking_Value) AS total_successful_ride_value
From bookings
WHERE Booking_Status = 'Success';

SELECT * FROM total_successfull_ride_value;
use Ola;

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_with_Reason AS
SELECT MyUnknownColumn, Incomplete_Rides, Incomplete_Rides_Reason
From bookings
WHERE Incomplete_Rides = 'Yes';

Select * from Incomplete_Rides_with_Reason;

#END OF QUERYS