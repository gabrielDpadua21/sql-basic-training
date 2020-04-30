create table tb_bank_accounts (
  cli_id int unsigned auto_increment primary key,
  owner varchar(32) not null,
  balance double not null
);

insert into tb_bank_accounts values(null, 'andre', 213);
insert into tb_bank_accounts values(null, 'Diogo', 489);
insert into tb_bank_accounts values(null, 'Rafael', 568);
insert into tb_bank_accounts values(null, 'Carlos', 712);
insert into tb_bank_accounts values(null, 'Peter', -38);

select * from tb_bank_accounts;

/* EX */

start transaction;
    update tb_bank_accounts
    set balance = balance + (balance*0.03)
    where cli_id = 1;

    update tb_bank_accounts
    set balance = balance + (balance*0.03)
    where cli_id = 2;

    update tb_bank_accounts
    set balance = balance + (balance*0.03)
    where cli_id = 3;

    update tb_bank_accounts
    set balance = balance + (balance*0.03)
    where cli_id = 4;

    update tb_bank_accounts
    set balance = balance + (balance*0.03)
    where cli_id = 5;
rollback;