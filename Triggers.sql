alter table Imobiliaria.Cliente add column numeroContratos int default 0;

delimiter $

drop trigger if exists Imobiliaria.trigger_contrato_insert;
drop trigger if exists Imobiliaria.trigger_contrato_delete;

create trigger Imobiliaria.trigger_contrato_insert after insert
	on Imobiliaria.Contrato
    for each row
		begin
        update Imobiliaria.Cliente set numeroContratos = numeroContratos +1
			where idCliente = new.idCliente;
		end$
        
	create trigger Imobiliaria.trigger_contrato_delete after delete
	on Imobiliaria.Contrato
    for each row
		begin
        update Imobiliaria.Cliente set numeroContratos = numeroContratos -1
			where idCliente = old.idCliente;
		end$
        
delimiter ;
    
insert into Imobiliaria.Contrato(idContrato,valor,idCliente) values
	(21,500.00,3);
    
select * from Imobiliaria.Cliente;

delete from Imobiliaria.Contrato where idContrato = 21;

