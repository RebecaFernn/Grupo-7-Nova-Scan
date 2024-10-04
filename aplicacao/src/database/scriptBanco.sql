-- Criação do banco de dados
CREATE DATABASE novaScan;
USE novaScan;

CREATE TABLE empresa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    razaoSocial VARCHAR(90) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    INDEX (cnpj)
);

CREATE TABLE tipoUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45) NOT NULL
);

CREATE TABLE statusUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7) NOT NULL
);

alter table statusUsuario change status sitaucao char(7) not null;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(90) NOT NULL,
    email VARCHAR(256) NOT NULL,
    senha VARCHAR(256) NOT NULL,
    fkAdmin INT,
    fkEmpresa INT,
    fkTipoUsuario INT,
    fkStatusUsuario INT,
    FOREIGN KEY (fkAdmin) REFERENCES usuario(id),
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id),
    FOREIGN KEY (fkTipoUsuario) REFERENCES tipoUsuario(id),
    FOREIGN KEY (fkStatusUsuario) REFERENCES statusUsuario(id),
    INDEX (email)
);

CREATE TABLE dispositivo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    tempoAtividade DATETIME NOT NULL,
    fkEmpresa INT,
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id)
);

CREATE TABLE componentes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkDispositivo INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    qtdNucleos INT,
    memTotal INT,
    armaTotal INT,
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
);

ALTER TABLE componentes MODIFY COLUMN armaTotal INT;

CREATE TABLE atividade (
    idAtividade INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7) NOT NULL
);

CREATE TABLE historicoDispositivo (
    fkDispositivo INT,
    fkAtividade INT,
    dataHora DATETIME NOT NULL,
    PRIMARY KEY (fkDispositivo, fkAtividade),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkAtividade) REFERENCES atividade(idAtividade)
);

CREATE TABLE log (
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DOUBLE NOT NULL,
    dataHora DATETIME NOT NULL,
    fkComponente INT,
    fkDispositivo INT,
    FOREIGN KEY (fkComponente) REFERENCES componentes(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
);

SHOW TABLES;
DESC statusUsuario;
DESC usuario;

INSERT INTO statusUsuario (situacao) VALUES 
('Ativo'),
('Inativo');

INSERT INTO empresa (razaoSocial, cnpj) VALUES
('mercado mixx', '12345678918273');

SELECT * FROM empresa;
SELECT * FROM usuario;
DESC usuario;

DESC usuario;

SELECT u.nome, 
u.email,  
adm.nome as 'Administrador Por:', 
tu.tipo, 
su.situacao 
FROM usuario as u 
LEFT JOIN usuario as adm
ON adm.id = u.fkAdmin
JOIN empresa as e 
ON e.id = u.fkEmpresa
JOIN tipoUsuario as tu
ON tu.id = u.fkTipoUsuario
JOIN statusUsuario as su
ON su.id = u.fkStatusUsuario
	WHERE u.fkEmpresa = 1;
    
    
SELECT * FROM usuario;

UPDATE usuario
SET
  nome = COALESCE('Quiteria', nome),
  email = COALESCE('quiquinha@gmail.com', email),
  senha = COALESCE(1234, senha),
  fkTipoUsuario = COALESCE(null, fkTipoUsuario),
  fkStatusUsuario = COALESCE(null,fkStatusUsuario)
WHERE id = 1 AND fkEmpresa = 1;


SELECT * FROM empresa;
SELECT * FROM dispositivo;

INSERT INTO dispositivo (nome, fkEmpresa) VALUES
('Maquina1', 1);

SELECT nome FROM dispositivo as d JOIN empresa as e
	ON d.fkEmpresa = e.id
		WHERE e.id = 2;
        
SELECT * FROM dispositivo;
    
DESC componentes;
DESC componentes;
USE novascan;
SELECT * FROM empresa;
DESC componentes;

SELECT * FROM dispositivo as d JOIN componentes as c
ON d.id = c.fkDispositivo
JOIN empresa as e 
ON e.id = d.fkEmpresa
WHERE fkEmpresa = 1;

DESC componentes;