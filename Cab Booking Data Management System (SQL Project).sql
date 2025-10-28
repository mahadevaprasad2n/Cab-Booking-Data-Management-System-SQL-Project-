CREATE DATABASE CAB_BOOKING_SYSTEM;
USE CAB_BOOKING_SYSTEM;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
INSERT INTO Customers VALUES (1, 'Alice', 'alice@example.com', '9876543210');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@example.com', '9123456780');
INSERT INTO Customers VALUES (3, 'Charlie', 'charlie@example.com', '9898989898');
INSERT INTO Customers VALUES (4, 'David', 'david@example.com', '9876501234');
INSERT INTO Customers VALUES (5, 'Eva', 'eva@example.com', '9123409876');
INSERT INTO Customers VALUES (6, 'Fiona', 'fiona@example.com', '9801234567');
INSERT INTO Customers VALUES (7, 'George', 'george@example.com', '9876512345');
INSERT INTO Customers VALUES (8, 'Hannah', 'hannah@example.com', '9123498765');
INSERT INTO Customers VALUES (9, 'Ian', 'ian@example.com', '9898098765');
INSERT INTO Customers VALUES (10, 'Julia', 'julia@example.com', '9876123456');

CREATE TABLE Drivers (
    Driver_ID INT PRIMARY KEY,
    Driver_Name VARCHAR(50),
    License_Number VARCHAR(50),
    Rating DECIMAL(2,1)
);
INSERT INTO Drivers VALUES (1, 'Adam', 'MH12AB1234', 4.5);
INSERT INTO Drivers VALUES (2, 'Ben', 'MH14XY5678', 4.2);
INSERT INTO Drivers VALUES (3, 'Clara', 'MH01CD9101', 3.8);
INSERT INTO Drivers VALUES (4, 'Diana', 'KA03EF3456', 4.7);
INSERT INTO Drivers VALUES (5, 'Ethan', 'DL09GH7890', 4.3);
INSERT INTO Drivers VALUES (6, 'Fay', 'TN07IJ2345', 4.1);
INSERT INTO Drivers VALUES (7, 'Gina', 'KA02KL6789', 4.6);
INSERT INTO Drivers VALUES (8, 'Harry', 'MH05MN1234', 3.9);
INSERT INTO Drivers VALUES (9, 'Ivy', 'DL04OP5678', 4.0);
INSERT INTO Drivers VALUES (10, 'Jake', 'TN03QR9012', 4.4);

CREATE TABLE Cabs (
    Cab_ID INT PRIMARY KEY,
    Cab_Type VARCHAR(20),   -- e.g., Sedan, SUV
    Registration_Number VARCHAR(20)
);
INSERT INTO Cabs VALUES (1, 'Sedan', 'KA03AB1234');
INSERT INTO Cabs VALUES (2, 'SUV', 'MH02CD5678');
INSERT INTO Cabs VALUES (3, 'Mini', 'DL04EF9101');
INSERT INTO Cabs VALUES (4, 'Sedan', 'TN07GH2345');
INSERT INTO Cabs VALUES (5, 'SUV', 'KA01IJ6789');
INSERT INTO Cabs VALUES (6, 'Mini', 'MH05KL1234');
INSERT INTO Cabs VALUES (7, 'Sedan', 'DL02MN5678');
INSERT INTO Cabs VALUES (8, 'SUV', 'TN04OP9012');
INSERT INTO Cabs VALUES (9, 'Mini', 'KA06QR3456');
INSERT INTO Cabs VALUES (10, 'Sedan', 'MH03ST7890');

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY,
    Customer_ID INT,
    Driver_ID INT,
    Cab_ID INT,
    Booking_Time DATETIME,
    Start_Time DATETIME,
    End_Time DATETIME,
    Trip_Status VARCHAR(20),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (Cab_ID) REFERENCES Cabs(Cab_ID)
);

