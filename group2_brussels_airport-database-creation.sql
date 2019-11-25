-- -----------------------------------
-- Group 2
-- Brussels airport
-- programmers : Corentin Dupont
-- date of creation Lundi 11 novembre 2019
-- date of modification : Mardi 12 novembre 2019
-- content : database creation
-- ------------------------------------
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
CREATE TABLE plane
(
id_plane INT auto_increment primary key,
number_seat INT
);
-- ALTER TABLE plane ADD COLUMN number_seat INT;
CREATE TABLE flights
(
id_flight INT auto_increment primary key,
plane_idPlane INT,
destination_idDestination INT,
take_off_time TIME,
foreign key (plane_idPlane) references plane(id_plane),
foreign key (destination_idDestination) references destination(id_destination)
);


CREATE TABLE seats
(
id_seat INT auto_increment primary key,
numb INT,
letter ENUM('A','B','C','D','E','F'),
plane_idPlane INT,
foreign key (plane_idPlane) references plane(id_plane)
);
CREATE TABLE clients
(
id_client INT auto_increment primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
phone_number VARCHAR(50)
);
ALTER TABLE clients ADD COLUMN birthdate DATE;

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

CREATE TABLE reserved_seats
(
id_seat_Reservation INT auto_increment primary key,
reservation_idReservation INT,
seat_idSeat INT,
foreign key (reservation_idReservation) references bookings(id_bookings),
foreign key (seat_idSeat) references seats(id_seat)
);

SELECT * FROM destination ;
SELECT * FROM plane ;
SELECT * FROM clients;
SELECT * FROM bookings;
SELECT * FROM flights;
SELECT * FROM seats;
SELECT * FROM reserved_seats;
SHOW tables ;