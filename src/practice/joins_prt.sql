/*
 * 
 * Practice JOINs
 * 
 */

/* INNER JOIN */

select * from tb_colaborators
inner join tb_cars
on tb_colaborators.id = tb_cars.id_colaborator;

select * from tb_colaborators f
inner join tb_cars c
on f.id = c.id_colaborator;

select * from tb_colaborators f
inner join tb_cpfs c
on f.id = c.id;

/* LEFT JOIN */

select * from tb_colaborators f
left join tb_cars c
on f.id = c.id_colaborator;


/* RIGHT JOIN */ 

select * from tb_colaborators f 
right join tb_cars c
on f.id = c.id_colaborator;

/* FULL JOIN - MYSQL (not have full join command) */

select * from tb_colaborators f
left join tb_cars c
on f.id = c.id_colaborator
union
select * from tb_colaborators f
right join tb_cars c
on f.id = c.id_colaborator 


/* EQUI JOIN */

select * from tb_colaborators
inner join tb_cpfs
using(id);

/* SELF JOIN */

select a.name as Client, b.name as Who_indicator
from tb_clients a
join tb_clients b
on b.id = a.indication;

/* TRIPLE */

select * from tb_colaborators f
inner join tb_cars c on f.id = c.id_colaborator
inner join tb_cpfs d on f.id = d.id;
