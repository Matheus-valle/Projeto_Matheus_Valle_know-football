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
    
    DROP TABLE TIMES;
    

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

INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time, formulario_time) VALUES
	('SP Storm', 'São Paulo',  'sudeste', 'São Paulo', 'askdjaskjsda');

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL, 
    email_usuario VARCHAR(45) NOT NULL,
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
	metrica_shuttle_20 FLOAT,
	metrica_shuttle_60 FLOAT,
	metrica_supino INT
);



CREATE TABLE Metrica_atual (
idMetrica INT AUTO_INCREMENT,
fk_usuario INT,
mes INT NOT NULL,  
metrica_tiro40y DECIMAL(3,2),
metrica_3cones DECIMAL(4,2),
metrica_shuttle_20 DECIMAL(4,2),
metrica_shuttle_60 DECIMAL(4,2),
metrica_supino INT,
CONSTRAINT pks_metrica_fkusuario
	PRIMARY KEY(idMetrica, fk_usuario),
CONSTRAINT fk_usuario_metrica_atual
	FOREIGN KEY(fk_usuario)
		REFERENCES Usuario (idUsuario)
);