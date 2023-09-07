-- Excluindo o banco de dados existente
drop database dbclinica;
-- Criando o banco de dados
create database dbclinica;
-- Acessando o banco de dados
use dbclinica;
-- Visualizando os bancos de dados
show databases;
-- Criando tabelas
create table tbConsulta(
IdConsulta int, 
dt_Consulta DATETIME,
Medico_idMedico int,
Paciente_is_Paciente int,
ReceitaMedica_idReceitaMedica int
);
create table tbMedico(
IdMedico int,
nomeMedico varchar(45),
telefoneMedico varchar(9)
);
create table tbPaciente(
IdPaciente int,
nomePaciente varchar(45),
TelPaciente varchar(9),
convenio varchar(45)
);
create table tbReceitaMedica(
idReceitaMedica int,
descricao varchar(500)
);
-- Visualizando tabelas criadas
show tables;
-- Visualizando a estrutura das tabelas
desc tbConsulta;
desc tbMedico;
desc tbPaciente;
desc tbReceitaMedica;
