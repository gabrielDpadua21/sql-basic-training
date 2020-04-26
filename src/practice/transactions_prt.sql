show engines;

create table tb_wallets(
    id int unsigned auto_increment primary key,
    title varchar(150) not null,
    saldo double not null
) engine = InnoDB;

insert into tb_wallets values(null, 'Frajola', 1000);
insert into tb_wallets values(null, 'Thor', 500);
insert into tb_wallets values(null, 'Lucyfer', 500);


start transaction;
    update tb_wallets
    set saldo = saldo - 100
    where id = 1;

    update tb_wallets
    set saldo = saldo + 100
    where id = 2;
commit;