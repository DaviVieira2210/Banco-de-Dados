-- DataBase para Game Online
create database db_generation_game_online;

-- acesso ao db
use db_generation_game_online;

-- Criação de tabela
create table tb_classe(
id bigint(5) auto_increment,
atuacao varchar (60) not null,
sabre_de_luz boolean not null,
lado_forca varchar(60) not null,
primary key(id)
);

insert into tb_classe (atuacao,sabre_de_luz,lado_forca) values ("Primeira Ordem",true,"Lado Sombrio");
insert into tb_classe (atuacao,sabre_de_luz,lado_forca) values ("Resistência",true,"Lado da Força");
insert into tb_classe (atuacao,sabre_de_luz,lado_forca) values ("Primeira Ordem",false,"Lado Sombrio");
insert into tb_classe (atuacao,sabre_de_luz,lado_forca) values ("Resistência",false,"Lado da Força");
insert into tb_classe (atuacao,sabre_de_luz,lado_forca) values ("Imperio",true,"Sombrio");

select * from tb_classe;

-- Criação de tabela
create table tb_personagem(
id bigint(5) auto_increment,
nome varchar(60) not null,
idade int not null,
forca_de_ataque int not null,
forca_de_defesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Mestre Yoda",900,2500,2000,2);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Imperador Palpatine",84,2700,3000,1);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Darth Vader",45,2250 ,2500,1);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Kylo Ren",30,2000,1700,1);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Luke Skywalker",55,2300,2400,2);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("stormtrooper",25,500,400,3);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Chewbacca",200,500,900,4);
insert into tb_personagem (nome,idade,forca_de_ataque,forca_de_defesa,classe_id) values ("Darth Maul",65,1900,2200,5);


-- Personagens com poder de ataque maior que 2000
select * from tb_personagem where forca_de_ataque > 2000;
-- Personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where forca_de_defesa >= 1000 and forca_de_defesa <= 2000;
-- Personagens com a letra C no nome 
select * from tb_personagem where nome LIKE "C%";

-- Classe + Personagem
select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Classe especifica
select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id
    where tb_classe.atuacao = "Primeira Ordem"
