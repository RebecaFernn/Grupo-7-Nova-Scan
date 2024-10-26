-- Criação do banco de dados
CREATE DATABASE novascan;
USE novascan;

CREATE TABLE empresa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    razaoSocial VARCHAR(90),
    cnpj CHAR(14)
);

CREATE TABLE dispositivo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    fkEmpresa INT,
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id)
);

CREATE TABLE componente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    tipo VARCHAR(30),
    fkDispositivo INT,
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
);

CREATE TABLE statusUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7)
);

CREATE TABLE tipoUsuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(45)
);

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(90),
    email VARCHAR(256),
    senha VARCHAR(256),
    fkAdmin INT,
    fkEmpresa INT,
    fkTipoUsuario INT,
    fkStatusUsuario INT,
    FOREIGN KEY (fkAdmin) REFERENCES usuario(id),
    FOREIGN KEY (fkEmpresa) REFERENCES empresa(id),
    FOREIGN KEY (fkTipoUsuario) REFERENCES tipoUsuario(id),
    FOREIGN KEY (fkStatusUsuario) REFERENCES statusUsuario(id)
);

CREATE TABLE atividade (
    idAtividade INT PRIMARY KEY AUTO_INCREMENT,
    situacao CHAR(7)
);

CREATE TABLE historicoAtividade (
	id INT AUTO_INCREMENT,
    fkDispositivo INT,
    fkAtividade INT,
    dataHora DATETIME,
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkAtividade) REFERENCES atividade(idAtividade),
    PRIMARY KEY (id, fkDispositivo, fkAtividade)
);

CREATE TABLE alerta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    minIntervalo INT,
    maxIntervalo INT,
    fkUsuario INT,
    fkComponente INT,
    fkDispositivo INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    FOREIGN KEY (fkComponente) REFERENCES componente(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
);

CREATE TABLE log (
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DOUBLE,
    unidadeDeMedida VARCHAR(5),
    dataHora DATETIME,
    descricao VARCHAR(255),
    fkComponente INT,
    fkDispositivo INT,
    FOREIGN KEY (fkComponente) REFERENCES componente(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id)
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
        MAX(componente.id) AS id,
        componente.nome AS nome,
        componente.tipo AS tipo
    FROM
        componente
    GROUP BY componente.nome , componente.tipo;
    
CREATE VIEW listarfuncionario as
SELECT u.id, u.nome, adm.nome as nomeAdmin, u.email, u.fkEmpresa, tu.tipo as cargo, su.situacao, e.razaoSocial FROM usuario as u JOIN tipoUsuario as tu
ON u.fkTipoUsuario = tu.id
JOIN statusUsuario as su
ON u.fkStatusUsuario = su.id
LEFT JOIN usuario as adm
ON u.fkAdmin = adm.id
JOIN empresa as e 
ON e.id = u.fkEmpresa;











