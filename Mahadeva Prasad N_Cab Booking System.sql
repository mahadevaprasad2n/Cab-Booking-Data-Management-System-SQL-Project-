USE CAB_BOOKING_SYSTEM;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    JoinDate DATE,
    TotalBookings INT,
    CancelledBookings INT
);
ALTER TABLE Customers
ADD OrdersPlaced INT,
ADD OrdersCompleted INT;
INSERT INTO Customers (CustomerID, Name, Email, Phone, JoinDate, OrdersPlaced, OrdersCompleted)
VALUES
(1, 'Customer1', 'customer1@example.com', '9876510001', '2021-07-04', 18, 18),
(2, 'Customer2', 'customer2@example.com', '9876510002', '2021-04-21', 5, 3),
(3, 'Customer3', 'customer3@example.com', '9876510003', '2022-03-18', 14, 0),
(4, 'Customer4', 'customer4@example.com', '9876510004', '2023-07-26', 19, 10),
(5, 'Customer5', 'customer5@example.com', '9876510005', '2022-11-22', 20, 5),
(6, 'Customer6', 'customer6@example.com', '9876510006', '2022-01-17', 7, 6),
(7, 'Customer7', 'customer7@example.com', '9876510007', '2022-07-16', 8, 4),
(8, 'Customer8', 'customer8@example.com', '9876510008', '2023-08-05', 22, 4),
(9, 'Customer9', 'customer9@example.com', '9876510009', '2022-10-20', 6, 3),
(10, 'Customer10', 'customer10@example.com', '9876510010', '2023-07-26', 10, 2),
(11, 'Customer11', 'customer11@example.com', '9876510011', '2023-01-30', 6, 1),
(12, 'Customer12', 'customer12@example.com', '9876510012', '2021-07-28', 8, 6),
(13, 'Customer13', 'customer13@example.com', '9876510013', '2023-11-09', 29, 12),
(14, 'Customer14', 'customer14@example.com', '9876510014', '2021-02-20', 6, 6),
(15, 'Customer15', 'customer15@example.com', '9876510015', '2021-10-08', 7, 4),
(16, 'Customer16', 'customer16@example.com', '9876510016', '2021-09-30', 21, 9),
(17, 'Customer17', 'customer17@example.com', '9876510017', '2022-08-08', 23, 22),
(18, 'Customer18', 'customer18@example.com', '9876510018', '2021-10-12', 18, 17),
(19, 'Customer19', 'customer19@example.com', '9876510019', '2022-09-12', 18, 17),
(20, 'Customer20', 'customer20@example.com', '9876510020', '2021-06-19', 22, 15),
(21, 'Customer21', 'customer21@example.com', '9876510021', '2022-06-28', 24, 7),
(22, 'Customer22', 'customer22@example.com', '9876510022', '2023-06-13', 28, 23),
(23, 'Customer23', 'customer23@example.com', '9876510023', '2022-02-20', 9, 9),
(24, 'Customer24', 'customer24@example.com', '9876510024', '2022-02-18', 12, 6),
(25, 'Customer25', 'customer25@example.com', '9876510025', '2022-02-17', 20, 18),
(26, 'Customer26', 'customer26@example.com', '9876510026', '2022-11-21', 25, 11),
(27, 'Customer27', 'customer27@example.com', '9876510027', '2021-12-29', 24, 21),
(28, 'Customer28', 'customer28@example.com', '9876510028', '2023-07-28', 18, 11),
(29, 'Customer29', 'customer29@example.com', '9876510029', '2021-10-31', 29, 14),
(30, 'Customer30', 'customer30@example.com', '9876510030', '2023-10-18', 29, 12),
(31, 'Customer31', 'customer31@example.com', '9876510031', '2021-03-04', 28, 26),
(32, 'Customer32', 'customer32@example.com', '9876510032', '2023-07-28', 26, 22),
(33, 'Customer33', 'customer33@example.com', '9876510033', '2022-05-19', 7, 0),
(34, 'Customer34', 'customer34@example.com', '9876510034', '2021-01-06', 9, 6),
(35, 'Customer35', 'customer35@example.com', '9876510035', '2022-03-30', 7, 6),
(36, 'Customer36', 'customer36@example.com', '9876510036', '2023-11-15', 6, 5),
(37, 'Customer37', 'customer37@example.com', '9876510037', '2021-12-22', 12, 8),
(38, 'Customer38', 'customer38@example.com', '9876510038', '2022-12-25', 25, 2),
(39, 'Customer39', 'customer39@example.com', '9876510039', '2022-08-01', 23, 9),
(40, 'Customer40', 'customer40@example.com', '9876510040', '2022-04-30', 10, 5),
(41, 'Customer41', 'customer41@example.com', '9876510041', '2023-09-25', 25, 6),
(42, 'Customer42', 'customer42@example.com', '9876510042', '2021-04-10', 27, 12),
(43, 'Customer43', 'customer43@example.com', '9876510043', '2021-02-08', 19, 12),
(44, 'Customer44', 'customer44@example.com', '9876510044', '2021-08-07', 22, 15),
(45, 'Customer45', 'customer45@example.com', '9876510045', '2023-08-11', 24, 11),
(46, 'Customer46', 'customer46@example.com', '9876510046', '2022-06-01', 29, 5),
(47, 'Customer47', 'customer47@example.com', '9876510047', '2022-06-03', 18, 3),
(48, 'Customer48', 'customer48@example.com', '9876510048', '2022-01-08', 13, 5),
(49, 'Customer49', 'customer49@example.com', '9876510049', '2021-03-04', 30, 1),
(50, 'Customer50', 'customer50@example.com', '9876510050', '2021-07-13', 25, 12);

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Name VARCHAR(100),
    LicenseNo VARCHAR(50) UNIQUE,
    Rating DECIMAL(2,1),
    JoinDate DATE,
    TotalTrips INT,
    CancelledTrips INT
);
drop table if exists drivers;
INSERT INTO Drivers VALUES (101, 'Driver101', 'DL-00101', 4.1, '2021-08-14', 111, 13);
INSERT INTO Drivers (DriverID, Name, LicenseNo, Rating, JoinDate, TotalTrips, CancelledTrips)
VALUES
(102, 'Driver102', 'DL-00102', 4.7, '2021-04-22', 122, 21),
(103, 'Driver103', 'DL-00103', 4.7, '2022-01-15', 229, 45),
(104, 'Driver104', 'DL-00104', 5.0, '2022-08-25', 101, 7),
(105, 'Driver105', 'DL-00105', 4.4, '2022-07-24', 139, 24),
(106, 'Driver106', 'DL-00106', 3.4, '2021-05-05', 280, 32),
(107, 'Driver107', 'DL-00107', 2.6, '2022-10-17', 107, 17),
(108, 'Driver108', 'DL-00108', 3.2, '2021-01-03', 288, 13),
(109, 'Driver109', 'DL-00109', 3.2, '2021-09-10', 191, 8),
(110, 'Driver110', 'DL-00110', 3.6, '2023-04-03', 213, 41),
(111, 'Driver111', 'DL-00111', 3.5, '2021-12-19', 84, 13),
(112, 'Driver112', 'DL-00112', 2.6, '2022-01-15', 121, 11),
(113, 'Driver113', 'DL-00113', 4.3, '2021-06-08', 262, 27),
(114, 'Driver114', 'DL-00114', 4.0, '2021-03-02', 222, 32),
(115, 'Driver115', 'DL-00115', 2.7, '2021-04-13', 133, 22),
(116, 'Driver116', 'DL-00116', 3.0, '2023-01-12', 105, 2),
(117, 'Driver117', 'DL-00117', 3.1, '2023-11-26', 203, 17),
(118, 'Driver118', 'DL-00118', 4.8, '2021-06-10', 295, 10),
(119, 'Driver119', 'DL-00119', 4.6, '2023-06-16', 229, 9),
(120, 'Driver120', 'DL-00120', 3.0, '2023-08-16', 250, 44),
(121, 'Driver121', 'DL-00121', 3.9, '2021-04-10', 246, 19),
(122, 'Driver122', 'DL-00122', 3.9, '2021-05-06', 250, 25),
(123, 'Driver123', 'DL-00123', 2.6, '2023-03-18', 175, 12),
(124, 'Driver124', 'DL-00124', 3.7, '2022-09-27', 100, 15),
(125, 'Driver125', 'DL-00125', 2.7, '2022-04-25', 217, 34),
(126, 'Driver126', 'DL-00126', 3.6, '2023-01-01', 113, 5),
(127, 'Driver127', 'DL-00127', 4.2, '2023-07-06', 67, 10),
(128, 'Driver128', 'DL-00128', 3.1, '2022-08-28', 270, 53),
(129, 'Driver129', 'DL-00129', 4.6, '2021-03-04', 77, 10),
(130, 'Driver130', 'DL-00130', 4.2, '2023-01-06', 119, 8),
(131, 'Driver131', 'DL-00131', 4.9, '2021-04-13', 86, 12),
(132, 'Driver132', 'DL-00132', 2.6, '2023-12-20', 80, 3),
(133, 'Driver133', 'DL-00133', 2.8, '2023-05-22', 102, 10),
(134, 'Driver134', 'DL-00134', 2.9, '2023-02-08', 244, 12),
(135, 'Driver135', 'DL-00135', 3.7, '2022-12-11', 71, 7),
(136, 'Driver136', 'DL-00136', 2.9, '2021-12-16', 292, 37),
(137, 'Driver137', 'DL-00137', 3.9, '2023-08-06', 154, 13),
(138, 'Driver138', 'DL-00138', 4.0, '2023-09-19', 140, 1),
(139, 'Driver139', 'DL-00139', 3.7, '2023-07-05', 71, 10),
(140, 'Driver140', 'DL-00140', 4.9, '2023-01-11', 168, 2),
(141, 'Driver141', 'DL-00141', 4.5, '2022-11-03', 220, 14),
(142, 'Driver142', 'DL-00142', 3.5, '2022-04-22', 230, 42),
(143, 'Driver143', 'DL-00143', 4.2, '2021-10-21', 298, 32),
(144, 'Driver144', 'DL-00144', 5.0, '2023-02-26', 102, 14),
(145, 'Driver145', 'DL-00145', 4.5, '2022-11-02', 73, 4),
(146, 'Driver146', 'DL-00146', 4.6, '2022-12-31', 211, 32),
(147, 'Driver147', 'DL-00147', 4.5, '2021-03-09', 63, 6),
(148, 'Driver148', 'DL-00148', 4.3, '2022-02-09', 294, 40),
(149, 'Driver149', 'DL-00149', 3.8, '2022-02-06', 186, 13),
(150, 'Driver150', 'DL-00150', 3.5, '2023-09-12', 281, 23);

