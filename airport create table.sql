CREATE DATABASE Airport;

CREATE TABLE airlines(
    id varchar(2) NOT NULL,
    name varchar(20) NOT NULL,
    country varchar(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE airports(
    id char(3) NOT NULL,
    name varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE airplanes(
    id char(3) NOT NULL,
    type varchar(30) NOT NULL,
    seats int NOT NULL,
    year int NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE flights(
    fnumber char(10) NOT NULL,
    flight_time time NOT NULL,
    flight_duration int NOT NULL,
    airline_operator varchar(2) NOT NULL,
    dep_airport char(3) NOT NULL,
    arr_airport char(3) NOT NULL,
    airplane char(3) NOT NULL,
    PRIMARY KEY(fnumber),
    FOREIGN KEY(airline_operator) REFERENCES airlines(id),
    FOREIGN KEY(dep_airport) REFERENCES airports(id),
    FOREIGN KEY(arr_airport) REFERENCES airports(id),
    FOREIGN KEY(airplane) REFERENCES airplanes(id)
);

CREATE TABLE customers(
    id int AUTO_INCREMENT,
    fname varchar(50) NOT NULL,
    lname varchar(50) NOT NULL,
    email varchar(50),
    PRIMARY KEY(id)
);

CREATE TABLE agencies(
    name char(100) NOT NULL,
    country varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    phone varchar(50),
    PRIMARY KEY(name)
);

CREATE TABLE bookings(
    code char(6) NOT NULL,
    booking_date date NOT NULL,
    flight_date date NOT NULL,
    price decimal(9, 2) NOT NULL,
    state int NOT NULL,
    airline_code char(3) NOT NULL,
    flight_number char(10) NOT NULL,
    customer_id int NOT NULL,
    agency char(100) NOT NULL,
    PRIMARY KEY(code),
    FOREIGN KEY(airline_code) REFERENCES airlines(id),
  	FOREIGN KEY(flight_number) REFERENCES flights(fnumber),
    FOREIGN KEY(customer_id) REFERENCES customers(id),
	FOREIGN KEY(agency) REFERENCES agencies(name)
);