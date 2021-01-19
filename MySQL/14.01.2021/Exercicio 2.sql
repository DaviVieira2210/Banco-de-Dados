-- DataBase para Ecommerce
create database servico_ecommerce;

-- acesso ao db
use servico_ecommerce;

-- criação de tabela
create table db_produtos(
id bigint(8) auto_increment,
nome varchar(255) not null,
preco float not null,
quantidade int not null,
marca varchar(30) not null,
primary key (id) 
);

select * from db_produtos;

-- inserir dados na tabela 
insert into db_produtos (nome,preco,quantidade,marca) values ("Mouse Gamer", 150, 5, "Redragon");
insert into db_produtos (nome,preco,quantidade,marca) values ("Teclado Mecânico", 750, 7, "Redragon");
insert into db_produtos (nome,preco,quantidade,marca) values ("Cabo HDMI", 50, 30, "Sony");
insert into db_produtos (nome,preco,quantidade,marca) values ("Monitor 29 UltraWide", 1500, 3, "LG");
insert into db_produtos (nome,preco,quantidade,marca) values ("Galaxy S10 Plus", 2900, 40, "Samsung");
insert into db_produtos (nome,preco,quantidade,marca) values ("Gabinete Gamer", 3500, 5, "Cooler Master");
insert into db_produtos (nome,preco,quantidade,marca) values ("Processador Ryzen 5 1600", 699, 100, "AMD");
insert into db_produtos (nome,preco,quantidade,marca) values ("Home Theater", 2600, 9, "JBL");

-- Produtos com preço maior que R$500
select * from db_produtos where preco > 500;
-- Produtos com preço menor que R$500
select * from db_produtos where preco < 500;

-- Atualização de dados
update db_produtos set quantidade = 45 where id = 3;




