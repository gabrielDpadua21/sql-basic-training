create database db_practice;

use db_practice;

create table tb_colaborators(
  	id int unsigned not null auto_increment primary key,
  	name varchar(45) not null,
  	salary double not null default '0',
  	departament varchar(45) not null
);

create table tb_cars(
	id int unsigned not null auto_increment primary key,
	id_colaborator int unsigned default null,
	car_name varchar(45) not null default '',
	plaque varchar(10) not null default '',
	constraint fk_cars_colaborators foreign key (id_colaborator) references tb_colaborators (id)
);

create table tb_salarys(
	range_sal varchar(45) not null primary key,
	init double not null,
	end double not null
);


show tables;






