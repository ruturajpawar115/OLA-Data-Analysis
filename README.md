# Ola Data Analysis Project

## Project Overview 

**Project Title**: Ola Data Analysis


This project involves the analysis of Ola ride data using SQL, Excel, and Power BI to uncover actionable insights. It focuses on identifying trends, optimizing operations, and enhancing decision-making processes through data-driven strategies.

## Objectives

- Analyze ride data to uncover revenue trends, customer behavior patterns, and the impact of cancellations on overall business performance.  
- Optimize vehicle utilization and operational efficiency through detailed data-driven insights.  
- Deliver actionable insights to stakeholders using interactive dashboards and comprehensive reports.

## Project Structure

- **Data/Raw_Data**: Contains the raw datasets used for analysis.  
- **SQL_Scripts**: Includes SQL queries for extracting booking data, calculating key metrics, and generating views for successful bookings, ride distances, cancellations, customer behavior, and payment methods.
### Queries
1. **Retrieve all successful bookings:**
   ```sql
   CREATE VIEW Successful_Booking AS
   SELECT * FROM bookings 
   WHERE booking_status = 'Success';

   SELECT * FROM Successful_Booking;
2. **Find the average ride distance for each vehicle type:**
   ```sql
   CREATE VIEW Ride_Distance_For_Each_Vehicle AS
   SELECT vehicle_type, AVG(ride_distance) AS Avg_Ride_Distance
   FROM bookings
   GROUP BY vehicle_type;

   SELECT * FROM Ride_Distance_For_Each_Vehicle;
3. **Get the total number of canceled rides by customers:**
   ```sql
   CREATE VIEW Canceled_Rides_By_Customers AS
   SELECT COUNT(*) AS total_canceled_by_customers
   FROM bookings 
   WHERE booking_status = 'Canceled by Customer';

   SELECT * FROM Canceled_Rides_By_Customers;
4. **List the top 5 customers who booked the highest number of rides:**
   ```sql
   CREATE VIEW Top_5_Customers AS
   SELECT customer_id, COUNT(ride_id) AS total_rides
   FROM bookings
   GROUP BY customer_id
   ORDER BY total_rides DESC
   LIMIT 5;

   SELECT * FROM Top_5_Customers;
5. **Get the number of rides canceled by drivers due to personal and car-related issues:**
   ```sql
   CREATE VIEW Rides_Canceled_By_Drivers_PC_Issues AS
   SELECT COUNT(*) AS total_canceled_by_drivers
   FROM bookings 
   WHERE canceled_reason = 'Personal & Car related issue';

   SELECT * FROM Rides_Canceled_By_Drivers_PC_Issues;
6. **Find the maximum and minimum driver ratings for Prime Sedan bookings:**
   ```sql
   CREATE VIEW Max_Min_Driver_Rating AS
   SELECT MAX(driver_ratings) AS max_rating,
   MIN(driver_ratings) AS min_rating
   FROM bookings 
   WHERE vehicle_type = 'Prime Sedan';

   SELECT * FROM Max_Min_Driver_Rating;
7. **Retrieve all rides where payment was made using UPI:**
   ```sql
   CREATE VIEW Payment_UPI AS
   SELECT * 
   FROM bookings
   WHERE payment_method = 'UPI';

   SELECT * FROM Payment_UPI;
8. **Find the average customer rating per vehicle type:**
   ```sql
   CREATE VIEW Avg_Customer_Rating AS
   SELECT vehicle_type, AVG(customer_rating) AS avg_customer_rating
   FROM bookings
   GROUP BY vehicle_type;

   SELECT * FROM Avg_Customer_Rating;
9. **Calculate the total booking value of rides completed successfully:**
    ```sql
    CREATE VIEW Total_Successful_Ride_Value AS
   SELECT SUM(booking_value) AS total_successful_ride_value
   FROM bookings
   WHERE booking_status = 'Success';

   SELECT * FROM Total_Successful_Ride_Value;
10. **List all incomplete rides along with the reason:**
    ```sql
    CREATE VIEW Incomplete_Rides_With_Reason AS
    SELECT ride_id, incomplete_ride_reason
    FROM bookings
    WHERE booking_status = 'Incomplete';

    SELECT * FROM Incomplete_Rides_With_Reason;
- **Excel_Files**: Contains Excel files used for detailed analysis and trend forecasting.  
- **PowerBI_Reports**: Interactive dashboards and visualizations showcasing key metrics.

## Findings

1. **Successful Bookings**:
- A significant number of successful bookings were identified, indicating peak demand times,and regions for targeted marketing and resource allocation.
- Example: SELECT COUNT(*) FROM bookings WHERE booking_status = 'Success';

2. **Ride Distance & Vehicle Type**:
- Certain vehicle types are associated with longer ride distances, allowing for more effective fleet management and optimized vehicle deployment.
- Example: SELECT vehicle_type, AVG(ride_distance) FROM bookings GROUP BY vehicle_type;

3. **Customer Behavior**:
- Identifying the top customers and their booking patterns highlighted opportunities for loyalty programs and personalized marketing strategies.
- Example: SELECT customer_id, COUNT(*) AS total_rides FROM bookings GROUP BY customer_id ORDER BY total_rides DESC LIMIT 5;

4. **Cancellations**:
- A high rate of cancellations by both customers and drivers, especially due to personal or car-related issues, indicating a need for improved customer service and driver support.
- Example: SELECT COUNT(*) FROM bookings WHERE booking_status = 'Canceled by Customer';

## Conclusion 

The project provided valuable insights into various aspects of Ola’s ride-hailing operations, highlighting areas for process optimization, customer satisfaction enhancement, and strategic planning. Through data analysis using SQL, Excel, and Power BI, actionable insights were generated to drive data-driven decisions across the business. ( in code formate )




