

CREATE TABLE Vendors (
    vendor_address VARCHAR(255) PRIMARY KEY
);

CREATE TABLE ItemTypes (
    item_type VARCHAR(100) PRIMARY KEY,
    item_type_name VARCHAR(100)
);

CREATE TABLE Locations (
    location VARCHAR(100) PRIMARY KEY,
    location_name VARCHAR(100)
);

CREATE TABLE Units (
    unit VARCHAR(100) PRIMARY KEY,
    unit_name VARCHAR(100)
);

CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_num INT,
    description VARCHAR(255),
    quantity_on_hand INT,
    cost DECIMAL(10, 2),
    purchase_date DATE,
    vendor_address VARCHAR(255),
    price DECIMAL(10, 2),
    item_type VARCHAR(100),
    location VARCHAR(100),
    unit VARCHAR(100),
    FOREIGN KEY (vendor_address) REFERENCES Vendors(vendor_address),
    FOREIGN KEY (item_type) REFERENCES ItemTypes(item_type),
    FOREIGN KEY (location) REFERENCES Locations(location),
    FOREIGN KEY (unit) REFERENCES Units(unit)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    date_sold DATE,
    item_num INT,
    item_id INT,
    cust_id INT,
    quantity INT,
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);





