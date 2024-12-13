CREATE DATABASE earl_harbor;
USE earl_harbor;
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(25) NOT NULL
);
CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    telephone VARCHAR(15) NOT NULL
);
CREATE TABLE Vessel(
	vessel_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(60) NOT NULL,
    weight DOUBLE NOT NULL CHECK (weight > 0 ),
    capacity INT NOT NULL CHECK (capacity > 0),
    registration_number VARCHAR(40) UNIQUE NOT NULL,
    height DOUBLE NOT NULL,
    length DOUBLE NOT NULL,
    status VARCHAR(10) NOT NULL DEFAULT 'Inactive',
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
Create TABLE Docking_Bay(
	bay_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(200) NOT NULL,
    capacity INT NOT NULL CHECK (capacity > 0),
    available boolean
);
CREATE TABLE Shipment(
	shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    departure_date DATE NOT NULL,
    arrival_date DATE NOT NULL,
    weight DOUBLE NOT NULL,
    cost INT NOT NULL,
    destination VARCHAR(100) NOT NULL,
    status VARCHAR(255) default 'Passed',
    vessel_id INT NOT NULL,
    bay_id INT NOT NULL,
    FOREIGN KEY (vessel_id) REFERENCES Vessel(vessel_id),
	FOREIGN KEY (bay_id) REFERENCES Docking_Bay(bay_id)
);
ALTER TABLE Shipment AUTO_INCREMENT = 1;
CREATE TABLE Contract (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE,
    details VARCHAR(255) NOT NULL CHECK (details <> ''),
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
CREATE TABLE Inspector (
    inspector_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%')
   
);
CREATE TABLE Customs (
    inspection_id INT AUTO_INCREMENT PRIMARY KEY,
    inspection_date DATE NOT NULL,
    result VARCHAR(100) NOT NULL CHECK (result <> ''),
    inspector_id INT NOT NULL,
    shipment_id INT NOT NULL,
    FOREIGN KEY (inspector_id) REFERENCES Inspector(inspector_id),
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
);
CREATE TABLE Maintenance_Record (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    record_date DATE NOT NULL,
    details VARCHAR(255) NOT NULL,
    vessel_id INT NOT NULL,
    FOREIGN KEY (vessel_id) REFERENCES Vessel(vessel_id)
);

CREATE TABLE Notification (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    message VARCHAR(255) NOT NULL,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
CREATE TABLE personnel (
    personnel_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
    phone VARCHAR(15) NOT NULL
);
CREATE TABLE Cargo (
    cargo_id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    weight FLOAT NOT NULL,
    quantity INT NOT NULL,
    shipment_id INT NOT NULL,
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
);

CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(15,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    shipment_id INT NOT NULL,
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
);

CREATE TABLE Logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    log_date DATE NOT NULL,
    description TEXT,
    personnel_id INT NOT NULL,
    vessel_id INT NOT NULL,
    FOREIGN KEY (personnel_id) REFERENCES Personnel(personnel_id),
    FOREIGN KEY (vessel_id) REFERENCES Vessel(vessel_id)
);






