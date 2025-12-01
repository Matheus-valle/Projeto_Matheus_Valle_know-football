CREATE DATABASE football_db;
USE football_db;


CREATE TABLE Região (
idRegião INT PRIMARY KEY AUTO_INCREMENT,
nome_região  VARCHAR(45)
);

SELECT * FROM Região;

INSERT INTO Região (nome_região) VALUES
	('Norte'),
    ('Nordeste'),
    ('Centroeste'),
    ('Sudeste'),
    ('Sul');

CREATE TABLE TIMES (
idTIMES int PRIMARY KEY AUTO_INCREMENT,
nome_time VARCHAR(45),
estado_time VARCHAR(45),
região_time INT,
CONSTRAINT fk_região_time
	FOREIGN KEY (região_time)
		REFERENCES Região (idRegião),
cidade_time VARCHAR(45),
formulario_time VARCHAR(200),
categoria VARCHAR(45)
); 


INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time, formulario_time, categoria) VALUES
	('Time Manaus', 'Amazonas', 1, 'Manaus' ,'asdsalasdk', 'masculino'),
	('Time Pará', 'Pará', 1, 'Belem' ,'asdsalasdk', 'feminino'),
	('Time Recife', 'Pernambuco', 2, 'Recife', 'asdsalasdk', 'masculino'),
	('Time Fortaleza', 'Ceara', 2,'Fortaleza' ,'asdsalasdk', 'feminino'),
	('Time Cuiaba', 'Mato Grosso', 3,'Cuiaba' ,'asdsalasdk', 'masculino'),
	('Time Campo Grande', 'Mato Grosso do SUl', 3, 'Campo grande', 'asdasda', 'feminino'),  
	('Time São Paulo', 'São Paulo', 4, 'São Paulo', 'asdasda', 'masculino'),  
	('Time Belo Horizonte', 'Minas Gerais', 4, 'Belo Horizonte', 'asdasda', 'feminino'),  
	('Time Porto Alegre', 'Rio Grande do sul', 5, 'Porto alegre', 'asdasda', 'masculino'),  
	('Time Curitiba', 'Parana', 5, 'Curitiba', 'asdasda', 'feminino');  

SELECT * FROM TIMES WHERE região_time = 3;

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL, 
    email_usuario VARCHAR(45) NOT NULL UNIQUE,
    senha_usuario VARCHAR(45) NOT NULL,
    região_usuario INT,
    CONSTRAINT fk_região_usuario
		FOREIGN KEY (região_usuario)
			REFERENCES Região (idRegião),
    altura_usuario DECIMAL(3,2),
    peso_usuario FLOAT,
    frequencia_treino INT,
    metrica_tiro40y FLOAT,
	metrica_3cones FLOAT,
	metrica_supino INT
);


CREATE TABLE Metrica_atual (
idMetrica INT AUTO_INCREMENT,
fk_usuario INT,
mes INT NOT NULL ,  
metrica_tiro40y DECIMAL(3,2),
metrica_3cones DECIMAL(4,2),
metrica_supino INT,
CONSTRAINT pks_metrica_fkusuario
	PRIMARY KEY(idMetrica, fk_usuario),
CONSTRAINT fk_usuario_metrica_atual
	FOREIGN KEY(fk_usuario)
		REFERENCES Usuario (idUsuario),
CONSTRAINT unico_usuario_e_mes
		UNIQUE (fk_usuario, mes)
);



    

 
UPDATE Metrica_atual SET metrica_tiro40y = 10.0
	WHERE fk_usuario = 4 and mes = 1;
    
SELECT * FROM Metrica_atual WHERE fk_usuario = 4;

 SELECT mes, metrica_tiro40y FROM Metrica_atual WHERE mes IN (1,2,3,4,5,6) AND fk_usuario = 1;


SELECT mes, metrica_tiro40y FROM Metrica_atual WHERE mes IN (1,2,3,4,5,6) AND fk_usuario = 3;
    
SELECT nome_time, estado_time, região_time, cidade_time, formulario_time, categoria FROM TIMES WHERE região_time = 3;
SELECT nome_time, estado_time, região_time, cidade_time, formulario_time, categoria FROM Usuario JOIN região ON região_usuario = idRegião JOIN TIMES ON região_time = idRegião WHERE idUsuario =4;
INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time,  formulario_time, categoria) VALUES
	('Time fake A', 'Mato Grosso', 3, 'Cuiaba', 'sadasdasdasda',  'Masculino'),
	('Time fake B', 'Mato Grosso do sul', 3, 'Campo grande', 'sadasdasdasda',  'Feminino');
    
SELECT * FROM Usuario;

DELETE FROM Usuario
		WHERE idUsuario = 11;
INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time,  formulario_time, categoria) VALUES
	('SP Storm', 'São Paulo', 4, 'São Paulo', 'sadasdasdasda',  'Masculino');
    
INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time,  formulario_time, categoria) VALUES
	('Spartans', 'São Paulo', 4, 'São Paulo', 'sadasdasdasda',  'Masculino');
    
INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time,  formulario_time, categoria) VALUES
	('Rhynos', 'São Paulo', 4, 'Guarulhos', 'sadasdasdasda',  'Masculino');
    
    INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time,  formulario_time, categoria) VALUES
	('Galo Fa', 'Minas Gerais', 4, 'Belo Horizonte', 'sadasdasdasda',  'Masculino');
INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time, formulario_time) VALUES
	('SP Storm', 'São Paulo',  'sudeste', 'São Paulo', 'askdjaskjsda');
    
SELECT * FROM Metrica_atual WHERE fk_usuario = 1;
SELECT * FROM Usuario;

INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(1, 5.50, 1),
	(2, 5.50, 1);
    
    
    
INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(5, 5.50, 1),
	(6, 5.50, 1);
INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(2, 4.50, 1),
	(1, 4.50, 1);
    
    
INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(2, 4.50, 1);
    
    INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(3, 4.50, 1);
    
    
        INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(1, 4.50, 1),
	(4, 4.50, 1);
    
    
            INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(2, 4.50, 1),
	(3, 4.50, 1);
    
            INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES
	(5, 4.50, 1);
    
    
SELECT * FROM Metrica_atual;
DELETE FROM Metrica_Atual
	WHERE idMetrica IN (2,3, 4, 5,  6, 7, 8, 9, 10, 11, 12 , 13 , 14, 15, 16,17,18, 19, 20 ,21 , 22, 23, 24, 25);
    
SELECT * FROM Metrica_atual;

      UPDATE Metrica_atual SET metrica_tiro40y = 7.20
    WHERE fk_usuario = 1 AND mes = 2;
    
SELECT * FROM Usuario;

SELECT altura_usuario, peso_usuario FROM Usuario 
 WHERE idUsuario = 1;

