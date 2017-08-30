drop database if exists kidsnest;
create database kidsnest;
use kidsnest;
create table accounts(user_name varchar(20) not null, active varchar(1) not null, password varchar(20) not null, user_role varchar(20) not null, mobile_number varchar(15), create_date timestamp default current_timestamp) ;
alter table accounts add primary key (user_name);
create table kid(id mediumint not null auto_increment primary key, kid_name varchar(30) not null, dateofbirth varchar(20) not null, gender varchar(6) not null, user_name varchar(20) not null);
alter table kid add constraint kid_accounts_fk foreign key (user_name) references accounts (user_name);