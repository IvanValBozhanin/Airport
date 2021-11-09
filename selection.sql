SELECT airplane FROM flights;
SELECT fnumber, airplane, flight_duration FROM flights;
SELECT * FROM flights;
SELECT * FROM flights WHERE `airline_operator` = 'FB';
SELECT * FROM flights ORDER BY arr_airport DESC;


SELECT DISTINCT * FROM flights;
SELECT DISTINCT airplane FROM flights;
SELECT fnumber FROM flights, airplanes WHERE flights.`airplane` = airplanes.id;
SELECT DISTINCT fnumber FROM flights, airplanes WHERE flights.`airplane` = airplanes.id;


SELECT * FROM flights ORDER BY arr_airport LIMIT 5;
SELECT * FROM flights ORDER BY RAND() LIMIT 5;


SELECT SUM(flight_duration) FROM flights;
SELECT fnumber, airplane, MAX(flight_duration) FROM flights;


SELECT * FROM flights WHERE flight_duration > 100;
SELECT * FROM flights WHERE flight_duration >= 100;
SELECT * FROM flights WHERE airline_operator = 'FB' AND flight_duration > 100;
SELECT * FROM flights WHERE airplane = 738 and flight_duration >= 50;



SELECT * FROM flights WHERE NOT airline_operator = 'FB' AND flight_duration > 100;
SELECT * FROM flights WHERE NOT (airline_operator = 'FB' AND flight_duration > 100);
SELECT * FROM flights WHERE NOT airline_operator = 'FB' AND NOT flight_duration > 100;
SELECT * FROM flights WHERE NOT airline_operator = 'FB' AND flight_duration <= 100;


SELECT * FROM flights WHERE dep_airport = 'SOF' OR  dep_airport = 'IST';

SELECT * FROM flights WHERE dep_airport IN ('SOF', 'IST');
SELECT * FROM flights WHERE NOT dep_airport IN  ('SOF', 'IST');
SELECT * FROM flights WHERE airplane IN (738, 321, 735);


SELECT * FROM flights WHERE flight_duration BETWEEN 90 AND 120;
SELECT * FROM flights WHERE fnumber IS NULL;


SELECT * FROM flights WHERE fnumber LIKE 'FB%';
SELECT * FROM flights WHERE fnumber LIKE '%7';
SELECT * FROM flights WHERE fnumber LIKE '%/A%' ESCAPE '/';


SELECT * FROM flights WHERE fnumber IS NOT NULL;
SELECT * FROM flights WHERE NOT fnumber IS NULL;
SELECT * FROM flights WHERE flight_duration NOT IN (100, 110, 120);