create view Imobiliaria.view_contrato_cliente as
select co.idContrato,cl.nome,cl.cpf from Imobiliaria.Contrato co
	inner join Imobiliaria.Cliente cl
    on cl.idCLiente = co.idCliente;
    
select * from Imobiliaria.view_contrato_cliente