CREATE DATABASE ASSISLICITACAO;

--Trigrama Tipos_Pessoa = TPP
CREATE TABLE Tipos_Pessoa(
	TPP_Id int IDENTITY(1,1),
	TPP_Tipo varchar(100) not null,
	PRIMARY KEY(TPP_Id)
);

--Trigrama PESSOAS = PSO
CREATE TABLE PESSOAS(
	PSO_Id int IDENTITY(1,1),
	PSO_Nome varchar(300) not null,
	PSO_CPF char(11) not null,
	PSO_RG char(9) not null,
	PSO_Email varchar(300),
	PSO_TPP_Id int not null,
	PRIMARY KEY(PSO_Id),
	FOREIGN KEY(PSO_TPP_Id) REFERENCES TIPOS_PESSOA(TPP_Id)
);

--Trigrama USUAIO = USU
CREATE TABLE USUARIOS(
	USU_Id int IDENTITY(1,1),
	USU_Login varchar(200) not null,
	USU_Senha varchar(200) not null,
	USU_PSO_Id int not null,
	PRIMARY KEY(USU_Id),
	FOREIGN KEY(USU_PSO_Id) REFERENCES PESSOAS(PSO_Id)
);