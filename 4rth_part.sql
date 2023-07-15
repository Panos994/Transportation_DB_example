--4th part

--4.1 
/*This query gives an output of 5 stop stations for first trip and first route which is recognized by the first
        trips_id and first routes_id (101010 and 3) in our file with the insert of our data */

SELECT stop_name
FROM Routes JOIN Trips ON Routes.routes_id = Trips.route_id_trips  
            JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
            JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
WHERE routes_id = 3 AND trips_id = 101010;

--4.2

/* This query give as an output the departure time for the first trip of Sunday and the first route for Sunday. 
The last stop is depicted by the 030 stop_id_times which is inherited from entity Stops .

*/
SELECT departure_time
FROM Trips JOIN Routes ON Trips.route_id_trips = Routes.routes_id
           JOIN Service ON Trips.trips_id = Service.trips_id_service
           JOIN Calendar ON Service.service_id = calendar.service_days_id
           JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
WHERE trips_id = 151515
AND routes_id = 1
AND days = 'Kiriakes/Argies'
AND stop_id_times = 030;

--4.3

/* This query gives an output of the total stop names for each trip for each route. The use of JOIN can connect entities together and for this query we need to combine
    the entities of Stops, Trips, Routes.
 */

SELECT COUNT (stop_name) AS Number_of_Stops, trips_id, routes_id
FROM Routes JOIN Trips ON Routes.routes_id = Trips.route_id_trips  
            JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
            JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
GROUP BY routes_id, trips_id; 

--4.4

/* This query give the trips_id and routes_id of a stop name of our choice on Sundays. We use multiple JOINS in order
to combine the appropriate relationships. 

*/
SELECT stop_name, trips_id, routes_id
FROM Trips JOIN Stop_times ON Trips.trips_id = Stop_times.trip_id_stop_t
           JOIN Stops ON Stop_times.stop_id_times = Stops.stop_id
           JOIN Routes ON Trips.route_id_trips = Routes.routes_id
           JOIN Service ON Trips.trips_id = Service.trips_id_service
           JOIN Calendar ON Service.service_id = calendar.service_days_id
WHERE stop_name = 'Cholargos' 
AND days = 'Kiriakes/Argies';

--4.5

/* This query give the output of the agency name which serves the specific trip (Kifisia - Neo Irakleio). We use the 
attribute trips_short_name for the recognition of the name of the trip. 

*/
SELECT  trips_short_name, agency_id
FROM Routes JOIN Agency ON Routes.agency_id_route = Agency.agency_id
            JOIN Trips ON Routes.routes_id = Trips.route_id_trips
WHERE trips_short_name = 'Kifisia - Neo Irakleio';             

