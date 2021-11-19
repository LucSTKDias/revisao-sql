select * from Imobiliaria.Cliente; /*Seleciona a tabela inteira*/
select * from Imobiliaria.Cliente where idCliente = 3; /* Seleciona o idCliente 3 na tabela Cliente*/
select * from Imobiliaria.Cliente where idCliente = 
	(select idCLiente from Imobiliaria.CLiente where nome = "John Snow"); /* Seleciona especificamente o nome "john Snow" 
																			da tabela Cliente*/