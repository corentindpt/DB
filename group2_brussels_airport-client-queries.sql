-- -----------------------------------
-- Group 2
-- Brussels airport
-- programmers : Corentin Dupont
-- date of creation jeudi 21 novembre 2019
-- date of modification : lundi 25 novembre 2019
-- content : client queries
-- ------------------------------------
SET SQL_SAFE_UPDATES=0;

SHOW DATABASES ;
DROP DATABASE brussels_airport;
CREATE DATABASE IF NOT EXISTS brussels_airport;
USE brussels_airport;

/*-------------------------------------------------------------------------
	Know, for a specific flight number, how many seats are reserved
----------------------------------------------------------------------------*/
SELECT flight_idFlight as numero_de_vol,COUNT(*) as nombre_de_siege_reservé FROM reserved_seats
	JOIN bookings ON reserved_seats.reservation_idReservation=bookings.id_bookings
    GROUP BY flight_idFlight;
    
 /*-------------------------------------------------------------------------   
	 	Know, for a specific flight number, the total weight of the luggage
----------------------------------------------------------------------------*/
-- SELECT flight_idFlight FROM bookings;
-- SELECT SUM(luggage_weight) FROM bookings;
SELECT flight_idFlight as numero_de_vol,SUM(luggage_weight) as poids_total_baggage FROM bookings
    GROUP BY flight_idFlight;
    
/*-------------------------------------------------------------------------   
	List the passengers who takes a specific flight
----------------------------------------------------------------------------*/ 
/*SELECT first_name, last_name, id_flight FROM flights 
	JOIN bookings ON flights.id_flight=bookings.id_bookings
    JOIN clients ON bookings.id_bookings=clients.id_client;
    GROUP BY flight_idFlight;*/
   

/*-------------------------------------------------------------------------   
	List all flights that land in a certain destination
----------------------------------------------------------------------------*/ 



  
/*-------------------------------------------------------------------------   
	Add at any time a new plane, a new flight or a new destination
----------------------------------------------------------------------------*/ 
-- Insert new flights  
INSERT INTO flights(take_off_time)
	VALUES('2200');
-- Update flights
UPDATE flights
	SET plane_idPlane='5',destination_idDestination='5'
	WHERE id_flight='8';

-- Insert new plane
INSERT INTO plane(number_seat)
	VALUES('40');

-- Insert new destination
INSERT INTO destination (city,flight_time,distance)
	VALUES ('tokyo','230','350');

/*-------------------------------------------------------------------------   
	Offer the possibility for our passengers to reserve a flight
----------------------------------------------------------------------------*/ 


  

/*-------------------------------------------------------------------------   
	Be able to add new client information (e.g. address)
----------------------------------------------------------------------------*/   

SELECT * FROM destination ;
SELECT * FROM plane ;
SELECT * FROM clients;
SELECT * FROM bookings;
SELECT * FROM flights;
SELECT * FROM seats;
SELECT * FROM reserved_seats;
SHOW tables ;