CREATE TABLE Salesman (
    Salesman_ID INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),

);

CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    phone_number VARCHAR(15),
    address VARCHAR(60),

);

CREATE TABLE Car (
    Car_id SERIAL PRIMARY KEY,
    Car_model VARCHAR(50),
    Car_make VARCHAR(50),
    car_year INT,
    car_color VARCHAR(50),

);

CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    date NUMERIC(5,2),
    Salesmna_id INT,
    Customer_id INT,
    serv_mech_id INT,
    car_total NUMERIC(6,2),
    part_total NUMERIC(6,2),
    quote BOOLEAN
    Car_id INT,

    FOREIGN KEY (salesman_id) REFERENCES Salesman(Salesman_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (serv_mec_id) REFERENCES Service_mechanic(serv_mch_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id),
);


CREATE TABLE Service_mechanic (
    
    serv_mech_id SERIAL PRIMARY KEY,
    hours NUMERIC(5,2),
    rate NUMERIC(7,2),
    Comment VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    part_id INT,
    
    FOREIGN KEY (part_id) REFERENCES parts(part_id),
);

CREATE TABLE parts

    part_id Serial PRIMARY KEY,
    part_name VARCHAR(50),
    price NUMERIC(7,2),
    comment VARCHAR(50),