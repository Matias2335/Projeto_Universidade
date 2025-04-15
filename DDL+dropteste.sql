drop table if exists aluno;
drop table if exists professor;
drop table if exists departamento;
drop table if exists curso;
drop table if exists turma;
drop table if exists historico_escolar;
drop table if exists leciona;
drop table if exists tcc;
drop table if exists aluno_tcc;

create table departamento(
  depart_nome varchar(20),
  predio varchar(15),
  orcamento numeric(12,2) check (orcamento > 0),
  primary key (depart_nome)
);

create table aluno(
  ID varchar(5),
  nome varchar(20),
  email varchar(50) unique,
  depart_nome varchar(20),
  total_credito numeric(3,0) check (total_credito >= 0),
  primary key (ID),
  foreign key(depart_nome) references departamento(depart_nome) on delete set null
);

create table professor(
  nome varchar(20),
  email varchar(50) unique,
  depart_nome varchar(20),
  salario numeric(8,2) check (salario > 20000),
  primary key(nome),
  foreign key(depart_nome) references departamento(depart_nome) on delete set null
);


create table curso(
    id_materia varchar(20),
    titulo varchar(50),
    depart_nome varchar(20),
    creditos numeric(2,0) check (creditos > 0),
    primary key (id_materia),
    foreign key(depart_nome) references departamento(depart_nome) on delete set null
);


create table turma(
    id serial primary key,
    id_materia varchar(20),
    secao varchar(10),
    professor_id int,  
    ano int,
    foreign key (id_materia) references curso(id_materia)
);


create table historico_escolar(
    aluno_id varchar(5),
    turma_id int,
    nota numeric(4,2) check (nota >= 0 and nota <= 10),
    aprovado boolean,
    primary key (aluno_id, turma_id),
    foreign key (aluno_id) references aluno(ID),
    foreign key (turma_id) references turma(id)
);


create table leciona(
    professor_nome varchar(20),
    id_materia varchar(20),
    ano int,
    primary key (professor_nome, id_materia, ano),
    foreign key (professor_nome) references professor(nome),
    foreign key (id_materia) references curso(id_materia)
);


create table tcc(
    id serial primary key,
    titulo varchar(100),
    professor_orientador varchar(20),
    ano int,
    foreign key (professor_orientador) references professor(nome)
);


create table aluno_tcc(
    tcc_id int,
    aluno_id varchar(5),
    primary key (tcc_id, aluno_id),
    foreign key (tcc_id) references tcc(id),
    foreign key (aluno_id) references aluno(ID)
);

