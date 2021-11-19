-- select @@transaction_isolation; -- impede consultas ou queries com informações atrasadas para o usuário
-- select @@global.transaction_isolation; -- modo global
set session transaction_isolation = 'serializable';
set global transaction_isolation = 'serializable';

set autocommit = 0; -- não fará auto commit
start transaction;
insert into Imobiliaria.Cliente values (10, 'Neymar', '34209878');

select * from imobiliaria.Cliente;
/* Dessa forma o usuário de teste "Mark" não conseguirá ver o cliente "Neymar" por que
   não foi feito o commit.*/
   
set autocommit = 0; -- não fará auto commit
start transaction;
insert into Imobiliaria.Cliente values (10, 'Neymar', '34209878');
rollback; -- Desfaz a inserção do Cliente "Neymar"
-- select * from imobiliaria.Cliente;

set autocommit = 0; -- não fará auto commit
start transaction;
insert into Imobiliaria.Cliente values (10, 'Neymar', '34209878');
commit; -- "Commita" o cliente novo e assim o usuário "Mark" conseguirá ver o novo cliente
select * from imobiliaria.Cliente;