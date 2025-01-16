create database Project ;
use project;

create table driver (
driver_id int primary key ,
driver_name varchar(255),
age int ,
Vecle_type varchar(255),
charge int,
availability varchar(255)
);

create table passenger (
starting_point varchar(255),
ending_point varchar(255),
price int,
driver_name varchar(255),
driver_id int primary key,
foreign key(driver_id) references driver(driver_id)
);

select * from driver left join passenger on
driver.driver_id = driver.driver_id;

select * from driver left join passenger on
driver.driver_id = driver.driver_id where Vecle_type = "Hatchback" and availability = 'Available';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where starting_point = "Philadelphia" and ending_point = 'Washington DC';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where charge = 12 ;

select * from driver left join passenger on
driver.driver_id = driver.driver_id where age = 42;

select * from driver left join passenger on
driver.driver_id = driver.driver_id where starting_point = 'Seattle' and ending_point = 'Portland';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where starting_point = 'Los Angeles' and ending_point = 'San Francisco';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where starting_point = 'Miami' and ending_point = 'Orlando';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where Vecle_type = 'SUV' and availability = 'Available';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where Vecle_type = 'Sedan' and starting_point = 'Phoenix' and ending_point = 'Las Vegas';

select * from driver left join passenger on
driver.driver_id = driver.driver_id where Vecle_type = 'Electric' and availability = 'Available';