CREATE TABLE Cabs (
    CabID INT PRIMARY KEY,
    DriverID INT,
    CabType VARCHAR(50),
    Model VARCHAR(50),
    PlateNo VARCHAR(20) UNIQUE,
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);
INSERT INTO Cabs (CabID, DriverID, CabType, Model, PlateNo)
VALUES
(201, 101, 'Sedan', 'Toyota Innova', 'MH12AB6500'),
(202, 102, 'Sedan', 'Honda City', 'MH12CD8053'),
(203, 103, 'SUV', 'Kia Seltos', 'MH12GH9116'),
(204, 104, 'Hatchback', 'Kia Seltos', 'MH12EF6338'),
(205, 105, 'SUV', 'Honda City', 'MH12GH4772'),
(206, 106, 'Hatchback', 'Toyota Innova', 'MH12AB2650'),
(207, 107, 'SUV', 'Toyota Innova', 'MH12GH5962'),
(208, 108, 'SUV', 'Hyundai Verna', 'MH12GH7372'),
(209, 109, 'Sedan', 'Tata Harrier', 'MH12GH8150'),
(210, 110, 'Hatchback', 'Tata Harrier', 'MH12CD6963'),
(211, 111, 'SUV', 'Hyundai Verna', 'MH12CD3720'),
(212, 112, 'SUV', 'Tata Harrier', 'MH12AB1191'),
(213, 113, 'SUV', 'Hyundai Verna', 'MH12CD5395'),
(214, 114, 'Hatchback', 'Maruti Swift', 'MH12EF4482'),
(215, 115, 'Sedan', 'Toyota Innova', 'MH12IJ8540'),
(216, 116, 'Hatchback', 'Hyundai Verna', 'MH12EF8914'),
(217, 117, 'Sedan', 'Toyota Innova', 'MH12GH1514'),
(218, 118, 'SUV', 'Tata Harrier', 'MH12GH5104'),
(219, 119, 'Sedan', 'Hyundai Verna', 'MH12IJ8825'),
(220, 120, 'SUV', 'Kia Seltos', 'MH12EF7721'),
(221, 121, 'Hatchback', 'Maruti Swift', 'MH12IJ2559'),
(222, 122, 'Hatchback', 'Kia Seltos', 'MH12EF9234'),
(223, 123, 'Sedan', 'Honda City', 'MH12IJ3173'),
(224, 124, 'Sedan', 'Hyundai Verna', 'MH12EF3855'),
(225, 125, 'SUV', 'Honda City', 'MH12EF6807'),
(226, 126, 'SUV', 'Maruti Swift', 'MH12AB3191'),
(227, 127, 'SUV', 'Maruti Swift', 'MH12GH7588'),
(228, 128, 'Hatchback', 'Hyundai Verna', 'MH12GH4729'),
(229, 129, 'SUV', 'Honda City', 'MH12EF4496'),
(230, 130, 'Hatchback', 'Toyota Innova', 'MH12AB2269'),
(231, 131, 'Sedan', 'Honda City', 'MH12GH3899'),
(232, 132, 'SUV', 'Kia Seltos', 'MH12EF1786'),
(233, 133, 'SUV', 'Kia Seltos', 'MH12IJ4071'),
(234, 134, 'Sedan', 'Tata Harrier', 'MH12AB2751'),
(235, 135, 'Sedan', 'Kia Seltos', 'MH12GH8568'),
(236, 136, 'SUV', 'Toyota Innova', 'MH12CD1261'),
(237, 137, 'Sedan', 'Toyota Innova', 'MH12EF4132'),
(238, 138, 'Hatchback', 'Hyundai Verna', 'MH12AB8221'),
(239, 139, 'Hatchback', 'Toyota Innova', 'MH12CD1350'),
(240, 140, 'SUV', 'Honda City', 'MH12AB5822'),
(241, 141, 'Sedan', 'Maruti Swift', 'MH12CD4672'),
(242, 142, 'Hatchback', 'Tata Harrier', 'MH12IJ4664'),
(243, 143, 'SUV', 'Maruti Swift', 'MH12EF6401'),
(244, 144, 'Hatchback', 'Honda City', 'MH12EF7591'),
(245, 145, 'SUV', 'Honda City', 'MH12IJ8168'),
(246, 146, 'SUV', 'Hyundai Verna', 'MH12IJ1349'),
(247, 147, 'SUV', 'Honda City', 'MH12AB5366'),
(248, 148, 'Hatchback', 'Maruti Swift', 'MH12IJ3108'),
(249, 149, 'Sedan', 'Honda City', 'MH12GH3042'),
(250, 150, 'Sedan', 'Hyundai Verna', 'MH12AB5211');

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    DriverID INT,
    CabID INT,
    PickupLocation VARCHAR(100),
    DropoffLocation VARCHAR(100),
    BookingDateTime DATETIME,
    Status VARCHAR(20),
    CancellationReason VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (CabID) REFERENCES Cabs(CabID)
);
INSERT INTO Bookings (BookingID, CustomerID, DriverID, CabID, PickupLocation, DropoffLocation, BookingDateTime, Status, CancellationReason)
VALUES
(301, 35, 108, 240, 'Bandra', 'Thane', '2021-03-15 21:19:45', 'Completed', NULL),
(302, 30, 138, 250, 'Dadar', 'Andheri', '2023-04-27 05:21:42', 'Cancelled', 'None'),
(303, 32, 139, 225, 'Powai', 'Bandra', '2022-11-20 12:33:14', 'Completed', NULL),
(304, 27, 140, 243, 'Andheri', 'Bandra', '2022-06-15 14:12:08', 'Cancelled', 'High fare'),
(305, 37, 110, 220, 'Colaba', 'Powai', '2023-06-18 11:14:42', 'Completed', NULL),
(306, 44, 142, 215, 'Borivali', 'Goregaon', '2021-08-06 22:27:07', 'Cancelled', 'Traffic issue'),
(307, 48, 104, 204, 'Thane', 'Bandra', '2021-06-13 11:22:00', 'Completed', NULL),
(308, 25, 105, 217, 'Powai', 'Colaba', '2023-01-11 01:05:19', 'Completed', NULL),
(309, 34, 130, 201, 'Goregaon', 'Colaba', '2021-06-21 07:52:07', 'Completed', NULL),
(310, 27, 102, 221, 'Powai', 'Goregaon', '2021-12-06 02:01:15', 'Completed', NULL),
(311, 13, 141, 223, 'Colaba', 'Powai', '2021-12-16 19:28:20', 'Completed', NULL),
(312, 41, 141, 204, 'Borivali', 'Andheri', '2022-05-18 20:47:04', 'Completed', NULL),
(313, 37, 123, 213, 'Andheri', 'Dadar', '2023-10-13 23:03:15', 'Cancelled', 'None'),
(314, 15, 147, 240, 'Powai', 'Thane', '2022-01-13 17:15:25', 'Completed', NULL),
(315, 31, 116, 214, 'Bandra', 'Goregaon', '2023-10-28 04:34:40', 'Completed', NULL),
(316, 2, 139, 210, 'Bandra', 'Goregaon', '2022-06-06 01:50:11', 'Completed', NULL),
(317, 2, 145, 249, 'Andheri', 'Powai', '2021-04-11 10:04:15', 'Cancelled', 'None'),
(318, 43, 144, 223, 'Goregaon', 'Thane', '2021-05-04 13:55:08', 'Completed', NULL),
(319, 25, 120, 204, 'Colaba', 'Borivali', '2023-03-23 08:23:06', 'Completed', NULL),
(320, 28, 111, 241, 'Dadar', 'Colaba', '2022-11-29 19:57:37', 'Completed', NULL),
(321, 28, 121, 232, 'Goregaon', 'Thane', '2023-04-21 11:32:11', 'Completed', NULL),
(322, 44, 147, 231, 'Colaba', 'Dadar', '2021-10-19 14:07:24', 'Completed', NULL),
(323, 8, 107, 212, 'Powai', 'Dadar', '2021-02-14 21:46:42', 'Completed', NULL),
(324, 41, 105, 237, 'Bandra', 'Colaba', '2022-10-29 20:35:00', 'Cancelled', 'Driver unavailable'),
(325, 19, 131, 207, 'Bandra', 'Borivali', '2023-08-07 12:30:34', 'Completed', NULL),
(326, 40, 109, 244, 'Goregaon', 'Bandra', '2022-09-06 09:25:25', 'Completed', NULL),
(327, 38, 144, 242, 'Dadar', 'Powai', '2022-06-08 22:17:22', 'Cancelled', 'High fare'),
(328, 26, 131, 201, 'Borivali', 'Goregaon', '2022-02-21 01:35:33', 'Cancelled', 'Traffic issue'),
(329, 43, 130, 245, 'Powai', 'Bandra', '2023-02-13 07:51:00', 'Completed', NULL),
(330, 37, 149, 205, 'Goregaon', 'Colaba', '2023-07-10 05:02:48', 'Cancelled', 'Driver delay'),
(331, 45, 101, 226, 'Dadar', 'Powai', '2022-11-20 17:55:13', 'Cancelled', 'Driver delay'),
(332, 17, 146, 231, 'Thane', 'Goregaon', '2023-05-29 07:09:19', 'Cancelled', 'Change of plan'),
(333, 43, 121, 214, 'Goregaon', 'Borivali', '2021-03-04 01:34:13', 'Cancelled', 'Driver unavailable'),
(334, 1, 135, 229, 'Borivali', 'Thane', '2023-01-02 00:37:55', 'Cancelled', 'Driver unavailable'),
(335, 42, 148, 214, 'Bandra', 'Dadar', '2022-07-05 15:26:57', 'Cancelled', 'None'),
(336, 20, 146, 218, 'Dadar', 'Powai', '2021-05-19 18:19:18', 'Completed', NULL),
(337, 1, 109, 212, 'Powai', 'Colaba', '2021-07-13 05:41:07', 'Completed', NULL),
(338, 11, 149, 249, 'Andheri', 'Goregaon', '2022-09-11 23:16:37', 'Cancelled', 'Traffic issue'),
(339, 11, 101, 249, 'Andheri', 'Goregaon', '2021-03-02 12:00:58', 'Cancelled', 'Traffic issue'),
(340, 11, 115, 209, 'Goregaon', 'Borivali', '2023-04-09 18:33:56', 'Completed', NULL),
(341, 44, 133, 231, 'Bandra', 'Goregaon', '2023-02-08 16:52:22', 'Cancelled', 'Change of plan'),
(342, 6, 123, 234, 'Colaba', 'Andheri', '2022-10-26 13:52:39', 'Completed', NULL),
(343, 46, 115, 231, 'Thane', 'Dadar', '2023-12-08 21:26:54', 'Cancelled', 'Change of plan'),
(344, 22, 138, 201, 'Powai', 'Colaba', '2022-05-05 20:09:12', 'Cancelled', 'Driver unavailable'),
(345, 26, 109, 216, 'Powai', 'Colaba', '2021-11-08 21:32:48', 'Cancelled', 'Driver unavailable'),
(346, 44, 129, 222, 'Borivali', 'Dadar', '2023-06-24 22:41:51', 'Cancelled', 'Driver delay'),
(347, 33, 116, 250, 'Bandra', 'Dadar', '2023-04-11 06:17:09', 'Completed', NULL),
(348, 41, 118, 222, 'Borivali', 'Bandra', '2021-02-10 16:00:21', 'Cancelled', 'Traffic issue'),
(349, 26, 135, 233, 'Powai', 'Thane', '2022-03-22 05:03:56', 'Cancelled', 'Traffic issue'),
(350, 34, 120, 223, 'Dadar', 'Goregaon', '2023-10-06 00:05:35', 'Cancelled', 'High fare');
CREATE TABLE TripDetails (
    TripID INT PRIMARY KEY,
    BookingID INT ,
    StartTime DATETIME,
    EndTime DATETIME,
    Distance DECIMAL(6,2),
    FareAmount DECIMAL(8,2),
    WaitingTime INT,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
drop table if exists Tripdetails;
INSERT INTO TripDetails (TripID, BookingID, StartTime, EndTime, Distance, FareAmount, WaitingTime)
VALUES
(401, 343, '2021-10-17 19:01:49', '2021-10-17 19:30:49', 18.73, 406.00, 10),
(402, 301, '2022-05-22 02:55:58', '2022-05-22 03:46:58', 24.25, 408.03, 1),
(403, 346, '2021-02-19 17:14:10', '2021-02-19 17:56:10', 15.32, 344.36, 2),
(404, 303, '2023-06-22 16:07:13', '2023-06-22 16:37:13', 17.96, 286.02, 5),
(405, 323, '2022-08-27 21:34:22', '2022-08-27 22:14:22', 20.05, 400.27, 3),
(406, 323, '2021-07-01 05:09:37', '2021-07-01 05:48:37', 7.80, 189.07, 5),
(407, 307, '2021-03-10 08:49:38', '2021-03-10 09:18:38', 22.27, 529.27, 6),
(408, 311, '2021-03-03 05:02:56', '2021-03-03 05:52:56', 6.75, 136.75, 7),
(409, 325, '2021-11-29 10:52:28', '2021-11-29 11:30:28', 24.53, 456.76, 15),
(410, 312, '2022-02-05 23:53:46', '2022-02-06 00:18:46', 11.27, 233.59, 11),
(411, 344, '2022-03-13 19:54:01', '2022-03-13 20:47:01', 11.07, 266.35, 8),
(412, 326, '2021-07-31 09:08:21', '2021-07-31 09:19:21', 24.84, 582.03, 1),
(413, 319, '2021-06-17 07:10:10', '2021-06-17 07:33:10', 3.19, 64.54, 4),
(414, 322, '2022-12-11 07:03:26', '2022-12-11 07:40:26', 11.97, 236.84, 6),
(415, 334, '2022-01-29 10:42:27', '2022-01-29 11:01:27', 14.43, 242.23, 9),
(416, 309, '2022-01-22 04:23:31', '2022-01-22 05:02:31', 15.26, 261.99, 7),
(417, 307, '2022-09-20 02:21:03', '2022-09-20 02:53:03', 24.14, 601.69, 0),
(418, 314, '2022-08-26 02:33:58', '2022-08-26 03:15:58', 4.45, 89.27, 4),
(419, 321, '2023-02-04 04:09:23', '2023-02-04 04:32:23', 5.54, 104.44, 12),
(420, 347, '2021-02-25 00:41:35', '2021-02-25 00:56:35', 20.22, 373.87, 9),
(421, 331, '2023-03-27 02:27:09', '2023-03-27 02:59:09', 13.65, 210.04, 2),
(422, 327, '2021-05-21 18:37:20', '2021-05-21 19:03:20', 6.69, 143.86, 15),
(423, 348, '2023-12-25 05:06:23', '2023-12-25 05:35:23', 23.91, 559.34, 11),
(424, 306, '2023-02-05 11:01:11', '2023-02-05 11:11:11', 9.93, 198.02, 12),
(425, 332, '2021-05-11 23:20:41', '2021-05-11 23:34:41', 8.96, 202.02, 6),
(426, 321, '2021-11-01 09:47:41', '2021-11-01 10:18:41', 9.90, 237.70, 9),
(427, 339, '2022-06-25 12:29:24', '2022-06-25 13:03:24', 22.29, 411.32, 2),
(428, 310, '2023-10-22 04:37:31', '2023-10-22 05:24:31', 18.55, 330.52, 12),
(429, 336, '2022-12-15 03:33:27', '2022-12-15 04:28:27', 18.06, 335.36, 11),
(430, 321, '2023-01-26 08:16:08', '2023-01-26 08:26:08', 23.17, 348.80, 6),
(431, 325, '2023-01-23 22:22:40', '2023-01-23 22:46:40', 10.20, 181.96, 2),
(432, 322, '2021-01-13 12:05:27', '2021-01-13 12:39:27', 16.38, 267.08, 9),
(433, 348, '2021-11-29 14:32:23', '2021-11-29 14:58:23', 6.12, 128.45, 1),
(434, 301, '2022-10-09 16:01:58', '2022-10-09 16:13:58', 10.08, 162.21, 11),
(435, 302, '2023-09-09 08:12:03', '2023-09-09 08:29:03', 20.79, 348.55, 1),
(436, 344, '2023-05-18 23:59:05', '2023-05-19 00:34:05', 19.99, 460.78, 12),
(437, 342, '2021-11-10 17:14:46', '2021-11-10 18:04:46', 17.69, 280.61, 4),
(438, 313, '2023-04-17 13:35:47', '2023-04-17 14:35:47', 9.48, 150.81, 10),
(439, 304, '2022-06-11 12:54:34', '2022-06-11 13:44:34', 12.05, 242.49, 15),
(440, 341, '2023-11-11 10:39:00', '2023-11-11 11:21:00', 13.26, 251.70, 5),
(441, 317, '2023-02-15 07:19:25', '2023-02-15 08:04:25', 15.57, 338.27, 6),
(442, 304, '2023-05-21 10:11:42', '2023-05-21 10:31:42', 15.62, 372.71, 7),
(443, 329, '2021-01-27 04:46:39', '2021-01-27 05:36:39', 20.29, 376.47, 6),
(444, 330, '2021-02-13 07:18:09', '2021-02-13 07:38:09', 17.09, 314.49, 0),
(445, 337, '2022-09-26 04:44:23', '2022-09-26 05:22:23', 5.15, 86.80, 6),
(446, 322, '2021-01-14 08:58:08', '2021-01-14 09:17:08', 23.15, 442.24, 3),
(447, 308, '2023-05-16 19:41:27', '2023-05-16 20:06:27', 21.07, 378.53, 5),
(448, 326, '2022-11-14 07:43:52', '2022-11-14 08:38:52', 20.95, 490.24, 14),
(449, 350, '2021-11-06 02:30:16', '2021-11-06 02:48:16', 15.11, 377.54, 3),
(450, 319, '2022-08-26 07:11:33', '2022-08-26 08:04:33', 8.59, 185.65, 15);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    BookingID INT,
    CustomerID INT,
    DriverID INT,
    Rating DECIMAL(2,1),
    Comments TEXT,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

INSERT INTO Feedback VALUES (501, 340, 7, 123, 4.7, 'Comfortable ride');
INSERT INTO Feedback (FeedbackID, BookingID, CustomerID, DriverID, Rating, Comments)
VALUES
(502, 305, 15, 119, 4.1, 'Great ride'),
(503, 333, 16, 123, 4.6, 'Quick trip'),
(504, 322, 21, 129, 3.7, 'Quick trip'),
(505, 326, 14, 118, 4.6, 'Quick trip'),
(506, 346, 48, 128, 4.5, 'High fare'),
(507, 316, 41, 146, 1.7, 'Quick trip'),
(508, 306, 11, 106, 3.2, 'Very polite driver'),
(509, 318, 14, 139, 4.8, 'Quick trip'),
(510, 317, 9, 150, 4.5, 'Quick trip'),
(511, 303, 28, 105, 2.2, 'Comfortable ride'),
(512, 306, 8, 140, 3.0, 'Quick trip'),
(513, 333, 16, 104, 1.6, 'Great ride'),
(514, 348, 10, 124, 4.0, 'Driver never arrived'),
(515, 322, 46, 143, 1.7, 'Comfortable ride'),
(516, 332, 30, 103, 3.7, 'Quick trip'),
(517, 350, 16, 145, 2.9, 'Driver never arrived'),
(518, 336, 29, 120, 1.5, 'Very polite driver'),
(519, 312, 43, 137, 4.4, 'Driver never arrived'),
(520, 339, 34, 136, 4.3, 'Great ride'),
(521, 341, 11, 106, 2.9, 'High fare'),
(522, 349, 1, 115, 2.7, 'Driver never arrived'),
(523, 344, 23, 127, 2.6, 'Very polite driver'),
(524, 334, 19, 129, 4.6, 'Very polite driver'),
(525, 318, 31, 135, 2.1, 'Quick trip'),
(526, 332, 34, 137, 3.3, 'Driver never arrived'),
(527, 327, 11, 149, 3.0, 'Very polite driver'),
(528, 329, 12, 150, 1.4, 'Very polite driver'),
(529, 336, 14, 132, 3.6, 'High fare'),
(530, 332, 22, 147, 2.2, 'Comfortable ride'),
(531, 320, 35, 105, 1.3, 'High fare'),
(532, 317, 2, 113, 2.8, 'Very polite driver'),
(533, 349, 41, 147, 2.5, 'Quick trip'),
(534, 301, 47, 117, 4.2, 'Driver was late'),
(535, 328, 6, 106, 4.8, 'Driver was late'),
(536, 308, 8, 136, 3.3, 'Great ride'),
(537, 305, 40, 127, 4.7, 'Comfortable ride'),
(538, 337, 31, 137, 3.4, 'Great ride'),
(539, 322, 47, 139, 1.8, 'Driver was late'),
(540, 328, 32, 113, 3.3, 'Driver was late'),
(541, 303, 5, 118, 3.6, 'Great ride'),
(542, 344, 2, 131, 1.2, 'Great ride'),
(543, 305, 37, 111, 4.6, 'Comfortable ride'),
(544, 330, 18, 108, 4.3, 'Driver never arrived'),
(545, 313, 41, 145, 2.8, 'Driver never arrived'),
(546, 319, 29, 144, 1.2, 'Comfortable ride'),
(547, 305, 38, 149, 2.7, 'High fare'),
(548, 329, 6, 128, 4.9, 'Great ride'),
(549, 308, 41, 150, 1.2, 'High fare'),
(550, 320, 5, 132, 3.4, 'Great ride');
 -- Identify customers who have completed the most bookings. What insights can you  draw about their behavior? 
SELECT c.CustomerID,c.Name,COUNT(b.BookingID) AS CompletedBookings
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
WHERE b.Status = 'Completed'
GROUP BY c.CustomerID, c.Name
ORDER BY CompletedBookings DESC;

-- Find customers who have canceled more than 30% of their total bookings. What could be the reason for frequent cancellations?
SELECT c.CustomerID,c.Name,
    COUNT(b.BookingID) AS Total_Bookings,
    SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Bookings,
    ROUND(SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(b.BookingID), 2) AS Cancel_Percentage
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING (SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) * 1.0 / COUNT(b.BookingID)) > 0.30
ORDER BY Cancel_Percentage DESC;

