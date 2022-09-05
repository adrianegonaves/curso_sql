CREATE DATABASE secao3;
USE secao3;

CREATE TABLE pessoas (nome VARCHAR (100), cpf CHAR(11), descricao MEDIUMTEXT);

SELECT *  FROM pessoas;

CREATE TABLE teste (
nome VARCHAR(100),
idade INT,
descricao MEDIUMTEXT
);

DROP TABLE teste;

CREATE DATABASE teste_tipo_dados;
USE teste_tipo_dados;
CREATE TABLE produtos (
nome VARCHAR(60),
sku CHAR (5),
informacaoes MEDIUMTEXT
);

CREATE TABLE cadastro (
nome VARCHAR (100),
sobrenome VARCHAR(100)
);

INSERT INTO produtos ( nome, sku, informacaoes)
VALUES ("Playstation 5", "PS5XY", "É um video game de última geração");

SELECT * FROM produtos;

INSERT INTO produtos ( nome, sku, informacaoes)
VALUES ("Óculos ", "chillibeans", "Óculos de sol com moldura de acrílico para decoração de rebite "),
	("Meia", "Lupo", "Meias quentinhas");

CREATE TABLE servidores(
nome VARCHAR (100),
espaco_disco INT(10),
ligado BOOL 
);
INSERT INTO servidores (nome, espaco_disco, ligado) 
VALUES ("servidor1", "124578", "0");

INSERT INTO servidores (nome, espaco_disco, ligado) 
VALUES ("servidor2", "145687", "1");

INSERT INTO servidores (nome, espaco_disco, ligado) 
VALUES ("servidor3", "48786" , "0");

INSERT INTO servidores (nome, espaco_disco, ligado) 
VALUES ("servidor4", "78545", "1");


SELECT * FROM servidores;

CREATE TABLE aniversarios (
nome VARCHAR (100),
data_nascimento DATE
);

INSERT INTO aniversarios (nome, data_nascimento) VALUES ("Adriane", "1997-05-20");

SELECT * FROM aniversarios;
