CREATE DATABASE cadastro;
USE cadastro ;
CREATE TABLE pessoas (
nome VARCHAR (100),
rg VARCHAR (10),
cpf VARCHAR (11),
limite INT(10)
);
INSERT INTO pessoas (nome, rg, cpf, limite) 
VALUES 
("Adriane", "129456789", "12345678912", 1000 ),
("Pedro", "109456789", "12345858912", 2000 ),
("Carme", "108556789", "10345858912", 3000 ),
("Jumara", "108886789", "10345858782", 4000 ),
("Mario", "108589789", "10345858920", 5000 );

SELECT * FROM pessoas;
SELECT nome, rg FROM pessoas;
SELECT nome FROM pessoas;

INSERT INTO pessoas (nome, rg, cpf, limite) 
VALUES 
("João", "129456784", "12475678912", 1 );
INSERT INTO pessoas 
VALUES 
("Joana", "129456784", "12475678912", 150 );

SELECT * FROM pessoas
WHERE nome = "Pedro";
SET SQL_SAFE_UPDATES = 0;
UPDATE pessoas SET limite = 1000 WHERE nome = "Pedro";
UPDATE pessoas SET nome= "Pedro Augusto", cpf = "0000000000" WHERE nome = "Pedro";
UPDATE pessoas SET limite = 1000 WHERE nome = "Jumara";

DELETE FROM pessoas WHERE nome = "Carme";
DELETE FROM pessoas WHERE limite > 2000;

SELECT *  FROM pessoas WHERE nome = "Adriane";
DELETE FROM pessoas WHERE nome = "Adriane";

DELETE FROM  pessoas; 