-- Determine the busiest day of the week for bookings. How can the company optimize cab availability on peak days? 
SELECT DAYNAME(BookingDateTime) AS DayOfWeek,COUNT(BookingID) AS Total_Bookings
FROM Bookings
GROUP BY DAYNAME(BookingDateTime)
ORDER BY Total_Bookings DESC;

-- Identify drivers who have received an average rating below 3.0 in the past three  months. What strategies can be implemented to improve their performance? 
SELECT d.DriverID,d.Name AS DriverName,
    ROUND(AVG(f.Rating), 2) AS Avg_Rating
FROM Drivers d
JOIN Feedback f ON d.DriverID = f.DriverID
JOIN Bookings b ON f.BookingID = b.BookingID
WHERE b.BookingDateTime >= '2023-08-01'
GROUP BY d.DriverID, d.Name
HAVING AVG(f.Rating) < 3.0
ORDER BY Avg_Rating ASC;
SELECT d.DriverID,d.Name AS DriverName,
    ROUND(AVG(f.Rating), 2) AS Avg_Rating
FROM Drivers d
JOIN Feedback f ON d.DriverID = f.DriverID
JOIN Bookings b ON f.BookingID = b.BookingID
WHERE b.BookingDateTime >= '2023-08-01'
GROUP BY d.DriverID, d.Name
HAVING AVG(f.Rating) < 3.0
ORDER BY Avg_Rating ASC;

 -- Find the top 5 drivers who have completed the longest trips in terms of distance. What does this say about their working patterns? 
