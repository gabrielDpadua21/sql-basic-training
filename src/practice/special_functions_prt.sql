/*
*
*  SPECIAL FUNCTIONS
*
*/

/* COUNT */

select count(*) from tb_colaborators;
select count(*) from tb_cars;
select count(*) from tb_clients;
select count(*) from tb_cpfs;
select count(*) from tb_salarys;

select count(*) as 'TOTAL' from tb_colaborators where salary > 2000;

/* SUM */

select sum(salary) from tb_colaborators;

select sum(salary) as "SOMA DE SALARIOS DEVS"
from tb_colaborators
where departament = 'DEV';

select sum(salary) as "SOMA DE SALARIOS DS"
from tb_colaborators
where departament = 'DS';

/* AVG (MEDIA) */

select avg(salary) as 'MEDIA DE SALARIOS DA EMPRESA'
from tb_colaborators;

select avg(salary) as 'MEDIA DE SALARIOS DE DEVS'
from tb_colaborators
where departament = 'DEV';

select avg(salary) as 'MEDIA DE SALARIO DE DATA SCIENCE'
from tb_colaborators
where departament = 'DS';

/* MAX */

select max(salary) as 'MAIOR SALARIO DA EMPRESA'
from tb_colaborators;

select max(salary) as 'MAIOR SALARIO DOS DEVS'
from tb_colaborators
where departament = 'DEV';

select max(salary) as 'MAIOR SALARIO DE DATASCIENCE'
from tb_colaborators
where departament = 'DS';

/* MIN */

select min(salary) AS 'MENOR SALARIO DA EMPRESA'
from tb_colaborators;

select min(salary) as 'MENOR SALARIO DE DEVS'
from tb_colaborators
where departament = 'DEV';

select min(salary) as 'MENOR SALARIO DE DATASCIENCE'
from tb_colaborators
where departament = 'DS';

/* DISTINCT */

select distinct(departament) from tb_colaborators;

/* ORDER BY */

select * from tb_colaborators order by name;

select * from tb_colaborators order by name desc;

select * from tb_colaborators order by departament;

select * from tb_colaborators order by salary;


/* PAGINATION (LIMIT, OFFSET) */

select * from tb_colaborators limit 2;

select * from tb_colaborators limit 2 offset 2;

/* ONLY MYSQL */

select * from tb_colaborators limit 3, 2;

/* GROUP BY */

select avg(salary) as 'MEDIA', departament
from tb_colaborators
group by departament;

select count(*) as 'TOTAL', departament
from tb_colaborators
group by departament;