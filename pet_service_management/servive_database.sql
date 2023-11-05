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
rolesdelete_account bit(1) default 0,
id_role int default 1,
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
email varchar(50) not null,
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
unit varchar(10 )not null,
delete_service bit(1) default 0
);
create table if not exists booking_status(
booking_id_status int auto_increment primary key,
booking_name_status varchar(50) not null
);
create table if not exists booking(
id_booking int auto_increment primary key,
id_pet int not null,
id_employee int not null,
start_time datetime not null,
end_time datetime not null,
booking_id_status int default 1,
foreign key(id_pet) references pet(id_pet),
foreign key(id_employee) references employees(id_employee),
foreign key(booking_id_status) references booking_status(booking_id_status)
);

create table if not exists detail_service(
id_detail_service int auto_increment primary key,
id_booking int not null,
id_service int not null,
quantity int default 0,
foreign key (id_booking) references booking(id_booking),
foreign key (id_service) references service(id_service)
);
-- thêm dữ liệu test
INSERT INTO roles (roles) VALUES ('Customer');
INSERT INTO roles (roles) VALUES ('Admin');
INSERT INTO roles (roles) VALUES ('Employee');

INSERT INTO accounts (username, `password`, id_role) VALUES ('admin_user', 'admin_password', 1);
INSERT INTO accounts (username, `password`, id_role) VALUES ('employee_user', 'employee_user', 2);
INSERT INTO accounts (username, `password`, id_role) VALUES ('customer_user', 'customer_password', 3);
INSERT INTO type_customer (name_type_customer) VALUES ('Regular');
INSERT INTO type_customer (name_type_customer) VALUES ('VIP');
INSERT INTO type_pet (name_type_pet) VALUES ('Dog');
INSERT INTO type_pet (name_type_pet) VALUES ('Cat');
INSERT INTO employees (employee_name, birthday, phone_number,email, address, identification_card, salary, id_account) 
VALUES ('John Huu', '1990-01-01', '1234567891','huu@gmail.com', '123 Main St', 'ABC123426', 3000, 1);
INSERT INTO service (service_name, service_price, unit) VALUES ('Grooming', 50, 1);
INSERT INTO service (service_name, service_price, unit) VALUES ('Vaccination', 30, 1);
INSERT INTO booking_status (booking_name_status) VALUES ('Pending');
INSERT INTO booking_status (booking_name_status) VALUES ('Completed');
INSERT INTO booking_status (booking_name_status) VALUES ('Cancel');
INSERT INTO customer (name_customer, phone_number, email, address, gender,id_type_customer, id_account) 
VALUES ('John Doe', '1234567890', 'john.doe@example.com', '123 Main St', 0,1, 1);
INSERT INTO customer (name_customer, phone_number, email, address,gender, id_type_customer, id_account) 
VALUES ('Jane Smith', '9876543210', 'jane.smith@example.com', '456 Elm St',1 ,2, 2);
INSERT INTO pet (name_pet, weight, descriptions, id_type_pet, id_customer) 
VALUES ('Max', 10, 'Friendly and playful', 1, 1);
INSERT INTO pet (name_pet, weight, descriptions, id_type_pet, id_customer) 
VALUES ('Fluffy', 8, 'Loves to cuddle', 2, 2);
INSERT INTO booking (id_pet, id_employee, start_time, end_time, booking_id_status) 
VALUES ( 1, 1, '2023-11-02 10:00:00', '2023-11-02 12:00:00', 1);
INSERT INTO booking (id_pet, id_employee, start_time, end_time, booking_id_status) 
VALUES (2, 1, '2023-11-03 14:00:00', '2023-11-03 16:00:00', 2);
INSERT INTO detail_service (id_service, id_booking, quantity) VALUES (1, 1, 1);
INSERT INTO detail_service (id_service, id_booking, quantity) VALUES (2, 2, 1);


