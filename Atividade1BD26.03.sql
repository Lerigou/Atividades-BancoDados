DROP DATABASE IF EXISTS DBDELEGACIA;
CREATE DATABASE DBDELEGACIA;
USE DBDELEGACIA;

CREATE TABLE CRIME (
	IDCRIME INT NOT NULL,
	DESCRICAO VARCHAR(255),
	RUA VARCHAR(100),
	NUMERO INT,
	COMPLEMENTO VARCHAR(255),
	BAIRRO VARCHAR(100),
	CEP VARCHAR(8),
	CIDADE VARCHAR(100),
	ESTADO CHAR(2)
);

CREATE TABLE CRIMINOSO(
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP CHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE,
  TELEFONE VARCHAR(15)
);

CREATE TABLE OCORRENCIA (
	IDOCORRENCIA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DT_OCORRENCIA DATE
);

CREATE TABLE ITEM_OCORRENCIA (
	IDITEM INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	IDOCORRENCIA INT NOT NULL,
	DESCRICAO VARCHAR (100),
	CONSTRAINT FK_ITEM_OCORRENCIA_OCORRENCIA FOREIGN KEY (IDOCORRENCIA) REFERENCES OCORRENCIA(IDOCORRENCIA)
);

CREATE TABLE VITIMA (
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP VARCHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE
);

/*ESSE TA CERTO*/
CREATE TABLE COMETE(
	IDCRIME INT NOT NULL,
	IDCRIMINOSO INT NOT NULL
);

CREATE TABLE ATACA (
	OBSERVACAO CHAR(1)
);

/*ESSE TA CERTO*/
CREATE TABLE SOFRE (
	IDCRIME INT NOT NULL,
	IDVITIMA INT NOT NULL
);

CREATE TABLE ARMA (
	IDARMA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(110)
);

CREATE TABLE USADA (
	IDARMA INT NOT NULL,
	IDCRIME INT NOT NULL
);

-- o drop exclui na tabela indicada (crime) um item
alter table CRIME drop column RUA;
alter table CRIME drop column NUMERO;
alter table CRIME drop column COMPLEMENTO;
alter table CRIME drop column BAIRRO;
alter table CRIME drop column CEP;
alter table CRIME drop column CIDADE;
alter table CRIME drop column ESTADO;
-- o add um item adiciona na tabela indicada 
alter table CRIME add column DTCRIME datetime;
-- o modify altera um item presente na coluna indicada
alter table CRIME modify column DESCRICAO varchar(200);
alter table CRIME add primary key(IDCRIME);

-- o add adiciona uma chave estrangeira na tabela indicada
alter table SOFRE add foreign key(IDCRIME) references crime(IDCRIME);
alter table COMETE add foreign key(IDCRIME) references crime(IDCRIME);
alter table CRIMINOSO add foreign key(IDCRIME) references crime(IDCRIME);
                                                                                                                                                                                                
alter table CRIMINOSO drop column RUA;
alter table CRIMINOSO drop column NUMERO;
alter table CRIMINOSO drop column COMPLEMENTO;
alter table CRIMINOSO drop column BAIRRO;
alter table CRIMINOSO drop column CEP;
alter table CRIMINOSO drop column CIDADE;
alter table CRIMINOSO drop column ESTADO;
alter table CRIMINOSO drop column TELEFONE;
alter table CRIMINOSO add column IDCRIMINOSO int;
alter table CRIMINOSO add column NOME varchar(45);
alter table CRIMINOSO add primary key(IDCRIMINOSO);

alter table ATACA add foreign key(IDCRIMINOSO) references CRIMINOSO(IDCRIMINOSO);
alter table COMETE add foreign key(IDCRIMINOSO) references CRIMINOSO(IDCRIMINOSO);

-- exclui uma tabela
DROP TABLE OCORRENCIA;

DROP TABLE ITEM_OCORRENCIA;

alter table VITIMA drop column RUA;
alter table VITIMA drop column NUMERO;
alter table VITIMA drop column COMPLEMENTO;
alter table VITIMA drop column BAIRRO;
alter table VITIMA drop column CEP;
alter table VITIMA drop column CIDADE;
alter table VITIMA drop column ESTADO;
alter table VITIMA add column IDVITIMA int;
alter table VITIMA add column NOME varchar(45);
alter table VITIMA add column IDVITIMA int;
alter table VITIMA add primary key(IDVITIMA);

alter table SOFRE add foreign key(IDVITIMA) references VITIMA(IDVITIMA);
alter table ATACA add foreign key(IDVITIMA) references VITIMA(IDVITIMA);

alter table ATACA add column IDCRIMINOSO int;
alter table ATACA add column IDVITIMA int;
alter table ATACA drop column OBSERVACAO;

alter table ARMA add column DESCRICAO varchar(45);
alter table ARMA add column TIPO ENUM("Arma de fogo", "Arma branca");
alter table ARMA add column IDIDENTIFICACAO varchar(15);
alter table ARMA drop column MARCA;

-- renomeia um item na tabela indicada
ALTER TABLE USADA RENAME USAR;