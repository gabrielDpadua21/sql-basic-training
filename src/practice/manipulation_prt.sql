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






