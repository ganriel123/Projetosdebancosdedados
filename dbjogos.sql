-- removendo banco de dados
drop database dbjogos;
-- criando banco de dados
create database dbjogos;
-- visualizar banco de dados
show databases;
-- acessando banco de dados 
use dbjogos;
-- criando tabelas no banco de dados 
create table tbjogos(
codigo int,
nomejogo varchar(50),
valor decimal(9,2),
datajogo date
);
-- visualizando a estrutura das tabelas
desc tbJogos;
-- inserindo registros na tabela ( cadastrando 10 jogos)
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(1,'lotomania',3.00,'12/09/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(2,'lotofacil',4.50,'09/02/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(3,'loteca',5.00,'01/06/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(4,'megasena',2.30,'05/12/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(5,'duplasena',1.90,'07/11/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(6,'super sete',4.80,'09/08/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(7,'timemania',4.80,'09/08/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(8,'federal',4.80,'09/08/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(9,'dia da sorte',4.80,'09/08/2023');
insert into tbJogos(codigo,nomejogo,valor,
datajogo) values(10,'milionaria',4.80,'09/08/2023');
-- visualizando os registros inseridos nas tabela
select * from tbJogos;
-- Alterando registros de 2 jogos
update tbJogos
set nomejogo = 'quina',
valor = 2.30 where codigo = 3;
update tbJogos
set nomejogo = 'timemania',
valor = 3.00 where codigo = 7;
-- visualizar os registros dos produtos
select * from tbJogos;
-- Apagar 2 registros de jogos da tabela
delete from tbJogos where codigo = 9;
-- Apagar 2 registros de jogos da tabela
delete from tbJogos where codigo = 10;
-- visualizando os registros excluidos
select * from tbJogos;







