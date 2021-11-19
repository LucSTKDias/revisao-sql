drop database if exists Imobiliaria;
create database Imobiliaria;

create table Imobiliaria.Condominio(
	idCondominio int,
    sigla varchar(45) not null,
    nome varchar(45),
    sindico varchar(45),
    telefone varchar(45),
    enderecoLogradouro varchar(45),
    enderecoBairro varchar(45),
    enderecoNumero varchar(45),
    primary key(idCondominio)
);

create table Imobiliaria.Cliente(
	idCliente int primary key,
    nome varchar(45),
    cpf varchar(11)
);

create table Imobiliaria.Contrato(
	idContrato int,
    dataInicio date,
    dataTermino date,
    valor decimal(8,2),
    numero int,
    diaVencimento int,
    idCliente int,
    primary key(idContrato),
    foreign key(idCliente) references Imobiliaria.Cliente(idCliente)
);

create table Imobiliaria.Loja(
	idLoja int,
    numero int,
    metragem decimal(6,2),
    descricao varchar(120),
    idCondominio int,
    idContrato int,
    primary key(idLoja, idCondominio),
    foreign key(idCondominio) references Condominio(idCondominio),
    foreign key(idContrato) references Contrato(idContrato)
);

create table Imobiliaria.Boleto(
	idBoleto int,
    dataPagamento datetime,
    valor decimal(8,2),
    numero int,
    dataVencimento date,
    mesReferencia varchar(10),
    codBarras varchar(45),
    idContrato int,
    primary key(idBoleto),
    foreign key(idContrato) references Contrato(idContrato)
);