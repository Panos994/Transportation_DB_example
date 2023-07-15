--DROP

/*
    In this file we use the DROP command if we want to drop our tables. We use one ALTER command in order to drop the column
    service_id_trips because after the DROP of the service we will not have this attribute.
*/

DROP TABLE Anafora;
DROP TABLE Transfers;

DROP TABLE Frequencies;
DROP TABLE Stop_times;
DROP TABLE Stops;
DROP TABLE Calendar_Types;
DROP TABLE Calendar_dates;
DROP TABLE Calendar_days;
DROP TABLE Calendar;

ALTER TABLE Trips DROP COLUMN service_id_trips;

DROP TABLE Service;
DROP TABLE Trips;

DROP TABLE Fare_methods;
DROP TABLE Fare_attributes;
DROP TABLE Prosdiorizontai;
DROP TABLE Fare_Rules;
DROP TABLE Routes_Type;
DROP TABLE Routes;
DROP TABLE Agency;