INSERT INTO Bookings VALUES (1, 1, 1, 1, '2025-09-01 09:00:00', '2025-09-01 09:10:00', '2025-09-01 09:50:00', 'Completed');
INSERT INTO Bookings VALUES (11, 1, 1, 1, '2025-09-01 10:00:00', '2025-09-01 10:10:00', '2025-09-01 10:50:00', 'Completed');
INSERT INTO Bookings VALUES (2, 2, 2, 2, '2025-09-02 14:30:00', NULL, NULL, 'Cancelled');
INSERT INTO Bookings VALUES (3, 3, 3, 3, '2025-09-03 18:00:00', '2025-09-03 18:15:00', '2025-09-03 19:00:00', 'Completed');
INSERT INTO Bookings VALUES (4, 4, 4, 4, '2025-09-04 07:45:00', '2025-09-04 07:50:00', '2025-09-04 08:20:00', 'Completed');
INSERT INTO Bookings VALUES (5, 5, 5, 5, '2025-09-05 13:15:00', '2025-09-05 13:30:00', '2025-09-05 14:10:00', 'Completed');
INSERT INTO Bookings VALUES (6, 6, 6, 6, '2025-09-06 19:00:00', NULL, NULL, 'Cancelled');
INSERT INTO Bookings VALUES (7, 7, 7, 7, '2025-09-07 08:20:00', '2025-09-07 08:25:00', '2025-09-07 09:00:00', 'Completed');
INSERT INTO Bookings VALUES (8, 8, 8, 8, '2025-09-08 15:00:00', '2025-09-08 15:05:00', '2025-09-08 15:45:00', 'Completed');
INSERT INTO Bookings VALUES (9, 9, 9, 9, '2025-09-09 12:00:00', NULL, NULL, 'Cancelled');
INSERT INTO Bookings VALUES (10, 10, 10, 10, '2025-09-10 16:30:00', '2025-09-10 16:35:00', '2025-09-10 17:10:00', 'Completed');

CREATE TABLE TripDetails (
    Trip_ID INT PRIMARY KEY,
    Booking_ID INT,
    Pickup_Location VARCHAR(50),
    Dropoff_Location VARCHAR(50),
    Trip_Distance_KM INT,
    Trip_Duration_Min INT,
    Fare DECIMAL(10,2),
    FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
);
INSERT INTO TripDetails VALUES (1, 1, 'Downtown', 'Airport', 20, 40, 350.00);
INSERT INTO TripDetails VALUES (3, 3, 'City Center', 'Suburbs', 15, 45, 270.00);
INSERT INTO TripDetails VALUES (4, 4, 'Mall', 'Downtown', 10, 30, 150.00);
INSERT INTO TripDetails VALUES (5, 5, 'Suburbs', 'City Center', 18, 40, 320.00);
INSERT INTO TripDetails VALUES (7, 7, 'Airport', 'Downtown', 22, 35, 400.00);
INSERT INTO TripDetails VALUES (8, 8, 'City Center', 'Mall', 12, 40, 200.00);
INSERT INTO TripDetails VALUES (10, 10, 'Downtown', 'Suburbs', 14, 35, 250.00);

CREATE TABLE Feedback (
    Feedback_ID INT PRIMARY KEY,
    Trip_ID INT,
    Rating INT,  -- From 1 to 5
    Comments VARCHAR(255),
    FOREIGN KEY (Trip_ID) REFERENCES TripDetails(Trip_ID)
);
INSERT INTO Feedback VALUES (1, 1, 5, 'Great ride, clean cab!');
INSERT INTO Feedback VALUES (3, 3, 4, 'Driver was polite and on time.');
INSERT INTO Feedback VALUES (4, 4, 5, 'Smooth trip, no issues.');
INSERT INTO Feedback VALUES (5, 5, 4, 'Good service but car was a bit old.');
INSERT INTO Feedback VALUES (7, 7, 5, 'Excellent driver!');
INSERT INTO Feedback VALUES (8, 8, 4, 'Comfortable and timely.');
INSERT INTO Feedback VALUES (10, 10, 5, 'Loved the ride, will book again.');

SELECT 
    c.Customer_ID, 
    c.Customer_Name, 
    COUNT(b.Booking_ID) AS Completed_Bookings
FROM 
    Customers c
JOIN 
    Bookings b ON c.Customer_ID = b.Customer_ID
WHERE 
    b.Trip_Status = 'Completed'
GROUP BY 
    c.Customer_ID, c.Customer_Name
ORDER BY 
    Completed_Bookings DESC;

