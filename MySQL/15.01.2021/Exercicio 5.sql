create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria
(
id bigint(5)auto_increment,
tipo varchar(45) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_categoria (tipo,ativo) values ("Tijolo laranja",true);
insert into tb_categoria(tipo,ativo) values ("Tijolo tiger",true);
insert into tb_categoria (tipo,ativo)values ("Martelo",false);
insert into tb_categoria (tipo,ativo) values ("Parafusadeira",true);
insert into tb_categoria (tipo,ativo) values ("Tinta",false);

create table tb_produto
(
id bigint(5)auto_increment,
marca varchar(40)not null,
cor varchar(40)not null,
bivolt boolean not null,
preco float(4)not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("bds","preto",true,168.45,4);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Cator","laranja",false,3.45,1);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Tgs","transparente",false,5.00,2);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Strugstrom","prata",false,64.45,3);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Guache","branco",false,18.45,5);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Massa Corrida","branco",false,23.47,5);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("bds plus","dourado",true,1123.45,4);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Fx 3000","diamantada",true,7683.45,4);


select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where marca like "C%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;



 

