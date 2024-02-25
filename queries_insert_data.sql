use oficina;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into Cliente (cNome, telefone, nomeCarroCliente, CPF, endereco) values
			('Maria','21997793999','Renault Kwid', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
			('Matheus','21993693994','Mitsubishi Lancer', 987654321,'rua alemeda 289, Centro - Cidade das flores'),
			('Ricardo','21992493993','Palio', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
			('Julia','21992783992','Fiat Uno', 789123456,'rua lareijras 861, Centro - Cidade das flores'),
			('Roberta','21993743991','Fiat Argo', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
			('Isabela','21996753990','Chevrolet Cruze', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores');


-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into carro (carroStatus) values
							  ('Esperando'),
                              ('Esperando'),
                              ('Em conserto'),
                              ('Esperando'),
                              ('Em conserto'),
                              ('Em conserto');

insert into Mecanico (Mname, telefone, CPF, especialidade) values
		('Maria','21997798651', 12349768, 'Eletrico'),
		('Richard','21993693651', 987653142,'Balaceamento'),
		('Ricardo','21992499874', 45678913,'Tuning'),
		('Marcos','21992787946', 789126345,'Geral'),
		('Adalberto','21993743210', 98743165,'Geral'),
		('Wallison','21996759780', 654782931,'Geral');
        
insert into ordemServico (valorServico, descricaoServico) values
		(100.50, 'Troca de correia dentada'),
		(470.50, 'Balaceamento'),
		(510.50, 'Retifica'),
		(350.50, 'Troca de amortecedor'),
		(230.50, 'Revisão'),
		(70.50, 'Troca de oleo');
        
        
select * from ordemServico;
select * from Mecanico;