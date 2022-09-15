CREATE DATABASE constraints;
USE constraints;

CREATE TABLE pessoas (
nome VARCHAR (100) NOT NULL,
idade INT
);

CREATE TABLE pessoas2 (
nome VARCHAR (100) NOT NULL,
idade INT NOT NULL
);

SELECT * FROM pessoas;

INSERT INTO pessoas (nome, idade) VALUES ("Adriane", 25);
INSERT INTO pessoas (nome, idade) VALUES (25);
INSERT INTO pessoas (nome, idade) VALUES (NULL, 25);
INSERT INTO pessoas (nome, idade) VALUES ("Ana");
INSERT INTO pessoas2 (nome, idade) VALUES ("Ana", NULL);
INSERT INTO pessoas2 (nome, idade) VALUES ("Ana", 30);
INSERT INTO pessoas2 (nome, idade) VALUES ("Ana" );

ALTER TABLE pessoas ADD COLUMN email VARCHAR(255) UNIQUE;
INSERT INTO pessoas (nome, idade, email) VALUES ("Adriane", 25, "adri@gmail.com");
INSERT INTO pessoas (nome, idade, email) VALUES ("Adriele", 25, "adri@gmail.com");

CREATE TABLE produto (
id INT NOT NULL,
nome VARCHAR (255),
sku VARCHAR(255),
PRIMARY KEY(id)
);
SELECT * FROM produto;
INSERT INTO produto VALUES (1, "bone" , "14587");
INSERT INTO produto VALUES ( NULL "bone" , "14587");
INSERT INTO produto VALUES ( 1, "brinco" , "14587");
INSERT INTO produto VALUES ( 2, "brinco" , "14KI87");
INSERT INTO produto VALUES ( 3, "tv" , "1AHHKI87");
UPDATE produto SET sku= "454656" WHERE id = 2;

CREATE TABLE frutas (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (255)
);
SELECT * FROM frutas;
INSERT INTO frutas (nome) VALUES ( "laranja" );
INSERT INTO frutas (nome) VALUES ( "banana" );
INSERT INTO frutas (nome) VALUES ( "abacaxi" );

DELETE FROM frutas WHERE id = 3;

CREATE TABLE pessoas (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (100) NOT NULL,
idade INT 
);

CREATE TABLE enderecos (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
rua VARCHAR (100) NOT NULL,
numero VARCHAR (10), 
pessoa_id INT NOT NULL,
FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
);

INSERT INTO pessoas (nome, idade) VALUES ("Adriane", 25);
INSERT INTO enderecos (rua, numero, pessoa_id) VALUES ("Sem nome", "20", 1);

SELECT * FROM enderecos;
SELECT * FROM pessoas;

CREATE INDEX index_nome
ON pessoas(nome);

SELECT * FROM employees WHERE first_name = "Georgi";

CREATE INDEX index_nome
ON employees(first_name);

DROP INDEX index_nome
ON pessoas;

CREATE DATABASE banco;
USE banco;

CREATE TABLE contas (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (100) NOT NULL,
sobrenome  VARCHAR (100) NOT NULL ,
saldo  VARCHAR (100) NOT NULL,
data_nascimento DATETIME
);

CREATE INDEX index_saldo
ON contas(saldo);
SELECT * FROM contas;
INSERT INTO contas ( nome, sobrenome, saldo, data_nascimento) VALUES ("Shawm", "Mendes", "1000000","1997/05/20");
INSERT INTO contas ( nome, sobrenome, saldo, data_nascimento) VALUES ("Pietra", "Mendez", "1000","30/85/1598");