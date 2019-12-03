-- -----------------------------------
-- Group 2
-- Brussels airport
-- programmers : Corentin Dupont
-- date of creation jeudi 21 novembre 2019
-- date of modification : Mardi 03 décembre 2019
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
SELECT b.flight_idFlight as numero_de_vol,COUNT(*) as nombre_de_siege_reservé FROM reserved_seats rs
	JOIN bookings b ON rs.reservation_idReservation=b.id_bookings
    GROUP BY b.flight_idFlight;
    
 /*-------------------------------------------------------------------------   
	 	Know, for a specific flight number, the total weight of the luggage
----------------------------------------------------------------------------*/
-- SELECT flight_idFlight FROM bookings;
-- SELECT SUM(luggage_weight) FROM bookings;
SELECT b.flight_idFlight as numero_de_vol,SUM(luggage_weight) as poids_total_baggage FROM bookings b
    GROUP BY b.flight_idFlight;
    
/*-------------------------------------------------------------------------   
	List the passengers who takes a specific flight
----------------------------------------------------------------------------*/ 
SELECT b.flight_idFlight,c.first_name, c.last_name,c.email,c.phone_number,c.birthdate FROM bookings b
	JOIN clients c ON c.id_client=b.id_bookings
    WHERE b.flight_idFlight=1
    ORDER BY b.flight_idFlight;

/*-------------------------------------------------------------------------   
	List all flights that land in a certain destination
----------------------------------------------------------------------------*/ 
SELECT d.city as destination, f.id_flight as numero_de_vol,d.flight_time as durée_du_vol,d.distance as distance_km FROM flights f
	JOIN destination d ON d.id_destination=f.destination_idDestination
    WHERE destination_idDestination=2
	ORDER BY f.id_flight;
    
/*-------------------------------------------------------------------------   
	Add at any time a new plane, a new flight or a new destination
----------------------------------------------------------------------------*/ 
-- Insert new flights  
INSERT INTO flights(take_off_time)
	VALUES('2200');

-- Insert new plane
INSERT INTO plane(number_seat)
	VALUES('40');

-- Insert new destination
INSERT INTO destination (city,flight_time,distance)
	VALUES ('tokyo','230','350');
    
-- Update flights
UPDATE flights
	SET plane_idPlane='5',destination_idDestination='5'
	WHERE id_flight='8';
/*-------------------------------------------------------------------------   
	Be able to add new client information (e.g. address)
----------------------------------------------------------------------------*/   
ALTER TABLE clients ADD COLUMN address VARCHAR(200);
-- ALTER TABLE clients DROP COLUMN adress; 			/* misspelling therefore deletion of the column*/

/*-------------------------------------------------------------------------   
	Offer the possibility for our passengers to reserve a flight
----------------------------------------------------------------------------*/ 
-- Add Number flight,luggage quantity, luggage weight 
INSERT INTO bookings(luggage_quantity,luggage_weight,flight_idFlight,clients_idClient,id_bookings)
		VALUES(3,50,2,40,41);
-- Add seats (numb & letter)

-- Add plane number        
        
        
/*DELETE FROM bookings
	where id_bookings=43;*/
/*____________________________SELECT * FROM________________________________*/
SELECT * FROM destination ;
SELECT * FROM plane ;
SELECT * FROM clients;
SELECT * FROM bookings;
SELECT * FROM flights;
SELECT * FROM seats;
SELECT * FROM reserved_seats;
SHOW tables ;