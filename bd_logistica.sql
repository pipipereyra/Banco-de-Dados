DROP DATABASE IF EXISTS bd_logistica;
CREATE DATABASE bd_logistica;
USE bd_logistica;

--//////////////////////////////////////////////////////////////////////////

CREATE TABLE marca(
codigo INT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
nacionalidade VARCHAR(100) NOT NULL,
ano_fundacao INT NOT NULL,
PRIMARY KEY (codigo));


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE modelo(
codigo INT AUTO_INCREMENT,
codigo_marca INT,
nome VARCHAR(50) NOT NULL,
PRIMARY KEY (codigo)
FOREIGN KEY (codigo_marca), 
	REFERENCES marca(codigo)
	ON DELETE SET NULL
	ON UPDATE CASCADE);


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE caminhao(
placa CHAR(8) NOT NULL,
codigo_modelo INT,
proxima_revisao DATE NOT NULL,
cor VARCHAR(50),
quilometragem INT NOT NULL,
preco FLOAT NOT NULL,
PRIMARY KEY (placa)
FOREIGN KEY (codigo_modelo) 
	REFERENCES modelo(codigo)
	ON DELETE SET NULL
	ON UPDATE CASCADE);


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE motorista(
cnh CHAR(11) UNIQUE NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
nome VARCHAR(50) NOT NULL,
genero VARCHAR(50),
telefone VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
categoria CHAR(3) NOT NULL,
data_admissao DATE NOT NULL,
data_demissao DATE,
PRIMARY KEY (cnh));


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE cidade(
codigo INT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
latitude FLOAT NOT NULL,
longitude FLOAT NOT NULL,
PRIMARY KEY (codigo));


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE estado(
sigla CHAR(2) NOT NULL,
nome VARCHAR(50),
PRIMARY KEY (sigla));


--//////////////////////////////////////////////////////////////////////////

CREATE TABLE viagem(
registro INT AUTO_INCREMENT,
placa_caminhao CHAR(8),
cnh_motorista CHAR(11),
codigo_cidade INT,
observacao VARCHAR(250),
data_chegada DATE NOT NULL,
data_partida DATE NOT NULL,
PRIMARY KEY (registro),
FOREIGN KEY (placa_caminhao)
		REFERENCES caminhao(placa)
    ON DELETE SET NULL
	ON UPDATE CASCADE,
FOREIGN KEY (cnh_motorista)
		REFERENCES motorista(cnh)
        ON DELETE SET NULL
	ON UPDATE CASCADE,
FOREIGN KEY (codigo_cidade)
		REFERENCES cidade(codigo)
	ON DELETE SET NULL
	ON UPDATE CASCADE);

