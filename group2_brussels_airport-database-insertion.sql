-- -----------------------------------
-- Group 2
-- Brussels airport
-- programmers : Corentin Dupont
-- date of creation Lundi 11 novembre 2019
-- date of modification : Mardi 12 novembre 2019
-- content : database insertion
-- ------------------------------------

SHOW DATABASES ;
DROP DATABASE brussels_airport;
CREATE DATABASE IF NOT EXISTS brussels_airport;
USE brussels_airport;

-- ------------
-- INSERTION --
-- ------------

-- INSERT INTO DESTINATION
INSERT INTO destination(city,flight_time,distance)
VALUES('Paris','40','265'),('Barcelona','130','1100'),('Berlin','120','650'),('Venise','110','850');

-- INSERT INTO FLIGHTS
INSERT INTO flights(plane_idPlane,destination_idDestination,take_off_time)
		VALUES(1,1,636),(2,2,800),(3,1,1024),(4,3,1155),(5,4,1310),(2,2,1820),(4,4,2055);
-- INSERT INTO PLANE
INSERT INTO plane(number_seat)
		VALUES(30),(30),(30),(36),(36);

-- INSERT INTO CLIENTS
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

-- INSERT INTO SEATS
INSERT INTO seats(plane_idPlane,numb,letter)
VALUES(1,1,'A'),(1,1,'B'),(1,1,'C'),(1,1,'D'),(1,1,'E'),(1,1,'F'),
		(1,2,'A'),(1,2,'B'),(1,2,'C'),(1,2,'D'),(1,2,'E'),(1,2,'F'),
		(1,3,'A'),(1,3,'B'),(1,3,'C'),(1,3,'D'),(1,3,'E'),(1,3,'F'),
		(1,4,'A'),(1,4,'B'),(1,4,'C'),(1,4,'D'),(1,4,'E'),(1,4,'F'),
		(1,5,'A'),(1,5,'B'),(1,5,'C'),(1,5,'D'),(1,5,'E'),(1,5,'F');

INSERT INTO seats(plane_idPlane,numb,letter)
VALUES(2,1,'A'),(2,1,'B'),(2,1,'C'),(2,1,'D'),(2,1,'E'),(2,1,'F'),
		(2,2,'A'),(2,2,'B'),(2,2,'C'),(2,2,'D'),(2,2,'E'),(2,2,'F'),
		(2,3,'A'),(2,3,'B'),(2,3,'C'),(2,3,'D'),(2,3,'E'),(2,3,'F'),
		(2,4,'A'),(2,4,'B'),(2,4,'C'),(2,4,'D'),(2,4,'E'),(2,4,'F'),
		(2,5,'A'),(2,5,'B'),(2,5,'C'),(2,5,'D'),(2,5,'E'),(2,5,'F');

INSERT INTO seats(plane_idPlane,numb,letter)
VALUES(3,1,'A'),(3,1,'B'),(3,1,'C'),(3,1,'D'),(3,1,'E'),(3,1,'F'),
		(3,2,'A'),(3,2,'B'),(3,2,'C'),(3,2,'D'),(3,2,'E'),(3,2,'F'),
		(3,3,'A'),(3,3,'B'),(3,3,'C'),(3,3,'D'),(3,3,'E'),(3,3,'F'),
		(3,4,'A'),(3,4,'B'),(3,4,'C'),(3,4,'D'),(3,4,'E'),(3,4,'F'),
		(3,5,'A'),(3,5,'B'),(3,5,'C'),(3,5,'D'),(3,5,'E'),(3,5,'F');

INSERT INTO seats(plane_idPlane,numb,letter)
VALUES(4,1,'A'),(4,1,'B'),(4,1,'C'),(4,1,'D'),(4,1,'E'),(4,1,'F'),
		(4,2,'A'),(4,2,'B'),(4,2,'C'),(4,2,'D'),(4,2,'E'),(4,2,'F'),
		(4,3,'A'),(4,3,'B'),(4,3,'C'),(4,3,'D'),(4,3,'E'),(4,3,'F'),
		(4,4,'A'),(4,4,'B'),(4,4,'C'),(4,4,'D'),(4,4,'E'),(4,4,'F'),
		(4,5,'A'),(4,5,'B'),(4,5,'C'),(4,5,'D'),(4,5,'E'),(4,5,'F'),
		(4,6,'A'),(4,6,'B'),(4,6,'C'),(4,5,'D'),(4,6,'E'),(4,6,'F');

