CREATE TABLE Client (
    Client_id INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Telephone VARCHAR(15),
    CONSTRAINT chk_email CHECK (Email LIKE '%@%'),
    CONSTRAINT chk_telephone CHECK (Telephone LIKE '+%')
);
