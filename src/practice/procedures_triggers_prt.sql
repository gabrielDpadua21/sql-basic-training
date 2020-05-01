show tables;

create table tb_requests (
    id int unsigned auto_increment primary key,
    description varchar(100) not null,
    value double not null default 0.0,
    status boolean not null default false
);

select * from tb_requests;

insert into tb_requests (description, value) values ('Notebook', 3000);
insert into tb_requests (description, value) values ('Teclado', 200);
insert into tb_requests (description, value) values ('Mouse', 100);
insert into tb_requests (description, value, status) values ('MousePad', 50, true);

/* PROCEDURES ... */
create procedure proc_clear_requests()
begin
    delete from tb_requests where status = 0;
end;

call proc_clear_requests();

/* TRIGGERS ... */

select * from tb_storage;

create table tb_storage(
    id int unsigned auto_increment primary key,
    description varchar(100) not null,
    units int not null
);

create trigger trg_clear_requests
    before insert
    on tb_storage
    for each row
    call proc_clear_requests();


insert into tb_storage value(null, 'Notebooks', 10);