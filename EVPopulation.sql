-- dbtesting.Electric_Vehicle_Population_Data definition

CREATE TABLE `Electric_Vehicle_Population_Data` (
  `VIN (1-10)` blob,
  `County` text,
  `City` text,
  `State` text,
  `Postal Code` text,
  `model_year` year DEFAULT NULL,
  `Make` text,
  `Model` blob,
  `Electric Vehicle Type` text,
  `CAFV` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `electric_range` blob,
  `Base MSRP` int DEFAULT NULL,
  `Legislative District` text,
  `DOL Vehicle ID` blob,
  `Vehicle Location` text,
  `electric_utility` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `2020 Census Tract` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/* Which electric utility has the most electric vehicles registered? */
SELECT Make, Model, COUNT(*) AS N_Vehicles
FROM Electric_Vehicle_Population_Data evpd 
GROUP BY Model, Make
ORDER BY N_Vehicles DESC 
LIMIT 1;


/* Which electric utility has the most electric vehicles registered? */
SELECT COUNT(electric_utility) AS me, electric_utility 
FROM Electric_Vehicle_Population_Data evpd
GROUP BY electric_utility
ORDER BY me DESC;


/*How many electric vehicles have a range of more than 200 miles? */
SELECT COUNT( *) AS High_Range_Vehicles
FROM Electric_Vehicle_Population_Data evpd
WHERE electric_range > 200;

/*How many electric vehicles are eligible for the Clean Alternative Fuel Vehicle
(CAFV) program */
SELECT COUNT( *) AS CAFV_Vehicle
FROM Electric_Vehicle_Population_Data evpd
WHERE CAFV = 'Clean Alternative Fuel Vehicle Eligible'

/* What is the average electric range of all the electric vehicles in the dataset? */
SELECT County,COUNT( *) AS No_of_EV
FROM Electric_Vehicle_Population_Data evpd
GROUP BY County
ORDER BY NO_of_EV DESC
LIMIT 1;

/* What is the percentage increase in electric vehicle registrations from 2020 to 2021 for each state in the United States */
SELECT State, County, num_vehicles_2021, num_vehicles_2020,
CASE WHEN num_vehicles_2020 > 0 THEN
((num_vehicles_2021 - num_vehicles_2020) / num_vehicles_2020) * 100
END AS percentage_increase
FROM (
SELECT State, County,
SUM(CASE WHEN model_year = 2021 THEN 1 ELSE 0 END) AS num_vehicles_2021,
SUM(CASE WHEN model_year = 2020 THEN 1 ELSE 0 END) AS num_vehicles_2020
FROM Electric_Vehicle_Population_Data
WHERE model_year IN (2020, 2021)
GROUP BY State, County
HAVING num_vehicles_2020 > 0
) AS subquery
ORDER BY percentage_increase DESC;


/* Which state has the highest number of electric vehicles registered, and how many are there */
SELECT County, COUNT(*) AS NO_VEHICLES FROM Electric_Vehicle_Population_Data
WHERE State = 'CA'
GROUP BY County 
ORDER BY NO_VEHICLES DESC;


/* What is the total number of electric vehicles registered in each state in the United States?*/
SELECT state, COUNT(State) AS NO_VEHICLES 
FROM Electric_Vehicle_Population_Data evpd
GROUP BY state
ORDER BY NO_VEHICLES DESC;



