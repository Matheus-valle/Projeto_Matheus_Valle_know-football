--Criação do usuario da maquina virtual

sudo adduser projeto_individual

--adicionando o usuario no grupo sudo

sudo usermod -aG sudo projeto_individual

--verificando se o usuario está no grupo sudo
groups projeto_individual

--Entrando no mysql

mysql -u root -p

--Após inserir a senha, criar o banco de dados do projeto

create database fooball_db;

--Após criar o  banco de dados, criar o usuario do banco de dados

CREATE USER 'admin' IDENTIFIED BY 'Wasabi#1234';

--Colocando todas as permissoes para o usuario no banco de dados

GRANT ALL PRIVILEGES ON football_db.* TO usuario;

--após isso acessar o mysql workbench da maquina original e subir o script
