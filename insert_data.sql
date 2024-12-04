INSERT INTO Client (name, email, telephone) VALUES
('John Smith', 'john.smith@aol.com', '+1 2122334455'),
('Sara Ahmed', 'sara.ahmed@yahoo.com', '+44 1223456789'),
('Hiroshi Tanaka', 'hiroshi.tanaka@japanmail.com', '+81 8098765432'),
('Rana Sherif', 'rana.sherif@hotmail.com', '+971 5098765432'),
('Amr Khaled', 'amr.khaled@outlook.com', '+20 1287654321'),
('Carlos Mendez', 'carlos.mendez@outlook.com', '+34 5411233444'),
('Mohamed Eid', 'mohamed.eid@gmail.com', '+20 1144556677'),
('Lina Berger', 'lina.berger@gmail.com', '+49 5112233444'),
('Omnia Mahmoud', 'omnia@gmail.com', '+20 1012345678'),
('Zyad Ayman', 'zyad@yahoo.com', '+20 1223456789'),
('Saif Eldin Ayman', 'saif@hotmail.com', '+20 1134567890'),
('Ahmed Khalil', 'ahmed.khalil@gmail.com', '+20 1098765432'),
('Nour Mohamed', 'nour.ali@yahoo.com', '+20 1122334455'),
('Omar Khaled', 'omar.khaled@gmail.com', '+20 1055667788'),
('Ahmed Mohamed', 'ahmed.mohamed@hotmail.com', '+20 1299887766'),
('Laila Magdy', 'laila.magdy@yahoo.com', '+20 1066778899');


INSERT INTO Vessel (name, type, weight, capacity, registration_number, height, length, status, client_id) VALUES
('Nile Voyager', 'Cargo Ship', 15000.56, 40000, 'REG001', 25.45, 200.75, 'Active', 1),
('Mediterranean Star', 'Tanker', 25000.78, 50000, 'REG002', 30.50, 250.35, 'Inactive', 2),
('Pacific Horizon', 'Cargo Ship', 18000.34, 45000, 'REG003', 28.12, 220.50, 'Active', 3),
('Red Sea Explorer', 'Passenger', 12000.22, 35000, 'REG004', 24.33, 190.25, 'Active', 4),
('Atlantic Vision', 'Tanker', 22000.49, 48000, 'REG005', 26.75, 210.18, 'Inactive', 5),
('Indian Breeze', 'Cargo Ship', 19000.67, 47000, 'REG006', 29.23, 230.45, 'Active', 6),
('Cairo Glory', 'Tanker', 17000.80, 42000, 'REG007', 26.60, 220.98, 'Active', 7),
('Aswan Spirit', 'Cargo Ship', 16000.91, 44000, 'REG008', 27.52, 215.77, 'Inactive', 8),
('Tokyo Dream', 'Passenger', 13000.14, 37000, 'REG009', 22.88, 185.62, 'Active', 9),
('Gulf Majesty', 'Cargo Ship', 20000.13, 50000, 'REG010', 31.23, 260.85, 'Inactive', 10),
('Suez Queen', 'Passenger', 14000.56, 38000, 'REG011', 23.60, 200.50, 'Active', 1),
('Caspian Breeze', 'Cargo Ship', 21000.30, 47000, 'REG012', 27.88, 210.75, 'Inactive', 2),
('Caribbean Spirit', 'Tanker', 22000.77, 46000, 'REG013', 28.20, 215.30, 'Active', 3),
('Arctic Horizon', 'Cargo Ship', 23000.41, 48000, 'REG014', 29.05, 225.15, 'Active', 4),
('Saharan Dawn', 'Tanker', 25000.92, 50000, 'REG015', 30.65, 240.10, 'Inactive', 5);

INSERT INTO Shipment (departure_date, arrival_date, weight, cost, destination, status, vessel_id, bay_id) VALUES
('2024-01-15', '2024-01-20', 10000.0, 25000, 'Alexandria', 'Delivered', 1, 1),
('2024-02-01', '2024-02-08', 15000, 30000.5, 'Barcelona', 'In Transit', 2, 9),
('2024-02-20', '2024-02-25', 12000.5, 24000, 'New York', 'Delivered', 3, 3),
('2024-03-10', '2024-03-15', 17000, 34000.0, 'Port Said', 'Pending', 4, 4),
('2024-03-25', '2024-03-30', 13000.0, 26000, 'Hamburg', 'In Transit', 5, 4),
('2024-04-05', '2024-04-10', 14000.5, 28000, 'Mumbai', 'Delivered', 6, 6),
('2024-04-20', '2024-04-25', 11000, 22000.5, 'Cairo', 'Pending', 7, 1),
('2024-05-01', '2024-05-06', 18000, 36000, 'Tokyo', 'Delivered', 8, 8),
('2024-05-15', '2024-05-20', 16000.5, 32000, 'Dubai', 'In Transit', 9, 9),
('2024-06-01', '2024-06-06', 19000, 38000, 'Sydney', 'Pending', 10, 8),
('2024-06-10', '2024-06-15', 14000.0, 28000.5, 'Sydney', 'Delivered', 1, 8),
('2024-07-01', '2024-07-06', 15000, 30000, 'Barcelona', 'Delivered', 2, 9),
('2024-07-15', '2024-07-20', 13000.5, 26000.0, 'New York', 'Delivered', 3, 3),
('2024-08-01', '2024-08-06', 18000.0, 36000, 'Port Said', 'Pending', 4, 4),
('2024-08-10', '2024-08-15', 16000, 32000.5, 'Alexandria', 'In Transit', 5, 1);



INSERT INTO Docking_Bay (location, capacity, available) VALUES
('Port of Alexandria', 15, 'Yes'),
('Port of Barcelona', 20, 'No'),
('Port of New York', 25, 'Yes'),
('Port Said Harbor', 18, 'Yes'),
('Hamburg Port', 10, 'No'),
('Mumbai Dock', 22, 'Yes'),
('Cairo Port', 30, 'No'),
('Tokyo Bay', 12, 'Yes'),
('Dubai Harbor', 35, 'Yes'),
('Sydney Harbour', 28, 'No');


