CREATE DATABASE predial;

USE predial;

-- USUÁRIOS
CREATE TABLE usuario (
	nome VARCHAR(20) NOT NULL,
    cpf CHAR(11) NOT NULL,
    cargo VARCHAR(15) NOT NULL,
    acesso boolean NOT NULL,
    usuario VARCHAR(15) NOT NULL,
    PRIMARY KEY(cpf)
);

SELECT * FROM usuario;

-- FUNCIONARIOS
CREATE TABLE funcionario (
	nome VARCHAR(20) NOT NULL,
    cpf CHAR(11) NOT NULL,
    empresa VARCHAR(20) NOT NULL,
    horario VARCHAR(15) NOT NULL,
    acesso boolean NOT NULL,
    ar boolean NOT NULL,
    usuario VARCHAR(15) NOT NULL,
    PRIMARY KEY(cpf)
);

SELECT * FROM FUNCIONARIO;

-- EMPRESAS
CREATE TABLE empresa (
	rsocial VARCHAR(30) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    conjunto INT NOT NULL,
    horaF VARCHAR(20) NOT NULL,
    horaA VARCHAR(20) NOT NULL,
    temp VARCHAR(5) NOT NULL,
    PRIMARY KEY(cnpj)
);

INSERT INTO empresa (rsocial, cnpj, conjunto, horaF, horaA, temp)  VALUES 
("Google", "11111111", "1", "10:00-19:00", "13:00-19:00", "20°"),
("Microsoft", "22222222", "2", "10:00-19:00", "13:00-19:00", "20°"),
("Apple", "3333333333", "3", "10:00-19:00", "13:00-19:00", "20°"),
("Samsumg", "44444444444", "4", "10:00-19:00", "13:00-19:00", "20°");

SELECT * FROM empresa;

CREATE TABLE conjunto(
	num INT NOT NULL,
    nomeP VARCHAR(20),
    cpfP CHAR(11),
    telP VARCHAR(10),
    PRIMARY KEY(num)
);

INSERT INTO conjunto (num, nomeP, cpfP, telP) VALUES
("1", "Lula", "123456789", "1121212131"),
("2", "Dilma", "123456789", "1121212131"),
("3", "Temer", "123456789", "1121212131");

SELECT * FROM conjunto;

CREATE TABLE acesso (
	nome VARCHAR(30) NOT NULL,
    cpf CHAR(11) NOT NULL,
    data VARCHAR(11) NOT NULL,
    hora VARCHAR(10) NOT NULL
);

SELECT * FROM acesso;