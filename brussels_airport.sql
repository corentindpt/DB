-- Corentin Dupont
-- Création du workbench
-- Lundi 11 novembre 2019

SHOW DATABASES ;
DROP DATABASE brussels_airport;
CREATE DATABASE IF NOT EXISTS brussels_airport;
USE brussels_airport;

CREATE TABLE destination
(
id_destination INT auto_increment primary key,
city VARCHAR(50),
flight_time TIME,
distance INT
);

CREATE TABLE flights
(
id_flight INT auto_increment primary key,
plane_idPlane INT,
destination_idDestination INT,
take_off_time DATETIME,
foreign key (plane_idPlane) references plane(id_plane),
foreign key (destination_idDestination) references destination(id_destination)
);

CREATE TABLE plane
(
id_plane INT auto_increment primary key
);

CREATE TABLE seats
(
id_seat INT auto_increment primary key,
number INT,
letter ENUM('A','B','C','D','E','F'),
plane_idPlane INT,
foreign key (plane_idPlane) references plane(id_plane)
);

CREATE TABLE reserved_seats
(
id_seat_Reservation INT auto_increment primary key,
reservation_idReservation INT,
seat_idSeat INT
);

CREATE TABLE clients
(
id_client INT auto_increment primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
phone_number VARCHAR(50)

);

CREATE TABLE bookings
(
id_bookings INT auto_increment primary key,
luggage_quantity INT,
luggage_weight INT,
flight_idFlight INT,
clients_idClient INT,
foreign key (flight_idFlight) references flights(id_flight),
foreign key (clients_idClient) references clients(id_client)
);

SELECT * FROM flights ;
SHOW tables ;