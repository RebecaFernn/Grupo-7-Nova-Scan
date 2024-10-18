-- Criação do banco de dados
CREATE DATABASE novaScan;
USE novaScan;

CREATE TABLE empresa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    razaoSocial VARCHAR(90) NOT NULL,
    cnpj CHAR(14) NOT NULL UNIQUE
);

CREATE TABLE tipoUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45) NOT NULL
);

CREATE TABLE statusUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7) NOT NULL
);

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(90) NOT NULL,
    email VARCHAR(256) NOT NULL UNIQUE,
    senha VARCHAR(256) NOT NULL,
    fkAdmin INT,
    fkEmpresa INT,
    fkTipoUsuario INT NOT NULL,
    fkStatusUsuario INT NOT NULL,
    FOREIGN KEY (fkAdmin) REFERENCES usuario(id),
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id),
    FOREIGN KEY (fkTipoUsuario) REFERENCES tipoUsuario(id),
    FOREIGN KEY (fkStatusUsuario) REFERENCES statusUsuario(id)
);

CREATE TABLE dispositivo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    fkEmpresa INT NOT NULL,
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id)
);

CREATE TABLE atividade (
    idAtividade INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7) NOT NULL
);

CREATE TABLE historicoAtividade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkDispositivo INT NOT NULL,
    fkAtividade INT NOT NULL,
    dataHora DATETIME NOT NULL,
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkAtividade) REFERENCES atividade(idAtividade)
);

CREATE TABLE componentes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkDispositivo INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    qtdNucleos INT,
    memTotal INT,
    armazTotal INT,
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
);

CREATE TABLE alertas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    intervaloMax INT NOT NULL,
    intervaloMin INT NOT NULL,
    descricao VARCHAR(255),
    fkUsuario INT NOT NULL,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(id)
);

CREATE TABLE log (
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DOUBLE NOT NULL,
    dataHora DATETIME NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    fkComponente INT NOT NULL,
    fkDispositivo INT NOT NULL,
    fkAlertas INT,
    FOREIGN KEY (fkComponente) REFERENCES componentes(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkAlertas) REFERENCES alertas(id)
);

CREATE TABLE alertasComponentes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkComponente INT NOT NULL,
    fkDispositivo INT NOT NULL,
    fkAlertas INT NOT NULL,
    FOREIGN KEY (fkComponente) REFERENCES componentes(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkAlertas) REFERENCES alertas(id)
);

INSERT INTO statusUsuario (situacao) VALUES 
('Ativo'),
('Inativo');

INSERT INTO atividade (situacao) VALUES
('Ativo'),
('Inativo');

INSERT INTO tipoUsuario(tipo) VALUES
('Administrador'),
('Funcionário');
    
CREATE VIEW ultimoComponente AS
 SELECT 
        MAX(componentes.id) AS id,
        componentes.nome AS nome,
        componentes.tipo AS tipo
    FROM
        componentes
    GROUP BY componentes.nome , componentes.tipo;
    
CREATE VIEW listarfuncionario as
SELECT u.id, u.nome, adm.nome as nomeAdmin, u.email, u.fkEmpresa, tu.tipo as cargo, su.situacao, e.razaoSocial FROM usuario as u JOIN tipoUsuario as tu
ON u.fkTipoUsuario = tu.id
JOIN statusUsuario as su
ON u.fkStatusUsuario = su.id
LEFT JOIN usuario as adm
ON u.fkAdmin = adm.id
JOIN empresa as e 
ON e.id = u.fkEmpresa;



