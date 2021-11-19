select * from Imobiliaria.Contrato co
	inner join Imobiliaria.Cliente cl on cl.idCliente = co.idCliente;
    
select * from Imobiliaria.Contrato co
	left join Imobiliaria.Cliente cl on cl.idCliente = co.idCliente;
    
select * from Imobiliaria.Contrato co
	right join Imobiliaria.Cliente cl on cl.idCliente = co.idCliente;