SELECT d.DriverID,d.Name AS DriverName,
    ROUND(SUM(t.Distance), 2) AS Total_Distance,
    COUNT(t.TripID) AS Total_Trips
FROM TripDetails t
JOIN Bookings b ON t.BookingID = b.BookingID
JOIN Drivers d ON b.DriverID = d.DriverID
WHERE b.Status = 'Completed'
GROUP BY d.DriverID, d.Name
ORDER BY Total_Distance DESC LIMIT 5;

-- Identify drivers with a high percentage of canceled trips. Could this indicate driver  unreliability?
SELECT d.DriverID,d.Name AS DriverName,
    COUNT(b.BookingID) AS Total_Bookings,
    SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Bookings,
    ROUND((SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(b.BookingID)), 2) AS Cancel_Percentage
FROM Drivers d
JOIN Bookings b ON d.DriverID = b.DriverID
GROUP BY d.DriverID, d.Name
HAVING (SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(b.BookingID)) > 20
ORDER BY Cancel_Percentage DESC;

-- Calculate the total revenue generated by completed bookings in the last 6 months. How has the revenue trend changed over time?
SELECT DATE_FORMAT(t.EndTime, '%Y-%m') AS Month,
    ROUND(SUM(t.FareAmount), 2) AS Total_Revenue
