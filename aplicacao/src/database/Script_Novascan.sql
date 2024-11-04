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
    eAlerta TINYINT,
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


-- Adicionando todas as views usadas no projeto
CREATE VIEW ultimoComponente AS
 SELECT 
        MAX(c.id) AS id,
        c.nome AS nome,
        c.tipo AS tipo,
        c.fkDispositivo
    FROM
        componente as c 
    GROUP BY c.nome , c.tipo, c.fkDispositivo;
    
CREATE VIEW listarfuncionario as
SELECT u.id, u.nome, adm.nome as nomeAdmin, u.email, u.fkEmpresa, tu.tipo as cargo, su.situacao, e.razaoSocial FROM usuario as u JOIN tipoUsuario as tu
ON u.fkTipoUsuario = tu.id
JOIN statusUsuario as su
ON u.fkStatusUsuario = su.id
LEFT JOIN usuario as adm
ON u.fkAdmin = adm.id
JOIN empresa as e 
ON e.id = u.fkEmpresa;

CREATE VIEW listaDispositivo as 
SELECT d.id, d.nome, ha.dataHora, a.situacao, e.id AS idEmpresa, l.eAlerta AS alerta
FROM dispositivo AS d
JOIN historicoAtividade AS ha ON d.id = ha.fkDispositivo
JOIN atividade AS a ON a.idAtividade = ha.fkAtividade
JOIN empresa AS e ON e.id = d.fkEmpresa
JOIN log AS l ON l.fkDispositivo = d.id
WHERE l.eAlerta = 1

UNION

SELECT d.id, d.nome, ha.dataHora, a.situacao, e.id AS idEmpresa, l.eAlerta AS alerta
FROM dispositivo AS d
JOIN historicoAtividade AS ha ON d.id = ha.fkDispositivo
JOIN atividade AS a ON a.idAtividade = ha.fkAtividade
JOIN empresa AS e ON e.id = d.fkEmpresa
JOIN log AS l ON l.fkDispositivo = d.id
WHERE l.eAlerta = 0
AND d.id NOT IN (
    SELECT d2.id
    FROM dispositivo AS d2
    JOIN log AS l2 ON l2.fkDispositivo = d2.id
    WHERE l2.eAlerta = 1
);

CREATE VIEW alertaUsuario as
SELECT d.nome as nomeMaquina, a.minIntervalo, a.maxIntervalo, c.tipo, a.fkUsuario, a.fkDispositivo
FROM alerta as a JOIN componente as c
ON a.fkComponente = c.id
JOIN dispositivo as d
ON a.fkDispositivo = d.id
JOIN usuario as u
ON a.fkUsuario = u.id;

CREATE VIEW alertaDispositivo as 
SELECT 
    MAX(l.valor) AS valor,
    l.unidadeDeMedida,
    (SELECT l2.dataHora 
     FROM log AS l2 
     WHERE l2.fkComponente = l2.fkComponente 
       AND l2.valor = MAX(l.valor)
       AND l2.eAlerta = 1 
       AND l2.fkDispositivo = d.id
     LIMIT 1) AS dataHora,
     l.descricao,
    c.tipo,
    d.id as idDispositivo
FROM 
    log AS l 
JOIN 
    componente AS c ON l.fkComponente = c.id
JOIN 
    dispositivo AS d ON l.fkDispositivo = d.id 
WHERE 
    l.eAlerta = 1 
GROUP BY 
    c.tipo, l.unidadeDeMedida, l.descricao, d.id
ORDER BY 
    c.tipo;











