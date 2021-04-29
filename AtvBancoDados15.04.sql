-- cria o banco de dados
create database exercicio1_bruno_15_04;
use exercicio1_bruno_15_04;

-- cria a tabela
create table aluno (
	IDALUNO INT NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(45) NOT NULL,
    IDADE INT,
    SEXO CHAR(1),
    PRIMARY KEY (IDALUNO)
);

-- insere na tabela as informações
insert into aluno(NOME, IDADE, SEXO) values ("João", 18, "M");
insert into aluno(NOME, IDADE, SEXO) values ("Maria", 17, "F");
insert into aluno(NOME, IDADE, SEXO) values ("Carlos", 18, "M");
insert into aluno(NOME, IDADE, SEXO) values ("Alberto", 21, "M");
insert into aluno(NOME, IDADE, SEXO) values ("Sônia",21, "F");
insert into aluno(NOME, IDADE, SEXO) values ("Renata", 22, "F");
insert into aluno(NOME, IDADE, SEXO) values ("Karina", 19, "F");

-- SELECT * FROM ALUNO WHERE (IDADE >= 18 AND SEXO = "M") OR (IDADE >= 21 AND SEXO = "F"); imprime os dados iguais as condições 
-- SELECT * FROM ALUNO ORDER BY IDADE asc limit 5; limita a 5 resultados
-- SELECT * FROM ALUNO ORDER BY IDADE desc; mostra em ordem decrescente os valores
-- SELECT * FROM ALUNO ORDER BY NOME LIMIT 4,3; pega os primeiros 4 e depois pega os proximos 3 ordenados por nome