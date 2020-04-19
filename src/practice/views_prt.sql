/*
 * 
 * PRACTICE - VIEWS
 * 
 */


create view high_salarys as select * from tb_colaborators where salary > 5000;

select * from high_salarys;

drop view high_salarys;

create view high_salarys as select * from tb_colaborators where salary > 3000;
