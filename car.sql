CREATE DATABASE cars;
use cars;
-- reads cars data--  
select * from car_dekho;
-- Total Cars: To get a count of total records-- 
SELECT COUNT(*) FROM car_dekho;
-- The manager asked the employee How many cars will be available in 2023?--  
SELECT COUNT(*) FROM car_dekho WHERE year=2023;

-- The manager asked the employee How many cars is available in 2020,2021,2022-- 
SELECT COUNT(*) FROM car_dekho WHERE year=2020;
SELECT COUNT(*) FROM car_dekho WHERE year=2021;
SELECT COUNT(*) FROM car_dekho WHERE year=2022;
-- grp by--
 SELECT COUNT(*) FROM car_dekho WHERE year in (2020,2021,2022) GROUP BY year;

-- Clint asked me to print the total of all cars by year. I don't see all the details.-- 

SELECT year,COUNT(*) FROM car_dekho GROUP BY year;

-- Clint asked to car dealer agent How many diesel cars will there be in 2020?-- 
SELECT COUNT(*) FROM car_dekho WHERE year=2020 and fuel="Diesel";

-- Clint requested a car dealer agent How many petrol cars will there be in 2020?-- 
SELECT COUNT(*) FROM car_dekho WHERE year=2020 and fuel="Petrol";

-- The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.-- 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel="petrol" GROUP BY year;
SELECT year,COUNT(*) FROM car_dekho WHERE fuel="Diesel" GROUP BY year;
SELECT year,COUNT(*) FROM car_dekho WHERE fuel="CNG" GROUP BY year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*)>100;

-- The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.-- 

SELECT  COUNT(*) FROM car_dekho WHERE year between 2015  and 2023;

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list--
SELECT  * FROM car_dekho WHERE year between 2015  and 2023;
 