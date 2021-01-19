create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- criação de tabela
create table tb_categoria
(
id bigint(5)auto_increment,
tipo varchar(30) not null,
ead boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,ead) values ("ingles",true);
insert into tb_categoria (tipo,ead) values ("TI",true);
insert into tb_categoria (tipo,ead) values ("Designer",false);
insert into tb_categoria (tipo,ead) values ("Excel",true);
insert into tb_categoria (tipo,ead) values ("ADM",false);

-- criação de tabela
create table tb_produtos
(
id bigint(5)auto_increment,
nome varchar(20) not null,
duracao varchar(20) not null,
turno varchar(20) not null,
certificado boolean not null,
valor float(4) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Ciencias comp","3 meses","noturno",true,45,2);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Adm de empresa","3 meses","manha",true,2000,5);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Java","4 meses","noturno",false,450,2);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Ingles ini","3 meses","noturno",true,812,1);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Excel basico","3 meses","manha",false,457,4);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Excel medio","3 meses","manha",false,20,4);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Ingles medio","3 meses","noturno",true,45.56,1);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Designer de int","3 meses","manha",false,12.45,3);

-- Produtos com valor maior que R$50
select * from tb_produtos where valor > 50;
-- Produtos com valor entre R$3 e R$50
select * from tb_produtos where valor >= 3 and valor <= 60;
-- Produtos com a letra J no nome
select * from tb_produtos where nome  like "J%";

-- Categoria + Produtos
select * from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Produtos por categoria expecifica
select * from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Ti"
