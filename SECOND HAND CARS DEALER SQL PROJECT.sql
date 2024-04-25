create schema cars;
use cars;

-- Read data --
select* from car_dekho;

-- Total cars:To get a count of total records --
select count(*) from car_dekho;

-- The Manager asked the employee how many cars will be available in 2023 --
select count(*) from car_dekho where year=2023;

-- The Manager asked the employee how many cars will be available in 2020,2021,2022 --
select count(*) from car_dekho where year=2020; #74
select count(*) from car_dekho where year=2021; #7
select count(*) from car_dekho where year=2022; #7
--- Group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- client ask me to print the total of all cars by year.i don't see all the details --
select year,count(*) from car_dekho group by year;

-- client ask to car dealer agent how many diesel cars will there be in 2020? --
select count(*) from car_dekho where year=2020 and fuel ='diesel';

-- clients request a car dealer agent how many petrol cars will there be in 2020? --
select count(*) from car_dekho where year=2020 and fuel ='petrol';

-- the manager told the employee to give a print all the fuel cars(petrol,diesel,CNG) come by all year --
select year,count(*) from car_dekho where  fuel ='petrol' group by year;
select year,count(*) from car_dekho where  fuel ='diesel' group by year;
select year,count(*) from car_dekho where  fuel ='CNG' group by year;

 -- the manager said there where more than 100 cars in a given year,which year had more than 100 cars? --
 select year,count(*) from car_dekho group by year having count(*)>100;
 
 -- the manager said to the employee all cars count details between 2015 and 2023;we need to complete a list --
 select count(*) from car_dekho where year between 2015 and 2023;
 
-- the manager said to the employee all cars  details between 2015 and 2023;we need to complete a list --
 select * from car_dekho where year between 2015 and 2023;
 
 --- END --



