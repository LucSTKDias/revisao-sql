delete from Imobiliaria.Condominio where idCondominio = 3;
delete from Imobiliaria.Cliente where idCliente = 3; /* não irá deletar o idCliente 3 por que há um contrato que depende do cliente 
														3, então para resolver teríamos que passar esse contrato para outro 
														cliente ou remover os contratos anteriormente.*/