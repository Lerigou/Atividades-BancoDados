-- cria um novo banco de dados
create database exercicio1_bruno_15_03;
use exercicio1_bruno_15_03;

-- cria a tabela
create table CONTA(
 IDCONTA int not null primary key auto_increment,
 NOME varchar(100),
 SOBRENOME varchar(100),
 CELULAR varchar(20),
 EMAIL varchar(100),
 SENHA varchar(100),
 DATA_NASCIMENTO date,
 SEXO char(1)
);

-- insere na tabela as informações
insert into CONTA (NOME, SOBRENOME, CELULAR, EMAIL, SENHA, DATA_NASCIMENTO, SEXO)
values ("Marcia", "Ravadelli", "4899990000", "marcia@gmail.com", "12345", "01/08/03", "F");
select * from conta;

-- cria um novo banco de dados
create database exercicio2_bruno_15_03;
use exercicio2_bruno_15_03;
create table ALUNO(
IDALUNO int not null primary key auto_increment,
NOME varchar(100)
);

-- insere na tabela as informações
insert into ALUNO (NOME)
values ("Marcia");
select * from ALUNO;

-- cria um novo banco de dados
create database exercicio3_bruno_15_03;
use exercicio3_bruno_15_03;
create table ESTACIONAMENTO(
IDCARRO int primary key auto_increment,
MARCA varchar(100),
MODELO varchar(100),
ANO_DE_FABRICACAO int,
ANO_DO_MODELO int,
PLACA char(7),
COR varchar(50),
NUMERO_DO_CHASSI char(17)
);

-- insere na tabela as informações
insert into ESTACIONAMENTO (MARCA, MODELO, ANO_DE_FABRICACAO, ANO_DO_MODELO, PLACA, COR, NUMERO_DO_CHASSI) 
values ("Nissan", "Tida", "2010", "2010", "2V67V", "preto", "1234567891234567");   
select * from ESTACIONAMENTO;

-- cria um novo banco de dados
create database exercicio4_bruno_15_03;
use exercicio4_bruno_15_03;
create table BIBLIOTECA(
IDLIVRO int primary key auto_increment,
TITULO varchar(100),
AUTOR varchar(100),
EDITORA varchar(100),
ANO_DE_PUBLICACAO int
);

-- insere na tabela as informações
insert into BIBLIOTECA(TITULO, AUTOR, EDITORA, ANO_DE_PUBLICACAO)
value ("Mortos não contam segredos", "Karen McManus", "Galera", "2019" );
select * from BIBLIOTECA;