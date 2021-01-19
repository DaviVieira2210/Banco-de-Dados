-- DataBase para Pizzaria
create database db_pizzaria_legal;

-- acesso ao db
use db_pizzaria_legal;

-- criação de tabela
create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(15) not null,
recheio_extra boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,recheio_extra) values ("Doce",true);
insert into tb_categoria (tipo,recheio_extra) values ("Salgada",true);
insert into tb_categoria (tipo,recheio_extra) values ("Doce",false);
insert into tb_categoria (tipo,recheio_extra) values ("Salgada",False);
insert into tb_categoria (tipo,recheio_extra) values ("Meio à meio",true);

select * from tb_categoria;

-- criacao de tabela
create table tb_pizza(
id bigint(5) auto_increment,
sabor varchar(30) not null,
preco float not null,
ativo boolean not null,
tamanho varchar(20) not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Calabresa",15.50,true,"Brotinho",2);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Mussarela",15.50,true,"Brotinho",2);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Frango",27.50,true,"Grande",4);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Romeu e Julieta",29.00,true,"Grande",3);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Frango Catupiry",27.50,true,"Grande",4);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Carne Seca",38.50,true,"Grande",4);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Mussarela e Calabresa",30.00,true,"Grande",5);
insert into tb_pizza (sabor,preco,ativo,tamanho,categoria_id) values ("Chocolate",29.00,true,"Grande",1);

-- pizzas com preco maior que 45
select * from tb_pizza where preco > 45;
-- pizzas com preco entre 29 e 60
select * from tb_pizza where preco >= 29 && preco <= 60;
-- pizzas com a letra C
select * from tb_pizza where sabor LIKE "C%";

-- Categorias + pizzas
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    
-- Somente pizzas doces 
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.tipo = "Doce"


