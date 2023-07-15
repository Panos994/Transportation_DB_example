--INSERT

/* 
    In this file we insert our data according to the exercise requests.
*/

INSERT INTO Agency VALUES(6785,'GMT+3','oasatrans@oasa.gr','211-3456789','https://www.oasa.gr','Metro');
INSERT INTO Agency VALUES(6786,'GMT+3','oasatrans@oasa.gr','211-3456789','https://www.oasa.gr','HSAP');

INSERT INTO Routes VALUES(6785, 3,NULL,'Metro - blue line');
INSERT INTO Routes VALUES(6786, 1,NULL, 'HSAP - green line');



INSERT INTO Fare_Rules VALUES(1256, 3);

INSERT INTO Fare_attributes VALUES('Cash or Debit Card', 2, 'Euros','Unlimited',1256);


INSERT INTO Calendar_Types (exception_Type_ct) values('Argies orario 06.00 - 23.00');


ALTER SESSION SET NLS_DATE_FORMAT ='YYYY-MM-DD';


INSERT INTO Trips VALUES(101010,'Aerodromio - Periferiaki Ymittou', 3,NULL);

INSERT INTO Stops VALUES(001,'Kifisia');
INSERT INTO Stops VALUES(002,'Kat');
INSERT INTO Stops VALUES(003,'Marousi');
INSERT INTO Stops VALUES(004,'Neratziotisa');
INSERT INTO Stops VALUES(005,'Eirini');


INSERT INTO Trips VALUES(111111,'Kifisia - Neo Irakleio',3,NULL);

INSERT INTO Stops VALUES(006,'Neo Irakleio');
INSERT INTO Stops VALUES(007,'Nea Ionia');
INSERT INTO Stops VALUES(008,'Peukakia');
INSERT INTO Stops VALUES(009,'Perissos');
INSERT INTO Stops VALUES(010,'Ano Patisia');


INSERT INTO Trips VALUES(121212,'Aerodromio - Doukisis Plakentias',3,NULL);

INSERT INTO Stops VALUES(011,'Agios Eleutherios');
INSERT INTO Stops VALUES(012,'Kato Patisia');
INSERT INTO Stops VALUES(013,'Agios Nikolaos');
INSERT INTO Stops VALUES(014,'Attiki');
INSERT INTO Stops VALUES(015,'Viktoria');


INSERT INTO Trips VALUES(131313,'Aerodromio - Doukisis Plakentias',1,NULL);

INSERT INTO Stops VALUES(016,'Omonoia');
INSERT INTO Stops VALUES(017,'Monastiraki');
INSERT INTO Stops VALUES(018,'Thiseio');
INSERT INTO Stops VALUES(019,'Petralona');
INSERT INTO Stops VALUES(020,'Tauros');


INSERT INTO Trips VALUES(141414,'Aerodromio - Doukisis Plakentias',1,NULL);

INSERT INTO Stops VALUES(021,'Aerodromio');
INSERT INTO Stops VALUES(022,'Koropi');
INSERT INTO Stops VALUES(023,'Paiania');
INSERT INTO Stops VALUES(024,'Pallini');
INSERT INTO Stops VALUES(025,'Doukisis Plakentias');


INSERT INTO Trips VALUES(151515,'Aerodromio - Doukisis Plakentias',1,NULL);

INSERT INTO Stops VALUES(026,'Xalandri');
INSERT INTO Stops VALUES(027,'Agia Paraskeui');
INSERT INTO Stops VALUES(028,'Nomismatokopeio');
INSERT INTO Stops VALUES(029,'Cholargos');
INSERT INTO Stops VALUES(030,'Ethniki Amyna');


INSERT INTO Service VALUES (5,101010);
INSERT INTO Service VALUES (6,111111);
INSERT INTO Service VALUES (7,121212);
INSERT INTO Service VALUES (8,131313);
INSERT INTO Service VALUES (9,141414);
INSERT INTO Service VALUES (10,151515);

INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,101010);
INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,111111);
INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,121212);
INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,131313);
INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,141414);
INSERT INTO Frequencies VALUES('06:00am','01:00am',1200,151515);

