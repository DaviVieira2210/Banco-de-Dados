-- DataBase para RH
create database servico_rh;
​
-- acesso ao db
use servico_rh;

-- cria uma tabela
create table db_funcionarios(
id bigint(5) auto_increment,
nome varchar(255) not null,
cargo varchar (30) not null,
salario float not null,
idade int not null,
primary key(id)
);
 
 select * from db_funcionarios; 

-- inserir dados na tabela
insert into db_funcionarios (nome,cargo,salario,idade) values ("Davi Vieira","Programador Sênior", 15000, 18);
insert into db_funcionarios (nome,cargo,salario,idade) values ("Daniel Augusto","Programador Sênior",15000, 20);
insert into db_funcionarios (nome,cargo,salario,idade) values ("Leticia Figueiredo","Analista de MKT", 2000, 22);
insert into db_funcionarios (nome,cargo,salario,idade) values ("João Oliveira","Jovem aprendiz",1000, 16);
insert into db_funcionarios (nome,cargo,salario,idade) values ("Eduarda Martins","Gerente de MKT",7000, 25);

-- para salários maiores que R$2.000,00
select * from db_funcionarios where salario > 2000;
-- para salários menores que R$2.000,00
select * from db_funcionarios where salario < 2000;

update db_funcionarios set idade = 19  where id = 1;

