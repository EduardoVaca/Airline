INSERT INTO CONTINENT
SELECT *
FROM CONTINENTFULL;

INSERT INTO COUNTRY
SELECT COUNTRYFULL.id_country, COUNTRYFULL.id_continent, COUNTRYFULL.name
FROM COUNTRYFULL, CONTINENTFULL
WHERE COUNTRYFULL.id_continent = CONTINENTFULL.id_continent 
    AND CONTINENTFULL.id_continent = &1;

INSERT INTO CITY
SELECT CITYFULL.id_city, CITYFULL.id_country, CITYFULL.name
FROM CITYFULL, COUNTRYFULL, CONTINENTFULL
WHERE CITYFULL.id_country = COUNTRYFULL.id_country 
    AND COUNTRYFULL.id_continent = CONTINENTFULL.id_continent 
    AND CONTINENTFULL.id_continent = &1;

INSERT INTO AIRPORT
SELECT AIRPORTFULL.id_airport, AIRPORTFULL.id_city, AIRPORTFULL.name
FROM AIRPORTFULL, CITYFULL, COUNTRYFULL, CONTINENTFULL
WHERE AIRPORTFULL.id_city = CITYFULL.id_city 
    AND CITYFULL.id_country = COUNTRYFULL.id_country 
    AND COUNTRYFULL.id_continent = CONTINENTFULL.id_continent 
    AND CONTINENTFULL.id_continent = &1;


DROP TABLE TicketFull;
DROP TABLE FlightFull;
DROP TABLE ScheduleTimeFull;
DROP TABLE RouteFull;
DROP TABLE AirportFull;
DROP TABLE CityFull;
DROP TABLE CountryFull;
DROP TABLE ContinentFull;
DROP TABLE PassengerFull;
DROP TABLE AirplaneFull;