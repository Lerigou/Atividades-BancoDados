create database ex03_18;
use ex03_18;


-- BIBLIOTECA
create table usuario(
IdMatricula int not null primary key auto_increment,
nome varchar(100),
endereco varchar(100),
email varchar(50)
);

-- insere na tabela as informações
insert usuario (nome, endereco, email)
 values ('Jhonatan', 'Rod. Tertuliano Brito Xavier', 'jhonatan4alves@gmail.com');
select *from usuario;

create table livro(
IdCodigo int not null primary key auto_increment,
titulo varchar(100),
autor varchar(70),
editora varchar(50),
dataEmp date,
dataDev date,
dataRes date,
IdMatricula int,
foreign key (IdMatricula) references usuario (IdMatricula)
);

create table autor(
IdAutor int not null primary key auto_increment,
nome varchar(100),
enderecoWeb varchar(100),
nacionalidade varchar(100),
email varchar(100)
);

create table assunto(
IdAssunto int not null primary key auto_increment,
nome varchar(100)
);

create table subAssunto(
IdSubAssunto int not null primary key auto_increment
);


create table reservar(
IdMatricula int not null,
IdCodigo int not null,
primary key (IdMatricula, IdCodigo),
foreign key (IdMatricula) references usuario (IdMatricula),
foreign key (IdCodigo) references livro (IdCodigo)
);

create table escreve(
IdAutor int not null,
IdCodigo int not null,
primary key (IdAutor, IdCodigo),
foreign key (IdAutor) references autor (IdAutor),
foreign key (IdCodigo) references livro (IdCodigo)
);

create table contido(
IdCodigo int not null,
IdAssunto int not null,
primary key (IdCodigo, IdAssunto),
foreign key (IdCodigo) references livro (IdCodigo),
foreign key (IdAssunto) references assunto (IdAssunto)
);

create table contem(
IdAssunto int not null,
IdSubAssunto int not null,
primary key (IdAssunto, IdSubAssunto),
foreign key (IdAssunto) references assunto (IdAssunto),
foreign key (IdSubAssunto) references subAssunto (IdSubAssunto)
);

######################################################################

-- EMPRESA

create table departamento(
IdNumeroD int not null auto_increment,
nome varchar(100),
dataFuncio date,
localizacao varchar(100),

primary key(IdNumeroD)
);

create table funcionario(
IdFuncionario int not null auto_increment,
nome varchar(100),
salario int,
dataNascimento date,
sexo char(1),
numeroHoras int,
endereco varchar(100),
NSS int,

primary key(IdFuncionario)
);

#FUSAO DE TABELA
create table funcionario_departamento(
IdFuncionario int not null,
IdNumeroD int not null,
primary key(IdFuncionario, IdNumeroD)
);

create table projeto(
IdNumeroP int not null auto_increment,
nome varchar(100),
localizacao varchar(100),

primary key(IdNumeroP)
);

create table dependentes(
IdDependentes int not null auto_increment,
nome varchar(100),
dataNascimento date,
relacionamento varchar(100),
sexo char(1),

primary key(IdDependentes)
);

#//////

create table controla(
IdNumeroD int not null,
IdNumeroP int not null,
primary key(IdNumeroD, IdNumeroP),
foreign key (IdNumeroD) references departamento(IdNumeroD),
foreign key (IdNumeroP) references projeto(IdNumeroP)
);

create table trabalha(
IdNumeroD int not null,
IdFuncionario int not null,
primary key(IdNumeroD, IdFuncionario),
foreign key (IdNumeroD) references departamento(IdNumeroD),
foreign key (IdFuncionario) references funcionario(IdFuncionario)
);

create table beneficio(
IdDependentes int not null,
IdFuncionario int not null,
primary key(IdDependentes, IdFuncionario),
foreign key (IdDependentes) references dependentes(IdDependentes),
foreign key (IdFuncionario) references funcionario(IdFuncionario)
);
