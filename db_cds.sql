-- apagar banco de dados.
drop database DB_CDS;

-- criar banco de dados.
create database DB_CDS;
-- acessar banco de dados.
use DB_CDS;

-- criando tabelas.

create table tbArtistas(
codArt int not null auto_increment,
nomeArt varchar(100) not null unique,
primary key(codArt)
);

insert into tbArtistas(codArt,nomeArt)
    values(1, 'Marisa Monte');

insert into tbArtistas(codArt,nomeArt)
    values(2, 'Gilberto gil');

insert into tbArtistas(codArt,nomeArt)
    values(3, 'caetano veloso');

insert into tbArtistas(codArt,nomeArt)
    values(4, 'Milton nascimento');

insert into tbArtistas(codArt,nomeArt)
    values(5, 'legiao urbana');

insert into tbArtistas(codArt,nomeArt)
    values(6, 'the beatles');

insert into tbArtistas(codArt,nomeArt)
    values(7, 'rita lee');

create table tbGravadoras(
codGrav int not null auto_increment,
nomeGrav varchar(50) not null unique,
primary key(codGrav)
);

insert into tbGravadoras(codGrav,nomeGrav)
   values(1, 'polygram');

insert into tbGravadoras(codGrav,nomeGrav)
   values(2, 'Emi');

insert into tbGravadoras(codGrav,nomeGrav)
   values(3, 'Som livre');

insert into tbGravadoras(codGrav,nomeGrav)
   values(4, 'som music');

create table tbCategorias(
codCat int not null auto_increment, 
nomeCat varchar(50) not null unique, 
primary key(codCat)
);

insert into tbCategorias(codCat,nomeCat)
   values(1, 'MPB');

insert into tbCategorias(codCat,nomeCat)
   values(2, 'trilha sonora');

insert into tbCategorias(codCat,nomeCat)
   values(3, 'Rock Internacional');

insert into tbCategorias(codCat,nomeCat)
   values(4, 'Rock Nacional');

create table tbEstados(
codEst char(2) not null,
nomeEst varchar(50) not null unique,
primary key(codEst)
);

insert into tbEstados(codEst,nomeEst)
  values('SP', 'sao paulo');

insert into tbEstados(codEst,nomeEst)
  values('MG', 'Minas gerais');

insert into tbEstados(codEst,nomeEst)
  values('RJ', 'Rio de janeiro');

insert into tbEstados(codEst,nomeEst)
  values('ES', 'Espirito Santo');

create table tbCidades(
codCid int not null auto_increment, 
codEst char(2) not null,
nomeCid varchar(50) not null,
primary key(codCid),
foreign key(codEst) references tbEstados(codEst)
);

insert into tbCidades(codCid,codEst,nomeCid)
  values(1, 'SP', 'são paulo');

insert into tbCidades(codCid,codEst,nomeCid)
  values(2, 'SP', 'sorocaba');

insert into tbCidades(codCid,codEst,nomeCid)
  values(3, 'SP', 'jundiai');

insert into tbCidades(codCid,codEst,nomeCid)
  values(4, 'SP', 'Americana');

insert into tbCidades(codCid,codEst,nomeCid)
  values(5, 'SP', 'Araraquara');

insert into tbCidades(codCid,codEst,nomeCid)
  values(6, 'MG', 'ouro preto');

insert into tbCidades(codCid,codEst,nomeCid)
  values(7, 'ES', 'cachoeira do itapemirim');

