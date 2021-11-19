select * from Imobiliaria.Contrato co, Imobiliaria.Cliente cl  /*co e cl ficam como variáveis de Contrato e Ciente*/
	where co.idCliente = cl.idCliente; /* Seleciona onde idCliente for igual a idCliente na tabela Contrato*/
    
select idContrato from Imobiliaria.Contrato where idCLiente = 
	(select idContrato from Imobiliaria.Cliente where nome = "John Snow"); /* Seleciona especificamente o contrato do cliente John Snow*/