-- Excluindo o banco de dados existente
drop database academias;
-- Criando banco de dados
create database academias;
-- Acessando banco de dados
use academias;
-- Visualizando o banco de dados
show databases;
-- Criando tabela tbAtividade
create table tbAtividade(
id int,
atividade varchar(45)
);
-- Criando tabela tbTurma
create table tbTurma(
id int,
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);
-- Criando tabela tbRegistro
create table tbRegistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);
-- Criando tabela tbAluno
create table tbAluno(
matricula int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int
);
-- Criando tabela tbInstrutor
create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);
-- Criando tabela tbMonitor
create table tbMonitor(
id_aluno int
);
-- Visualizando tabelas criadas
show tables;
-- Visualizando estrutura de tabelas
desc tbAtividade;
desc tbTurma;
desc tbRegistro;
desc tbAluno;
desc tbInstrutor;
desc tbMonitor;
