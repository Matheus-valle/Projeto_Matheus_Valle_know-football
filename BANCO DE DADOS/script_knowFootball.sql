CREATE DATABASE football_db;

USE football_db;


CREATE TABLE TIMES (
idTIMES int PRIMARY KEY AUTO_INCREMENT,
nome_time VARCHAR(45),
estado_time VARCHAR(45),
região_time VARCHAR(45),
cidade_time VARCHAR(45),
formulario_time VARCHAR(200)
); 

INSERT INTO TIMES (nome_time, estado_time, região_time, cidade_time, formulario_time) VALUES
	('SP Storm', 'São Paulo',  'sudeste', 'São Paulo', 'askdjaskjsda');

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL, 
    email_usuario VARCHAR(45) NOT NULL,
    senha_usuario VARCHAR(45) NOT NULL,
    região_usuario VARCHAR(45),
    altura_usuario DECIMAL(3,2),
    peso_usuario DECIMAL(5,3),
    frequencia_treino INT 
);


CREATE TABLE Metricas_iniciais_usuario (
idMetrica INT AUTO_INCREMENT,
fk_usuario INT, 
metrica_tiro40y DECIMAL(3,2),
metrica_3cones DECIMAL(4,2),
metrica_shuttle_20 DECIMAL(4,2),
metrica_shuttle_60 DECIMAL(4,2),
metrica_supino INT,
CONSTRAINT pks_metrica_fkusuario
	PRIMARY KEY(idMetrica, fk_usuario),
CONSTRAINT fk_usuario_inicial
	FOREIGN KEY(fk_usuario)
		REFERENCES Usuario (idUsuario)
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