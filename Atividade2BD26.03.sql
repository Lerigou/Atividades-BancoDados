DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(20) NOT NULL,
	SEXO ENUM ('M', 'F'),
	IDADE int,
	CIDADE VARCHAR(20)
);

-- altera os itens da tabela indicada
alter table ALUNO modify column NOME varchar(45);
alter table ALUNO modify column SEXO char(1);
alter table ALUNO modify column CIDADE varchar(45);

-- insere na tabela as informações
insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Anderson", "M", 17, "Palhoça");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Cesar", "M", 21, "São José");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Daniel", "M", 19, "Palhoça");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Diego", "M", 19, "Blumenau");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Eduardo", "M", 20, " ");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Gabriel", "M", 19, "Tubarão");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("João", "M", 18, "São José");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Leonardo", "M", 19, " ");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("João", "M", 20, "Blumenau");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Priscila", "F", 19, "Palhoça");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Renata", "F", 21, "Tubarão");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Maria", "F", 22, "Blumenau");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Tania", "F", 19, "São José");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Carlos", "M", 22, "Tubarão");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("José", "M", 19, "Palhoça");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Marisa", "F", 19, " ");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Amanda", "F", 20, " ");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Joana", "F", 19, " ");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Alice", "F", 21, "São José");
select * from ALUNO;

insert into ALUNO (NOME, SEXO, IDADE, CIDADE)
values ("Tadeu", "M", 18, "Tubarão");
select * from ALUNO;