create schema cars;
use cars;
-- read data --
select*from car_dekho;
-- total cars to get a count of total records -- 
select*from car_dekho;
-- the manager asked  employee how many cars will be available in 2023?-
select count (*) from car_dekho where year = 2023;
-- the manager asked the employee how many cars is  available 2020,2021,2022--
select count(*) from car_dekho where year = 2020;  #74
select count(*) from car_dekho where year = 2021;  #7
select count(*) from car_dekho where year = 2022;  #7
-- group by --
select count(*) from car_dekho where in  (2020,2021,2022)group by years;
-- client asked me to print the total no of all cars by year . I dont see all the details . --
select year , count(*)from car_dekho group by year;
-- client asked the  car dealer agent how many desiel cars will be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = 'diesel';
-- Cient   request a car dealer agent how many petrol cars will  there be in 2020?--
select count(*)  from car_dekho where year = 2020 and fuel = 'petrol'; # 51
-- the manager told  the employee to give a print all the fuels cars (petrol , diesel, cng) come by all the year.--
select year ,count(*) from car_dekho where fuel = 'petrol' group by year;
select year ,count(*) from car_dekho where fuel =  "diesel "group  by year;
select year ,count(*) from car_dekho where fuel =  'cng 'group  by year;

-- the manager said there were more then 100 cars in a given year , which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100; 
select year, count(*) from car_dekho group by year having count(*)<50;
-- the manager said  to the employee All cars details between 2015  and 2023; we need a complete list.--
select count(*) from car_dekho where year between 2015 and 2023; 

-- the manager said  to the employee  all cars detail between 2015 to 2023 we need complete list --
select*from car_dekho where year between 2015 and 2023;

-- end --