FROM TripDetails t
JOIN Bookings b ON t.BookingID = b.BookingID
WHERE b.Status = 'Completed'AND t.EndTime BETWEEN '2023-05-01' AND '2023-10-31'
GROUP BY DATE_FORMAT(t.EndTime, '%Y-%m')
ORDER BY Month;

-- Identify the top 3 most frequently traveled routes based on PickupLocation and DropoffLocation. Should the company allocate more cabs to these routes? 
SELECT CONCAT(PickupLocation, ' → ', DropoffLocation) AS Route,
    COUNT(*) AS Total_Trips
FROM Bookings
WHERE Status = 'Completed'
GROUP BY PickupLocation, DropoffLocation
ORDER BY Total_Trips DESC LIMIT 3;

-- Determine if higher-rated drivers tend to complete more trips and earn higher fares. Is there a direct correlation between driver ratings and earnings? 
SELECT d.DriverID,d.Name AS DriverName,d.Rating AS Driver_Rating,
    COUNT(t.TripID) AS Total_Trips,
    ROUND(SUM(t.FareAmount), 2) AS Total_Earnings,
    ROUND(AVG(t.FareAmount), 2) AS Avg_Fare_Per_Trip
FROM Drivers d
JOIN Bookings b ON d.DriverID = b.DriverID
JOIN TripDetails t ON b.BookingID = t.BookingID
WHERE b.Status = 'Completed'
GROUP BY d.DriverID, d.Name, d.Rating
ORDER BY d.Rating DESC;

 -- Analyze the average waiting time (difference between booking time and trip start time) for different pickup locations. How can this be optimized to reduce delays? 