INSERT INTO seats(plane_idPlane,numb,letter)
VALUES(5,1,'A'),(5,1,'B'),(5,1,'C'),(5,1,'D'),(5,1,'E'),(5,1,'F'),
		(5,2,'A'),(5,2,'B'),(5,2,'C'),(5,2,'D'),(5,2,'E'),(5,2,'F'),
		(5,3,'A'),(5,3,'B'),(5,3,'C'),(5,3,'D'),(5,3,'E'),(5,3,'F'),
		(5,4,'A'),(5,4,'B'),(5,4,'C'),(5,4,'D'),(5,4,'E'),(5,4,'F'),
		(5,5,'A'),(5,5,'B'),(5,5,'C'),(5,5,'D'),(5,5,'E'),(5,5,'F'),
		(5,6,'A'),(5,6,'B'),(5,6,'C'),(5,6,'D'),(5,6,'E'),(5,6,'F');

-- INSERT INTO RESERVED_SEATS
INSERT INTO reserved_seats(reservation_idReservation,seat_idSeat)
VALUES(1,1),(1,2),(1,3),
		(2,4),(2,5),(2,6),
        (3,13),(3,14),
        (4,18),
        (5,25),(5,26),
        (6,29),(6,30),
        (7,31),(7,32),(7,33),
        (8,40),(8,41),(8,42),
        (9,43),(9,44),
		(10,48),
		(11,49),(11,50),
        (12,53),(12,54),
        (13,67),(13,68),(13,69),
        (14,70),(14,71),(14,72),
        (15,73),(15,74),
        (16,78),
        (17,85),(17,86),
        (18,89),(18,90),
        (19,91),(19,92),(19,93),
        (20,94),(20,95),(20,96);
        
INSERT INTO reserved_seats(reservation_idReservation,seat_idSeat)
VALUES(21,97),(21,98),
		(22,103),(22,104),
        (23,121),(23,122),(23,123),
        (24,125),(24,126),
        (25,127),(25,128),(25,129),
        (26,130),(26,131),(26,132),
        (27,133),(27,134),
        (28,142),(28,143),(28,144),
        (29,151),(29,152),
        (30,160),(30,161),(30,162),
        (31,31),(31,32),(31,33),
        (32,34),(32,35),(32,36),
        (33,43),(33,44),
        (34,48),
        (35,55),(35,56),
        (36,94),(36,95),(36,96),
        (37,97),(37,98),
        (38,106),(38,107),(38,108),
        (39,115),(39,116),
        (40,124),(40,125),(40,126);
        
-- INSERT INTO  bookings
INSERT INTO bookings(id_bookings,luggage_quantity,luggage_weight,flight_idFlight,clients_idClient) 
VALUES(1,2,30,1,1),
		(2,3,45,1,2),
        (3,2,30,1,3),
		(4,1,15,1,4),
		(5,0,0,1,5),
		(6,1,15,1,6),
		(7,2,30,2,7),
		(8,3,45,2,8),
		(9,2,30,2,9),
		(10,1,15,2,10),
		(11,0,0,2,11),
		(12,1,15,2,12),
		(13,2,30,3,13),
		(14,3,45,3,14),
		(15,4,60,3,15),
		(16,3,45,3,16),
		(17,2,30,3,17),
		(18,1,15,3,18),
		(19,0,0,4,19),
		(20,1,15,4,20),
		(21,2,30,4,21),
		(22,3,45,4,22),
		(23,4,60,4,23),
		(24,3,45,4,24),
		(25,2,30,5,25),
		(26,1,15,5,26),
		(27,0,0,5,27),
		(28,1,15,5,28),
		(29,2,30,5,29),
		(30,3,45,5,30),
		(31,4,60,6,31),
		(32,5,75,6,32),
		(33,4,60,6,33),
		(34,3,45,6,34),
		(35,2,30,6,35),
		(36,1,15,7,36),
		(37,0,0,7,37),
		(38,1,15,7,38),
		(39,2,30,7,39),
		(40,3,45,7,40);
 
SELECT * FROM destination ;
SELECT * FROM plane ;
SELECT * FROM clients;
SELECT * FROM bookings;
SELECT * FROM flights;
SELECT * FROM seats;
SELECT * FROM reserved_seats;
SHOW tables ;