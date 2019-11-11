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
id_plane INT auto_increment primary key,
number_seat INT
);
-- ALTER TABLE plane ADD COLUMN number_seat INT;
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
ALTER TABLE clients ADD COLUMN birthdate DATETIME;

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


-- INSERTION
INSERT INTO destination(city,flight_time,distance)
values('Paris','40','265'),('Barcelona','130','1100'),('Berlin','120','650'),('Venise','110','850');

INSERT INTO plane(id_plane,number_seat)
values(1,30),(2,30),(3,30),(4,36),(5,36);

INSERT INTO clients(first_name,last_name,email,phone_number,birthdate)
VALUES('Etienne','Dehucorne','etienne.dehucorne@hotmail.fr','0475678945','1957-12-09'),
('Fabrice','Denis','fabrice.denis94@gmail.com','0478965432','1994-09-18'),
('Sabrina','Faston','sabrina.faston@yahoo.fr','0493090807','1976-02-23'),
('Thomas','Hulot','thomashulot@gmail.com','0498246846','1982-03-06'),
('Mathias','Seron','mathmath.seron@hotmail.com','0476090802','1987-09-19'),
('Marie','Curie','marie.curie@yahoo.fr','0498070324','1988-04-21'),
('Jérôme','Materne','jjerome.mat@gmail.com','0488765430','1990-09-08'),
('Mathieu','Retu','mathieuretu@hotmail.fr','0472347891','1967-09-23'),
('Arnaud','Saraj','arnaud.saraj@outllook.be','0498070354','1955-05-09'),
('Olivier','Parat','olivierparat@hotmail.com','0498729188','1979-09-09'),
('Muriel','Wago','muriel.wago@gmail.com','0495987143','1990-08-14'),
('Alexandra','Dury','alex.dury@outlook.be','0478979633','1967-03-14'),
('Murielle','Utu','murielle.utu@hotmail.fr','0476231564','1976-06-02'),
('Marine','Foucoul','marine.foucoul@gmail.com','0475919808','1977-09-17'),
('Corentin','Hopi','corentinhopi@gmail.com','0487060334','1954-07-03'),
('Jean-Marc','Piraux','jean-marcpiraux@gmail.com','0453087325','1975-11-05'),
('Michel','Thyri','michel.thyri@hotmail.be','0476086754','1943-12-21'),
('André','Manouquian','andremanouquian@gmail.com','0478564321','1957-09-23'),
('Michelle','Saurnass','michelle.saurnass@yahoo.fr','0487098765','1978-11-06'),
('Sébastien','Paquet','sebastien.paquet@hotmail.fr','0465432167','1988-12-09'),
('Simon','Calliou','simon.calliou@hotmail.fr','0457345678','1968-01-06'),
('Sandra','Limon','sandra.limon@hotmail.fr','0478317854','1968-12-07'),
('Valentin','Martin','valentinmartin@gmail.com','0489659843','1968-11-08'),
('Édouard','Lirton','edouard.lirton@gmail.com','0488431256','1968-09-09'),
('Thibault','Ledoux','thibault.ledoux@gmail.com','0485675432','1968-11-10'),
('Bertrand','Bouchon','berbertrand.bouch@hotmail.fr','0495234598','1968-08-11'),
('Jean-François','Faron','jf.faron@hotmail.fr','0490432167','1968-09-12'),
('Alain','Bouchat','alain.bouchat@gmail.com','0478432167','1968-02-13'),
('Patrick','Dutrix','patrick.dutrix@hotmail.com','0499674930','1968-04-14'),
('Philippe','Gérard','philippe.gerard@gmail.com','0478390193','1968-04-15'),
('Franco','Caldou','caldoufranco@hotmail.com','0489910987','1968-06-16'),
('Hugo','Fanion','hugofanion@gmail.com','0489674532','1975-08-06'),
('Karine','Favilla','karine.favilla@outlook.com','0467985423','1968-05-24'),
('Liliane','Pario','liliane.parot@henallux.be','0498443322','1966-04-02'),
('Francis','Lurot','francislurot@famillelurot.be','0475097534','1974-01-09'),
('Cécile','Ramis','cecileramis@hotmail.fr','0476987142','1981-01-03'),
('Yves','Lurot','yves.lurot@famillelurot.be','0476812543','1973-06-01'),
('Kevin','Jotus','kevin.jotus@gmail.com','0467721454','1954-07-28'),
('Didier','Marino','didier.marino@hotmail.fr','0478074356','1967-03-25'),
('Robin','Collin','robin.collin@outlook.be','0489072674','1953-09-08');


SELECT * FROM destination ;
SELECT * FROM plane ;
SELECT * FROM clients;
SHOW tables ;