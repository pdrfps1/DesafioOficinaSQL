create database Oficina;

use Oficina;

create table Cliente(
	idCliente int primary key auto_increment,
    cNome varchar (45),
    telefone varchar (11) not null,
    nomeCarroCliente varchar (45) not null,
    CPF varchar(9),
    endereco varchar(100)
);

create table carro (
	idCarro int primary key auto_increment,
    nomeCarro varchar(45),
    idCarroCliente int,
    carroStatus enum('Em conserto','Esperando') default 'Esperando',
    constraint fk_carro_cliente foreign key (idCarroCliente) references Cliente(idCliente)
);

create table Mecanico(
	idMecanico int primary key auto_increment,
    Mname varchar (45),
    telefone varchar (11),
    CPF varchar (9),
    especialidade varchar (45)
);

create table ordemServico(
	idServico int primary key auto_increment,
    idSMecanico int,
    idOSCarroCliente int,
	clienteCarro int,	
    constraint fk_id_mecanico_servico foreign key (idSMecanico) references Mecanico(idMecanico),
	constraint fk_cliente_os_carro foreign key (idOSCarroCliente) references carro(idCarroCliente),
	constraint fk_cliente_carro foreign key (clienteCarro) references Cliente(idCliente),
	valorServico float,
    tipoPagamento enum('PIX','Cartão','Dinheiro') default 'Dinheiro',
    descricaoServico varchar (255)
);


desc ordemServico;

