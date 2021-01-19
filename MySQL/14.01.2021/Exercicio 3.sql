-- DataBase para Escola
create database servico_escola;

-- acesso ao db
use servico_escola;

-- criação de tabela
create table db_alunos(
id bigint(8) auto_increment,
nome varchar(255) not null,
idade int not null,
nota int not null,
sexo char not null,
primary key (id)
);

select * from db_alunos;

-- inserir dados na tabela
insert into db_alunos (nome,idade,nota,sexo) values ("João de almeida Silva", 15, 7,'M');
insert into db_alunos (nome,idade,nota,sexo) values ("Maria Nogueira de Oliveira", 15, 9,'F');
insert into db_alunos (nome,idade,nota,sexo) values ("Felipe Matutino Souza", 15, 10, 'M');
insert into db_alunos (nome,idade,nota,sexo) values ("Gustavo Ferreira Santos", 15, 5,'M');
insert into db_alunos (nome,idade,nota,sexo) values ("Guilherme Ferreira Silva", 15, 4, 'M');
insert into db_alunos (nome,idade,nota,sexo) values ("Luiz Figueiredo da Silva", 15, 2, 'M');
insert into db_alunos (nome,idade,nota,sexo) values ("Mariana Santos Oliveira", 15, 3, 'F');
insert into db_alunos (nome,idade,nota,sexo) values ("Gabriela das Neves", 15, 10, 'F');

-- Alunos com nota maior do que 7
select * from db_alunos where nota > 7;
-- Alunos com nota menor do que 7
select * from db_alunos where nota < 7;
-- Alunos com nota igual à 7 
select * from db_alunos where nota = 7;

-- Atualização de dados
update db_alunos set nota = 7 where id = 3;



