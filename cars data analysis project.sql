use cars;

-- reading a dataset
SELECT * FROM car_dekho;

-- which years are there in dataset
select distinct(year) from car_dekho;

-- checking fuel type 
select distinct(fuel) from car_dekho;

-- checking owners
select distinct(owner) from car_dekho;

-- checking maximum mileage
select max(mileage) from car_dekho;

-- renaming table name
alter table car_dekho
rename to cars_collection;


-- fetching data from new table
select * from cars_collection;


-- how many cars available in 2023
select count(*) from cars_collection where year = 2023;

-- how many cars available in 2020,2021,2022

select count(*) from cars_collection where year in (2020,2021,2022);
select year, count(*) from cars_collection where year in (2020,2021,2022) group by year;

-- print total cars by year

select year, count(name) as carCount from cars_collection group by year;

-- checking how many diesel car are there in 2020
select count(*) from cars_collection where fuel = 'diesel' and year = 2020;

-- max car selling year
select count(*) from cars_collection where year = 2017;

-- print all the fuel cars come by all year
-- for petrol 
select year, count(*) as car_count from cars_collection where fuel= 'petrol' group by year;

-- for diesel
select year, count(*) as car_count from cars_collection where fuel= 'diesel' group by year;

-- for cng
select year, count(*) as car_count from cars_collection where fuel= 'cng' group by year;

-- in which year there is car count more than 1000
select * from cars_collection;
select year, count(name) as car_count from cars_collection group by year having car_count >1000;

--  cars less than 200
select year, count(*) as carCount from cars_collection group by year having carCount < 200;

-- list all the cars details between year 2015 to 2023;

select * from cars_collection where year between 2015 and 2023;