INSERT INTO Stop_times VALUES( 1, 001, 101010, '06:15:00');
INSERT INTO Stop_times  VALUES( 5, 002, 101010,'06:35:00');
INSERT INTO Stop_times  VALUES( 6, 003, 101010,'06:55:00');
INSERT INTO Stop_times  VALUES( 7, 004, 101010,'07:15:00');
INSERT INTO Stop_times  VALUES( 8, 005, 101010,'07:35:00');

INSERT INTO Stop_times VALUES( 7, 006, 111111,'07:55:00');
INSERT INTO Stop_times VALUES( 9, 007, 111111,'08:15:00');
INSERT INTO Stop_times VALUES( 12, 008, 111111,'08:35:00');
INSERT INTO Stop_times VALUES( 14, 009, 111111,'08:55:00');
INSERT INTO Stop_times VALUES( 19, 010, 111111,'09:15:00');

INSERT INTO Stop_times VALUES( 21, 011, 121212,'09:35:00');
INSERT INTO Stop_times VALUES( 22, 012, 121212,'09:55:00');
INSERT INTO Stop_times VALUES( 23, 013, 121212,'10:15:00');
INSERT INTO Stop_times VALUES( 29, 014, 121212,'10:35:00');
INSERT INTO Stop_times VALUES( 30, 015, 121212,'10:55:00');

INSERT INTO Stop_times VALUES( 32, 016, 131313,'11:15:00');
INSERT INTO Stop_times VALUES( 36, 017, 131313,'11:35:00');
INSERT INTO Stop_times VALUES( 37, 018, 131313,'11:55:00');
INSERT INTO Stop_times VALUES( 38, 019, 131313,'12:15:00');
INSERT INTO Stop_times VALUES( 42, 020, 131313,'12:35:00');

INSERT INTO Stop_times VALUES( 45, 021, 141414,'12:55:00');
INSERT INTO Stop_times VALUES( 48, 022, 141414,'13:15:00');
INSERT INTO Stop_times VALUES( 49, 023, 141414,'13:35:00');
INSERT INTO Stop_times VALUES( 51, 024, 141414,'13:55:00');
INSERT INTO Stop_times VALUES( 56, 025, 141414,'14:15:00');

INSERT INTO Stop_times VALUES( 57, 026, 151515,'14:35:00');
INSERT INTO Stop_times VALUES( 58, 027, 151515,'14:55:00');
INSERT INTO Stop_times VALUES( 59, 028, 151515,'15:15:00');
INSERT INTO Stop_times VALUES( 61, 029, 151515,'15:35:00');
INSERT INTO Stop_times VALUES( 62, 030, 151515,'15:55:00');



INSERT INTO Calendar VALUES('Kathimerines',5,'2023-01-01','2023-12-29',101010);
INSERT INTO Calendar VALUES('Sabbato',6,'2023-01-01','2023-12-29',111111);
INSERT INTO Calendar VALUES('Kiriakes/Argies',7,'2023-01-01','2023-12-29',121212);

INSERT INTO Calendar VALUES('Kathimerines',8,'2023-01-01','2023-12-29',131313);
INSERT INTO Calendar VALUES('Sabbato',9,'2023-01-01','2023-12-29',141414);
INSERT INTO Calendar VALUES('Kiriakes/Argies',10,'2023-01-01','2023-12-29',151515);


UPDATE TRIPS set service_id_trips = 5 WHERE trips_id = 101010;
UPDATE TRIPS set service_id_trips = 6 WHERE trips_id = 111111;
UPDATE TRIPS set service_id_trips = 7 WHERE trips_id = 121212;
UPDATE TRIPS set service_id_trips = 8 WHERE trips_id = 131313;
UPDATE TRIPS set service_id_trips = 9 WHERE trips_id = 141414;
UPDATE TRIPS set service_id_trips = 10 WHERE trips_id = 151515;

/* Here we print all the tables with their values for each attribute that has been inserted */

SELECT * FROM Fare_Rules;
SELECT * FROM Fare_attributes;
SELECT * FROM Service;
SELECT * FROM Calendar_Types;

SELECT * FROM Stop_Times;
SELECT * FROM Stops;

SELECT * FROM Trips;
SELECT * FROM Frequencies;
SELECT * FROM Calendar;

SELECT * FROM Routes;
SELECT * FROM Agency;

COMMIT;

