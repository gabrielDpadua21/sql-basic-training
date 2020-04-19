/*
 * 
 * PRACTICE OF COMMAND SELECT, UPDATE AND DELETE
 * 
 */

/* COLABORATORS */

insert into tb_colaborators values(null, 'fernando', 2400, 'TI');

insert into tb_colaborators values(null, 'guilherme', 2500, 'OPERACOES');

insert into tb_colaborators (name, salary, departament) values ('Fabio', 3000, 'DEV');

insert into tb_colaborators (name, salary, departament) values ('Jose', 3000, 'Marketing');

insert into tb_colaborators (name, salary, departament) values ('Isabela', 3000, 'DEV');

/* CARS */

insert into tb_cars (id_colaborator, car_name, plaque) values (1, 'Ferrari', 'XXX-999');

insert into tb_cars (id_colaborator, car_name, plaque) values(1, 'Porche', 'ZZZ-000');

/* MORE INSERTS */

insert into tb_colaborators values(null, 'Mario', 10000, 'DS');
insert into tb_colaborators values(null, 'Gabriel', 12000, 'DS');
insert into tb_colaborators values(null, 'Fabio', 10000, 'DE');
insert into tb_colaborators values(null, 'Cristiane', 8000, 'BI');


insert into tb_salarys values('Programmer', 2000, 4000);
insert into tb_salarys values('Software Engineer', 3000, 10000);
insert into tb_salarys values('Software Architect', 5000, 18000);
insert into tb_salarys values('Data Scientist', 3000, 20000);
insert into tb_salarys values('Data Engineer', 5000, 20000);
insert into tb_salarys values('DevOps Engineer', 6000, 25000);

insert into tb_cars values(null, 3, 'Maserati', 'DDD-999');
insert into tb_cars values(null, 5, 'Land Hover', 'AAAA-123');
insert into tb_cars values(null, 6, 'Ferrari Spider', 'ABCF-432');
insert into tb_cars values(null, null, 'Dodge Viper', 'GGGG-777');

insert into tb_cpfs values(1, '00000000');
insert into tb_cpfs values(2, '00011111');
insert into tb_cpfs values(3, '00000001');
insert into tb_cpfs values(5, '11111110');

insert into tb_clients values(null, 'Julia', null);
insert into tb_clients values(null, 'Fernanda', 1);
insert into tb_clients values(null, 'Mario', 2);
insert into tb_clients values(null, 'Luna', 3);

/*
 * 
 * FILTERS
 * 
 * */

select * from tb_colaborators;

select * from tb_cars;

select * from tb_colaborators where salary > 2500;

select car_name as Carro, plaque as Placa from tb_cars c where c.id = 1;

select * from tb_colaborators where id = 1 union all select * from tb_cars tc where id = 1;

/*
 * 
 * UPDATES AND NOT SECURITY OPERATOR
 * 
 * 
 * */

SET SQL_SAFE_UPDATES = 0;

update tb_colaborators 
set salary = salary * 1.1;

update tb_colaborators 
set salary = round(salary * 1.1);

SET SQL_SAFE_UPDATES = 1;

/* CARS */

update tb_cars
set id_colaborator = 2
where id = 2;

/*
 * 
 * DELETES
 * 
 * */ 

delete from tb_colaborators where id = 4;






