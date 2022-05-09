#permite criar um data base no banco de dados
create database dbvideolocadora20221;

#permite mostrar todos os databases existentes no banco de dados
show databases;

#permite apagar o database existentes
drop database dbvideolocadora20221;

#permite usar o db
use dbvideolocadora20221;

#comando para manipular tabelas
##tabela de sexo
create table tblSexo(
	id int  not null auto_increment primary key,
	nome varchar(25) not null,
    sigla varchar(1)  not null,
    unique index(id)
);
##tabela de genero
create table tblgenero(
	id int unsigned not null auto_increment,
	nome varchar(25) not null,
    primary key(id), ## outra forma de criar a Primary key no script
    unique index(id)
);
##tabela de streaming
create table tblstreaming(
	id int unsigned not null auto_increment primary key,
	nome varchar(45) not null,
    unique index(id)
);
##tabela de nacionalidade
create table tblnacionalidade(
	id int unsigned not null auto_increment primary key
);
##tabela ator   
create table tblstreaming(
	id int unsigned not null auto_increment primary key,
	nome varchar(80) not null,
	nomeArtistico varchar(80),
    dataNascimento date not null,
    dataFalescimento date,
    biografia text,
    idSexo int not null,
    constraint Fk_Sexo_ator
    foreign key(idSexo)
    unique index(id)
);
#descreve o que tem na tabela
desc tblnacionalidade;

#adiciona na tabela
alter table tblnacionalidade 
		add column nome varchar(45) not null,
		add unique index(id);

#permite modificar
alter table tblnacionalidade 
		modify nome varchar(45) not null;

#permite trocar o tipo de dados
alter table tblnacionalidade 
		change nome nomeNacionalidade varchar(35);
 
 
#mostra as tabelas 
show tables;

#permite exlcuir tabela
 ##drop table tblstreaming; 

 ##Permite vizualizar a estrutura de uma tabela
 #(tipo de dados,PK,FK,etc)
 desc tblSexo;
 describe tblSexo;