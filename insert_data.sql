INSERT INTO user(username, password) VALUES
('Omnia', '12345'),
('Saif', '54321');
INSERT INTO Client (name, email, telephone) VALUES
('Amr Khaled', 'amr.khaled@gmail.com', '+1 2122334455'),
('Zyad Ayman', 'zyad.ayman@yahoo.com', '+44 1223456789'),
('Ahmed Khalil', 'ahmed.khalil@gmail.com', '+81 8098765432'),
('Ahmed Mohammed','ahmed.mohammed@outlook.com','+20 122555225');
INSERT INTO Vessel (name, type, weight, capacity, registration_number, height, length, status, client_id) 
VALUES
('Nile Voyager', 'Container Ship', 15000.56, 40000, 'REG001', 25.45, 200.75, 'Active', 1),
('Mediterranean Star', 'Reefer Ship', 25000.78, 50000, 'REG002', 30.50, 250.35, 'Inactive', 2),
('Pacific Horizon', 'Bulk Carrier', 18000.34, 45000, 'REG003', 28.12, 220.50, 'Active', 3),
('Red Sea Explorer', 'Ro-Ro Ship', 12000.22, 35000, 'REG004', 24.33, 190.25, 'Active', 4),
('Atlantic Vision', 'Heavy Lift Ship', 22000.49, 48000, 'REG005', 26.75, 210.18, 'Inactive', 1),
('Indian Breeze', 'Container Ship', 19000.67, 47000, 'REG006', 29.23, 230.45, 'Active', 2),
('Cairo Glory', 'Livestock Carrier', 17000.80, 42000, 'REG007', 26.60, 220.98, 'Active', 3),
('Aswan Spirit', 'Reefer Ship', 16000.91, 44000, 'REG008', 27.52, 215.77, 'Inactive', 3),
('Tokyo Dream', 'General Cargo Ship', 13000.14, 37000, 'REG009', 22.88, 185.62, 'Active', 1),
('Gulf Majesty', 'Multi-purpose Ship', 20000.13, 50000, 'REG010', 31.23, 260.85, 'Inactive', 2),
('Suez Queen', 'Timber Ship', 14000.56, 38000, 'REG011', 23.60, 200.50, 'Active', 3),
('Caspian Breeze', 'Heavy Lift Ship', 21000.30, 47000, 'REG012', 27.88, 210.75, 'Inactive', 3);
INSERT INTO Docking_Bay (location, capacity, available) VALUES
('Port of Alexandria', 15, TRUE),
('Port of Barcelona', 20, FALSE),
('Port of New York', 25, TRUE),
('Port Said Harbor', 18, FALSE);
INSERT INTO Shipment (departure_date, arrival_date, weight, cost, destination, vessel_id, bay_id) VALUES
('2024-01-15', '2024-01-20', 10000.0, 25000, 'Alexandria', 1, 1),
('2024-02-01', '2024-02-08', 15000, 30000.5, 'New York', 3, 3),
('2024-02-20', '2024-02-25', 12000.5, 24000, 'New York', 2, 3),
('2024-03-10', '2024-03-15', 17000, 34000.0, 'Port Said', 4, 4),
('2024-03-25', '2024-03-30', 13000.0, 26000, 'Port Said', 1, 4),
('2024-04-05', '2024-04-10', 14000.5, 28000, 'Alexandria', 5, 1),
('2024-04-20', '2024-04-25', 11000, 22000.5, 'Alexandria', 7, 1),
('2024-05-01', '2024-05-06', 18000, 36000, 'Alexandria', 8, 1),
('2024-05-15', '2024-05-20', 16000.5, 32000, 'New York', 9, 3),
('2024-06-01', '2024-06-06', 19000, 38000, 'New York', 6, 3),
('2024-06-10', '2024-06-15', 14000.0, 28000.5, 'Barcelona', 10, 2),
('2024-07-01', '2024-07-06', 15000, 30000, 'Barcelona', 1, 2),
('2024-07-15', '2024-07-20', 13000.5, 26000.0, 'New York', 10, 3),
('2024-08-01', '2024-08-06', 18000.0, 36000, 'Barcelona', 4, 2),
('2024-08-10', '2024-08-15', 16000, 32000.5, 'Port Said', 7, 4);
INSERT INTO Personnel (Name, Role, Email, Phone)
VALUES 
('Saif eldeen aymen', 'Manager', 'saif.aymen@gmail.com', '1234567890'),
('Omnia Mahmoud', 'Supervisor', 'omnia.mahmoud@gmail.com', '0987654321'),
('Ahmed Saad', 'Technician', 'ahmed.saad@gmail.com', '5678901234');
INSERT INTO Cargo (type, weight, quantity, shipment_id) 
VALUES
('Electronics', 5000.0, 100, 1),
('Heavy Machinery', 8000.0, 50, 2),
('Frozen Food', 12000.0, 200, 3),
('Oil and Gas Equipment', 15000.0, 20, 4),
('Trucks', 7000.0, 150, 5),
('Heavy Machinery', 18000.0, 100, 6),
('Livestock', 3000.0, 300, 7),
('Frozen Food', 4000.0, 50, 8),
('Automobiles', 10000.0, 30, 9),
('Toys', 5000.0, 400, 10),
('Timber', 11000.0, 120, 11),
('Heavy Machinery', 17000.0, 15, 12),
('Automobiles', 12000.0, 50, 13),
('Oil and Gas Equipment', 10000.0, 40, 14),
('Livestock', 15000.0, 10, 15);
INSERT INTO Payment (Amount, Payment_date, Payment_method, Shipment_id) VALUES
(25000.0, '2024-01-16', 'Credit Card', 1),
(30000.5, '2024-02-02', 'Cash', 2),
(24000.0, '2024-02-21', 'Bank Transfer', 3),
(34000.0, '2024-03-11', 'Credit Card', 4),
(26000.0, '2024-03-26', 'Cash', 5),
(28000.0, '2024-04-06', 'Bank Transfer', 6),
(22000.5, '2024-04-21', 'Credit Card', 7),
(32000.0, '2024-05-02', 'Cash', 8),
(36000.0, '2024-05-16', 'Credit Card', 9),
(38000.0, '2024-06-02', 'Bank Transfer', 10),
(25000.0, '2024-01-16', 'Credit Card', 11),
(30000.5, '2024-02-02', 'Cash', 12),
(24000.0, '2024-02-21', 'Bank Transfer', 13),
(34000.0, '2024-03-11', 'Credit Card', 14),
(26000.0, '2024-03-26', 'Cash', 15);
INSERT INTO Maintenance_Record (record_date, details, vessel_id) VALUES
('2024-01-10', 'Routine checkup', 1),
('2024-02-14', 'Engine repair', 2),
('2024-03-05', 'Hull inspection', 3),
('2024-04-22', 'Propeller maintenance', 4),
('2024-05-16', 'Turbine replacement', 5),
('2024-06-11', 'Cargo hold cleaning', 6),
('2024-07-14', 'Electrical system check', 7),
('2024-08-07', 'Painting and sealing', 8),
('2024-09-20', 'Navigation system upgrade', 9),
('2024-10-10', 'Annual overhaul', 10);
INSERT INTO Inspector (name, phone, email) VALUES 
('John Adams', '0123456801', 'john.adams@gamil.com'),
('Jane King', '0123456802', 'jane.king@gmail.com'),
('William Scott', '0123456803', 'william.scott@gmail.com');
INSERT INTO Notification (date, message, client_id) VALUES 
('2024-01-01', 'New contract available for shipment services.', 1),
('2024-02-15', 'Your shipment has been cleared by customs.', 2),
('2024-03-05', 'Inspection completed successfully.', 3),
('2024-04-10', 'Docking bay available for next shipment.', 4),
('2024-05-20', 'Your vessel has passed all maintenance checks.', 1),
('2024-06-15', 'Urgent: Customs clearance required for next shipment.', 2),
('2024-07-01', 'Payment reminder for upcoming docking service.', 3),
('2024-08-20', 'New vessel inspection scheduled for next week.', 4),
('2024-09-05', 'Maintenance required for your vessel soon.', 2),
('2024-10-01', 'Reminder: Cargo shipment scheduled for next month.', 1);
INSERT INTO Contract (start_date, end_date, details, client_id) VALUES 
('2024-01-01', '2024-12-31', 'Annual maintenance contract', 1),
('2024-02-01', '2024-07-31', 'Shipment service agreement', 2),
('2024-03-01', '2024-11-30', 'Customs clearance contract', 3),
('2024-04-01', '2024-10-31', 'Vessel repair contract', 4);
INSERT INTO Customs (inspection_date, result, inspector_id, shipment_id)
VALUES
('2024-01-16', 'Passed', 1, 1),
('2024-02-01', 'Pending', 2, 2),
('2024-02-20', 'Passed', 3, 3),
('2024-03-10', 'Failed', 1, 4),
('2024-03-25', 'Passed', 2, 5),
('2024-04-05', 'Pending', 3, 6),
('2024-04-20', 'Passed', 1, 7),
('2024-05-01', 'Failed', 2, 8),
('2024-05-15', 'Passed', 3, 9),
('2024-06-01', 'Pending', 1, 10),
('2024-06-10', 'Failed', 2, 11),
('2024-07-01', 'Passed', 3, 12),
('2024-07-15', 'Pending', 1, 13),
('2024-08-01', 'Failed', 2, 14),
('2024-08-10', 'Passed', 3, 15);
UPDATE shipment s
JOIN Customs c ON s.shipment_id = c.shipment_id
SET s.status = CASE
                  WHEN c.result = 'Passed' THEN 'Shipment Cleared'
                  WHEN c.result = 'Failed' THEN 'Shipment Failed'
                  WHEN c.result = 'Pending' THEN 'Customs Pending'
                  ELSE 'Unknown Status'
               END
WHERE c.result IN ('Passed', 'Failed', 'Pending');



