CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(15) NOT NULL,
    CONSTRAINT chk_email CHECK (email LIKE '%@%')
);
CREATE TABLE Vessel(
	vessel_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(60) NOT NULL,
    weight DOUBLE NOT NULL,
    capacity INT NOT NULL,
    registration_number VARCHAR(40) UNIQUE NOT NULL,
    height DOUBLE NOT NULL,
    length DOUBLE NOT NULL,
    status VARCHAR(10) NOT NULL DEFAULT 'Inactive',
    client_id INT NOT NULL,
    CONSTRAINT chk_we_cap CHECK (weight > 0 AND capacity > 0),
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
Create TABLE Docking_Bay(
	bay_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(200) NOT NULL,
    capacity INT NOT NULL,
	CONSTRAINT chk_cap CHECK (capacity > 0),
    available VARCHAR(30)
);
CREATE TABLE Shipment(
	shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    departure_date DATE NOT NULL,
    arrival_date DATE NOT NULL,
    weight DOUBLE NOT NULL,
    cost INT NOT NULL,
    destination VARCHAR(100) NOT NULL,
    status VARCHAR(10) NOT NULL,
    vessel_id INT NOT NULL,
    bay_id INT NOT NULL,
    FOREIGN KEY (vessel_id) REFERENCES Vessel(vessel_id),
	FOREIGN KEY (bay_id) REFERENCES Docking_Bay(bay_id)
);