SELECT b.PickupLocation,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, b.BookingDateTime, t.StartTime)), 2) AS Avg_Waiting_Time_Minutes,
    COUNT(b.BookingID) AS Total_Trips
FROM Bookings b
JOIN TripDetails t ON b.BookingID = t.BookingID
WHERE b.Status = 'Completed'
GROUP BY b.PickupLocation
ORDER BY Avg_Waiting_Time_Minutes DESC;

-- Identify the most common reasons for trip cancellations from customer feedback. What actions can be taken to reduce cancellations?
SELECT CancellationReason,
    COUNT(*) AS Total_Cancellations
FROM Bookings
WHERE Status = 'Cancelled'AND CancellationReason IS NOT NULL
GROUP BY CancellationReason
ORDER BY Total_Cancellations DESC;

--  Find out whether shorter trips (low-distance) contribute significantly to revenue. should the company encourage more short-distance rides? 
SELECT 
    CASE 
        WHEN t.Distance < 10 THEN 'Short Trips (<10 km)'
        WHEN t.Distance BETWEEN 10 AND 20 THEN 'Medium Trips (10–20 km)'
        ELSE 'Long Trips (>20 km)'
    END AS Trip_Category,
    COUNT(*) AS Total_Trips,
    ROUND(SUM(t.FareAmount), 2) AS Total_Revenue,
    ROUND(AVG(t.FareAmount), 2) AS Avg_Fare,
    ROUND((SUM(t.FareAmount) * 100.0 / (SELECT SUM(FareAmount) FROM TripDetails td 
	JOIN Bookings bb ON td.BookingID = bb.BookingID 
	WHERE bb.Status = 'Completed')), 2) AS Revenue_Percentage
