create table flight(
flight_no  int primary key auto_increment,
flight_name varchar(150) not null,
Flight_descrpt varchar(150) not null,
flight_totalcapacity int not null,
etc varchar(150));



create table passenger(
passenger_id int primary key auto_increment,
name varchar(50) not null,
user_name varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
mobile int not null,
adress varchar(100),
dob date);



create  table flight_schedule (
schedule_id int primary key auto_increment,
flight_from varchar(150) not null,
flight_to  varchar(150) not null,
flight_date date,
flight_time time ,
cost int not null,
flight_number int ,
constraint FK_flight_schedule_flight_number foreign key
(flight_number) references flight(flight_no ) on delete set null);



create table bookticket(
ticket_number  int primary key auto_increment,
date_of_booking int not null,
date_of_travel date,
flight_from varchar(50),
flight_to varchar(50),
flight_time time,
flight_seat int,
flight_number int,
constraint FK_booktkt_flightnumber foreign key
(flight_number) references flight(flight_no ) on delete set null,
  passenger_id int,
constraint FK_booktkt_passengerid foreign key
(passenger_id) references passenger(passenger_id ) on delete set null);