drop database if exists pet_store;
create database if not exists pet_store;
use pet_store;
create table if not exists roles(
id_role int auto_increment primary key,
roles varchar(50) unique not null
);
create table if not exists accounts(
id_account int auto_increment primary key,
username varchar(50) unique not null,
`password` varchar(50) not null,
id_role int default 2,
foreign key(id_role) references roles(id_role)
);
create table type_customer(
id_type_customer int primary key auto_increment,
name_type_customer varchar(50) not null
);
create table customer(
id_customer int primary key auto_increment,
name_customer varchar(50) not null,
birthday date,
phone_number varchar(50) not null,
email varchar(50) not null,
address varchar(200) not null,
gender bit(1) not null,
id_type_customer int default 1,
id_account int not null,
delete_customer bit(1) default 0,
foreign key (id_account) references accounts(id_account),
foreign key (id_type_customer) references type_customer(id_type_customer)
);
create table type_pet(
id_type_pet  int primary key auto_increment,
name_type_pet varchar(50) not null
);
create table pet(
id_pet int primary key auto_increment,
name_pet varchar(50) not null,
weight int not null,
descriptions text,
id_type_pet int not null,
id_customer int not null,
delete_pet bit(1) default 0,
foreign key (id_type_pet) references type_pet(id_type_pet),
foreign key (id_customer) references customer(id_customer)
);
create table employees(
id_employee int primary key auto_increment,
employee_name varchar(50),
birthday date,
phone_number varchar(10) not null,
address varchar(50) not null,
identification_card varchar(12) not null,
salary int,
id_account int not null,
delete_employee bit(1) default 0,
foreign key (id_account) references accounts(id_account),
unique(phone_number,identification_card)
);
create table if not exists service(
id_service int auto_increment primary key,
service_name varchar(50) not null,
service_price int not null,
unit varchar(10 )not null
);
create table if not exists `status`(
id_status int auto_increment primary key,
name_status varchar(50) not null
);
create table if not exists booking(
id_booking int auto_increment primary key,
id_pet int not null,
id_employee int not null,
start_time datetime not null,
end_time datetime not null,
id_status int default 1,
foreign key(id_pet) references pet(id_pet),
foreign key(id_employee) references employees(id_employee),
foreign key(id_status) references `status`(id_status)
);

create table if not exists detail_service(
id_detail_service int auto_increment primary key,
id_booking int not null,
id_service int not null,
quantity int default 0,
foreign key (id_booking) references booking(id_booking),
foreign key (id_service) references service(id_service)
);