FROM TripDetails t
JOIN Bookings b ON t.BookingID = b.BookingID
WHERE b.Status = 'Completed'
GROUP BY Trip_Category
ORDER BY Total_Revenue DESC;

-- Compare the revenue generated from 'Sedan' and 'SUV' cabs. Should the company invest more in a particular vehicle type? 
SELECT d.DriverID,d.Name AS DriverName,
    COUNT(t.TripID) AS Total_Trips,
    ROUND(SUM(t.FareAmount), 2) AS Total_Revenue,
    ROUND(AVG(t.FareAmount), 2) AS Avg_Fare
FROM Drivers d
JOIN Bookings b ON d.DriverID = b.DriverID
JOIN TripDetails t ON b.BookingID = t.BookingID
WHERE b.Status = 'Completed'
GROUP BY d.DriverID, d.Name
ORDER BY Total_Revenue DESC LIMIT 10;

--  Predict which customers are likely to stop using the service based on their last booking date and frequency of rides. How can customer retention be improved? 
SELECT c.CustomerID,c.Name AS CustomerName,
    COUNT(b.BookingID) AS Total_Bookings,
    SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Bookings,
    ROUND((SUM(CASE WHEN b.Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(b.BookingID)), 2) AS Cancel_Percentage,
    MAX(b.BookingDateTime) AS Last_Booking_Date,
    DATEDIFF(CURDATE(), MAX(b.BookingDateTime)) AS Days_Since_Last_Booking
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.Name
HAVING Days_Since_Last_Booking > 180    -- inactive for 6+ months
    OR Total_Bookings < 5             -- low ride frequency
    OR Cancel_Percentage > 30         -- frequent cancellations
ORDER BY Days_Since_Last_Booking DESC;

-- Analyze whether weekend bookings differ significantly from weekday bookings  Should the company introduce dynamic pricing based on demand?
SELECT 
    CASE 
        WHEN DAYOFWEEK(b.BookingDateTime) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS DayType,
    COUNT(b.BookingID) AS Total_Bookings,
    ROUND(SUM(t.FareAmount), 2) AS Total_Revenue,
    ROUND(AVG(t.FareAmount), 2) AS Avg_Fare,
    ROUND(AVG(t.Distance), 2) AS Avg_Distance
FROM Bookings b
JOIN TripDetails t ON b.BookingID = t.BookingID
WHERE b.Status = 'Completed'
GROUP BY DayType
ORDER BY Total_Bookings DESC;
