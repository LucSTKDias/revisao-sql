insert into Imobiliaria.Condominio values
	(1, "CL", "Shopping Legal", "Tim Maia", "4199999999", "Rua da Paz", "Centro", "35");
    
insert into Imobiliaria.Condominio(idCondominio, sigla, nome) values
	(2,"SML", "Shopping Muito Legal");
    
insert into Imobiliaria.Condominio(idCondominio, sigla, nome) values
	(3, "SHL", "Shopping Hyper Legal"),
    (4, "SSL", "Shopping Super Legal");
    
insert into Imobiliaria.Cliente values
	(3, "John Snow", "05555555555"),
    (4, "Bob Esponja", "5555554433"),
    (5, "John Wick", 33442211);
    
insert into Imobiliaria.Contrato(idContrato, Valor, idCliente) values
	(55, 500.00, 20);