create table tbClientes(
codCli int not null auto_increment, 
codCid int not null,
nomeCli varchar(50) not null,
EndCli varchar(100) not null,
RendaCli decimal(9,2) not null default 0 check(RendaCli >= 0),
sexoCli CHAR(1) DEFAULT 'F',
primary key(codCli),
foreign key(codCid) references tbCidades(codCid)
);

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(1, 1, 'jose nogueira', 'Rua A', 1500.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(2, 1, 'Angelo Pereira', 'Rua B', 2000.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(3, 1, 'Alem mar Paranhos', 'Rua C', 1500.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(4, 1, 'Catarina Souza', 'Rua D', 892.00, 'F');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(5, 1, 'vagner costa', 'Rua E', 950.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(6, 2, 'Antenor da costa', 'Rua F', 1582.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(7, 2, 'maria amelia de souza', 'Rua G', 1152.00, 'F');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(8, 2, 'paulo roberto silva', 'Rua H', 3250.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(9, 3, 'Fatima de souza', 'Rua I', 1632.00, 'M');

insert into tbClientes(codCli,codCid,nomeCli,EndCli,RendaCli,sexoCli)
  values(10, 3, 'joel da rocha', 'Rua J', 2000.00, 'M');


create table tbConjuge(
codConj int not null auto_increment, 
codCli int not null,
nomeConj varchar(50) not null,
RendaConj decimal(9,2) default 0 check(RendaConj >= 0),
sexoConj char(1) not null default 'F' check(sexoConj in('F', 'M')),
primary key(codConj),
foreign key(codCli) references tbClientes(codCli)
);

insert into tbConjuge(codCli,nomeConj,RendaConj,sexoConj)
  values(1, 'carla nogueira', 2500.00, 'F');

insert into tbConjuge(codCli,nomeConj,RendaConj,sexoConj)
  values(2, 'Emilia Pereira', 5500.00, 'F');

insert into tbConjuge(codCli,nomeConj,RendaConj,sexoConj)
  values(6, 'Altiva da costa', 3000.00, 'F');

insert into tbConjuge(codCli,nomeConj,RendaConj,sexoConj)
  values(7, 'carlos de souza', 3250.00, 'M');


create table tbFuncionarios(
codFunc int not null,
codDep int not null, 
nomeFunc varchar(50) not null,
EndFunc varchar(100) not null,
RendFunc decimal(9,2) not null default 0 check(RendFunc >= 0),
sexoFunc char(1) not null default 'F' check(sexoFunc in('F', 'M')),
primary key(codFunc)
foreign key(codPe) references tbPedidos(codPe)
);

insert into tbFuncionarios(codFunc,nomeFunc,EndFunc,RendFunc,sexoFunc)
  values(1, 'vania gabriela pereira', 'rua A', 2500.00, 'F');

insert into tbFuncionarios(codFunc,nomeFunc,EndFunc,RendFunc,sexoFunc)
  values(2, 'noberto Pereira da silva', 'rua B', 300.00, 'M');

insert into tbFuncionarios(codFunc,nomeFunc,EndFunc,RendFunc,sexoFunc)
  values(3, 'olavo linhares', 'rua C', 580.00, 'M');

insert into tbFuncionarios(codFunc,nomeFunc,EndFunc,RendFunc,sexoFunc)
  values(4, 'Paula da silva', 'rua D', 3000.00, 'F');

insert into tbFuncionarios(codFunc,nomeFunc,EndFunc,RendFunc,sexoFunc)
  values(5, 'Rolando rocha', 'rua E', 2000.00, 'M');

create table tbDependentes(
codDep int not null auto_increment, 
codFunc int not null,
nomeDep varchar(100) not null,
sexoDep char(1) not null default 'F' check(sexoDep in('F', 'M')), 
primary key(codDep),
foreign key(codFunc) references tbFuncionarios(codFunc)
);

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(1, 1, 'ana Pereira', 'F');

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(2, 1, 'roberto Pereira', 'M');

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(3, 1, 'celso Pereira', 'F');

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(4, 3, 'brisa linhares', 'F');

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(5, 3, 'mari sol linhares', 'F');

insert into tbDependentes(codDep,codFunc,nomeDep,sexoDep)
  values(6, 4, 'sonia da silva', 'F');

create table tbTitulos(
codTit int not null auto_increment, 
codCat int not null,
codGrav int not null,
nomeCd varchar(50) not null unique,
valCd decimal(9,2) not null check(valCd > 0),
quantEst int not null check(quantEst >= 0),
primary key(codTit),
foreign key(codCat) references tbCategorias(codCat),
foreign key(codGrav) references tbGravadoras(codGrav)
);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(1, 1, 1, 'tribalistas', 30.00, 1500);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(2, 1, 2, 'tropicalia', 50.00, 500);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(3, 1, 1, 'aquele abraco', 50.00, 600);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(4, 1, 2, 'Refazenda', 60.00, 1000);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(5, 1, 3, 'totalmente demais', 50.00, 2000);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(6, 1, 3, 'travessia', 55.00, 500);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(7, 1, 2, 'courage', 30.00, 200);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(8, 4, 3, 'legiao urbana', 20.00, 100);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(9, 3, 2, 'The beatles', 30.00, 300);

insert into tbTitulos(codTit,codCat,codGrav,nomeCd,valCd,quantEst)
  values(10, 4, 1, 'Rita lee', 30.00, 500); 

create table tbPedidos(
codPe int not null auto_increment,
codCli int not null,
codCid int not null, 
codFunc int not null,
dataEm datetime not null,
valPed Decimal(9,2) not null default 0 check(valPed >= 0),
primary key(codPe),
foreign key(codCli) references tbClientes(codCli),
);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(1, 1, 1, 2, '02/05/02 00:00:00', 1500.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(2, 2, 3, 4, '02/05/02 00:00:00', 50.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(3, 3, 4, 7, '02/06/02 00:00:00', 100.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(4, 4, 1, 4, '02/02/03 00:00:00', 200.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(5, 5, 7, 5, '02/03/03 00:00:00', 300.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(6, 6, 4, 4, '02/03/03 00:00:00', 100.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(7, 7, 5, 5, '02/03/03 00:00:00', 50.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(8, 8, 8, 2, '02/03/03 00:00:00', 50.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(9, 9, 2, 2, '02/03/03 00:00:00', 2000.00);

insert into tbPedidos(codCli,codPe,codCid,codFunc,dataEm,valPed)
  values(10, 10, 7, 1, '02/03/03 00:00:00', 3000.00);

create table tbTituloPedido(
codTitPe int not null auto_increment, 
codPe int not null,
codTit int not null,
quantCd int not null check(quantCd >= 1),
valCd decimal(9,2) not null check(valCd > 0), 
primary key(codTitPe),
foreign key(codPe) references tbPedidos(codPe), 
foreign key(codTit) references tbTitulos(codTit)
);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(1, 1, 2, 30.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(1, 2, 3, 20.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(2, 1, 1, 50.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(2, 2, 3, 30.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(3, 1, 2, 40.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(4, 2, 3, 20.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(5, 1, 2, 25.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(6, 2, 3, 30.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(6, 3, 1, 35.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(7, 4, 2, 55.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(8, 1, 4, 60.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(8, 1, 4, 60.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(9, 2, 3, 15.00);

insert into tbTituloPedido(codPe,codTit,quantCd,valCd)
  values(10, 7, 2, 15.00);

create table tbTitulosArtistas(
codTitArt int not null auto_increment, 
codTit int not null,
codArt int not null,
primary key(codTitArt),
foreign key(codTit) references tbTitulos(codTit),
foreign key(codArt) references tbArtistas(codArt)
);

insert into tbTitulosArtistas(codTit,codArt)
  values(1, 1);

insert into tbTitulosArtistas(codTit,codArt)
  values(2, 2);

insert into tbTitulosArtistas(codTit,codArt)
  values(3, 2);

insert into tbTitulosArtistas(codTit,codArt)
  values(4, 2);

insert into tbTitulosArtistas(codTit,codArt)
  values(5, 3);

insert into tbTitulosArtistas(codTit,codArt)
  values(6, 4);

insert into tbTitulosArtistas(codTit,codArt)
  values(7, 4);

insert into tbTitulosArtistas(codTit,codArt)
  values(8, 5);

insert into tbTitulosArtistas(codTit,codArt)
  values(9, 6);

insert into tbTitulosArtistas(codTit,codArt)
  values(10, 7);


-- imprimindo tabelas

desc tbArtistas;
desc tbGravadoras;
desc tbCategorias;
desc tbEstados;
desc tbCidades;
desc tbClientes;
desc tbConjuge;
desc tbFuncionarios;
desc tbDependentes;
desc tbTitulos;
desc tbTitulosArtistas;


-- 1. Selecione o nome dos CDs e o nome da gravadora de cada CD. 

SELECT t.NOME_CD, g.NOME_GRAV
FROM tb_TITULOS t
JOIN tb_GRAVADORAS g ON t.COD_GRAV = g.COD_GRAV;


-- 2. Selecione o nome dos CDs e o nome da categoria de cada CD. 
SELECT t.NOME_CD, c.NOME_CAT
FROM tb_TITULOS t
JOIN tb_CATEGORIAS c ON t.COD_CAT = c.COD_CAT;


-- 3. Selecione o nome dos CDs, o nome das gravadoras de cada CD e o nome da categoria de 
--cada CD. 
SELECT t.NOME_CD, g.NOME_GRAV, c.NOME_CAT
FROM tb_TITULOS t
JOIN tb_GRAVADORAS g ON t.COD_GRAV = g.COD_GRAV
JOIN tb_CATEGORIAS c ON t.COD_CAT = c.COD_CAT;

 
-- 4. Selecione o nome dos clientes e os títulos dos CDs vendidos em cada pedido que o 
-- cliente fez. 

SELECT c.NOME_CLI, t.NOME_CD
FROM tb_PEDIDOS p
JOIN tb_CLIENTES c ON p.COD_CLI = c.COD_CLI
JOIN tb_TITULOS_PEDIDOS tp ON p.NUM_PED = tp.NUM_PED
JOIN tb_TITULOS t ON tp.COD_TIT = t.COD_TIT;

 

-- 5. Selecione o nome do funcionário, número, data e valor dos pedidos que este 
-- funcionário registrou, além do nome do cliente que está fazendo o pedido. 
-- Resposta: 

SELECT f.NOME_FUNC, p.NUM_PED, p.DATA_PED, p.VAL_PED, c.NOME_CLI
FROM tb_PEDIDOS p
JOIN tb_FUNCIONARIOS f ON p.COD_FUNC = f.COD_FUNC
JOIN tb_CLIENTES c ON p.COD_CLI = c.COD_CLI;


-- 6. Selecione o nome dos funcionários e o nome de todos os dependentes de cada 
-- funcionário. 

SELECT f.NOME_FUNC, d.NOME_DEP
FROM tb_FUNCIONARIOS f
LEFT JOIN tb_DEPENDENTES d ON f.COD_FUNC = d.COD_FUNC;

 
-- 7. Selecione o nome dos clientes e o nome dos cônjuges de cada cliente. 

SELECT c.NOME_CLI, cj.NOME_CONJ
FROM tb_CLIENTES c
LEFT JOIN tb_CONJUGE cj ON c.COD_CLI = cj.COD_CONJ;

 
-- 8. Selecione o nome de todos os clientes. Se estes possuem cônjuges, mostrar os nomes 
-- de seus cônjuges também.

SELECT c.NOME_CLI, cj.NOME_CONJ
FROM tb_CLIENTES c
LEFT JOIN tb_CONJUGE cj ON c.COD_CLI = cj.COD_CONJ;


-- 9. Selecione nome do cliente, nome do cônjuge, número do pedido que cada cliente fez, 
-- valor de cada pedido que cada cliente fez e código do funcionário que atendeu a cada 
-- pedido.

SELECT c.NOME_CLI, cj.NOME_CONJ, p.NUM_PED, p.VAL_PED, p.COD_FUNC
FROM tb_PEDIDOS p
JOIN tb_CLIENTES c ON p.COD_CLI = c.COD_CLI
LEFT JOIN tb_CONJUGE cj ON c.COD_CLI = cj.COD_CONJ;