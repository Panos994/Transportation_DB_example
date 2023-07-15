--CREATE

/*
	We include all the attributes and tables accordingly to our relational schema and the exercise.
*/

CREATE TABLE Agency(

	agency_id NUMBER(10) PRIMARY KEY,
	timezone VARCHAR(20),
	email VARCHAR(20),
	phone VARCHAR(15),
	url VARCHAR(200),
	name VARCHAR(30)
    
);

CREATE TABLE Routes(

	agency_id_route NUMBER(10),
	routes_id NUMBER(15) PRIMARY KEY,
	long_name VARCHAR(60),
	type VARCHAR(40),
	CONSTRAINT route_agency_fk FOREIGN KEY(agency_id_route) REFERENCES Agency(agency_id)

);

CREATE TABLE Routes_Type(

	routes_id_type NUMBER(15),
	type VARCHAR(35),
	CONSTRAINT route_type_fk FOREIGN KEY(routes_id_type) REFERENCES Routes(routes_id)

);

CREATE TABLE Fare_Rules(

	fare_id NUMBER(10) PRIMARY KEY,
	fare_rules_route_id NUMBER(15),
	CONSTRAINT fare_rules_routes_id_fk FOREIGN KEY(fare_rules_route_id) REFERENCES Routes(routes_id) 

);

CREATE TABLE Prosdiorizontai(

	fare_id_defined NUMBER(10),
	CONSTRAINT defined_fare_id_fk FOREIGN KEY(fare_id_defined) REFERENCES Fare_Rules(fare_id)

);

CREATE TABLE Fare_attributes(

	payment_method VARCHAR(80),
	price number(20) NOT NULL,
	currency_type VARCHAR(20) NOT NULL,
	transfers VARCHAR(20) NOT NULL,
	fare_id_attributes NUMBER(10) NOT NULL,
	CONSTRAINT attribute_fare_id FOREIGN KEY(fare_id_attributes) REFERENCES Fare_Rules(fare_id)

);

CREATE TABLE Fare_methods(

	payment_method VARCHAR(10),
	fare_payment VARCHAR(15)

);

CREATE TABLE Trips(

    trips_id NUMBER(10) PRIMARY KEY,
    trips_short_name VARCHAR(65),
    route_id_trips NUMBER(10),
    CONSTRAINT trips_route_fk FOREIGN KEY(route_id_trips) REFERENCES Routes(routes_id)

);

CREATE TABLE Service(

	service_id NUMBER(30) PRIMARY KEY,
	trips_id_service NUMBER(10) ,
	CONSTRAINT service_trips_fk FOREIGN KEY(trips_id_service) REFERENCES Trips(trips_id)

);

ALTER TABLE Trips ADD (

    service_id_trips NUMBER(30),
    CONSTRAINT trips_service_fk FOREIGN KEY(service_id_trips) REFERENCES Service(service_id)   
    
);

CREATE TABLE Calendar(

	days VARCHAR(40),
	service_days_id number(30),
	start_date DATE NOT NULL,
	end_date DATE NOT NULL ,
	Calendar_trips_id  NUMBER(10),	
	CONSTRAINT days_service_fk FOREIGN KEY(service_days_id) REFERENCES Service(service_id),
	CONSTRAINT days_trips_fk FOREIGN KEY(Calendar_trips_id) REFERENCES Trips(trips_id)

);

CREATE TABLE Calendar_days(

	days_Cal VARCHAR(25),
	Daily_services VARCHAR(10)

);

CREATE TABLE Calendar_dates(

	cdate DATE NOT NULL,
	exception_type NUMBER(10) NOT NULL,
	service_id_cl NUMBER(30),
	CONSTRAINT calendar_dates_serv_fk FOREIGN KEY(service_id_cl) REFERENCES Service(service_id)

);

CREATE TABLE Calendar_types(

	exception_Type_ct VARCHAR(80),
	exceptions_calendar VARCHAR(20)

);

CREATE TABLE Stops(
	stop_id NUMBER(10) PRIMARY KEY,
	stop_name VARCHAR(20)

);

CREATE TABLE Stop_times(
	
	stop_sequence VARCHAR(10),
	stop_id_times NUMBER(10),
	trip_id_stop_t NUMBER(10),
	departure_time VARCHAR (30),
	CONSTRAINT stop_t_trip_fk FOREIGN KEY(trip_id_stop_t) REFERENCES Trips(trips_id),
	CONSTRAINT stop_t_fk FOREIGN KEY(stop_id_times) REFERENCES Stops(stop_id)

);

CREATE TABLE Frequencies(

	start_time VARCHAR(10) NOT NULL,
	end_time VARCHAR(10) NOT NULL,
	headway_secs VARCHAR(10) ,
	trip_id_Fr NUMBER(10) ,
	CONSTRAINT fr_t_trip_fk FOREIGN KEY(trip_id_Fr) REFERENCES Trips(trips_id)

);

CREATE TABLE Transfers(

	from_stop_id NUMBER(10),
	to_stop_id NUMBER(10),
	type_of_transfer VARCHAR(10),
	stop_id_tr NUMBER(10),
	CONSTRAINT stop_TR_fr FOREIGN KEY(stop_id_tr) references Stops(stop_id)

);

CREATE TABLE Anafora(

	stop_id_mention NUMBER(10),
	CONSTRAINT mention_stop_fk FOREIGN KEY(stop_id_mention) REFERENCES Stops(stop_id)

);