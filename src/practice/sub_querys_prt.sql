/*
*
* SUBQUERYS
*
*/

select departament, avg(salary)
from tb_colaborators
group by departament;

select name from tb_colaborators
where departament = 'DEV';

select name from tb_colaborators
where departament in (
    select departament
    from tb_colaborators
    group by departament
    having avg(salary) > 4000
);
