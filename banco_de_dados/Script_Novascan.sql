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

CREATE TABLE tipoAlerta(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(45)
);

CREATE TABLE alerta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    minIntervalo INT,
    maxIntervalo INT,
    fkUsuario INT,
    fkComponente INT,
    fkDispositivo INT,
    fkTipoAlerta INT, 
    FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    FOREIGN KEY (fkComponente) REFERENCES componente(id),
    FOREIGN KEY (fkDispositivo) REFERENCES dispositivo(id),
    FOREIGN KEY (fkTipoAlerta) REFERENCES tipoAlerta(id)
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

INSERT INTO tipoAlerta(tipo) VALUES
('Uso CPU (%)'),
('Frequência CPU (Ghz)'),
('Uso Memória Ram (GB)'),
('Uso Armazenamento(GB)'),
('Perda de Pacote(%)'),
('Bytes Enviados e Recebidos(MB)');


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
SELECT d.nome as nomeMaquina, a.minIntervalo, a.maxIntervalo, c.tipo, ta.tipo as tipoAlerta, a.fkUsuario, a.fkDispositivo
FROM alerta as a JOIN componente as c
ON a.fkComponente = c.id
JOIN tipoAlerta as ta
ON a.fkTipoAlerta = ta.id
JOIN dispositivo as d
ON a.fkDispositivo = d.id
JOIN usuario as u
ON a.fkUsuario = u.id;

CREATE VIEW alertaDispositivo as 
SELECT 
    l_max.valor AS valor,
    l_max.unidadeDeMedida,
    l_max.dataHora,
    l_max.id AS idLog,
    l_max.descricao,
    c.tipo,
    d.id AS idDispositivo
FROM 
    (
        SELECT 
            l.valor,
            l.unidadeDeMedida,
            l.dataHora,
            l.id,
            l.descricao,
            l.fkComponente,
            l.fkDispositivo,
            ROW_NUMBER() OVER (PARTITION BY c.tipo, l.descricao ORDER BY l.dataHora DESC, l.valor DESC) AS rn
        FROM 
            log AS l
        JOIN 
            componente AS c ON l.fkComponente = c.id
        WHERE 
            l.eAlerta = 1
    ) AS l_max
JOIN 
    componente AS c ON l_max.fkComponente = c.id
JOIN 
    dispositivo AS d ON l_max.fkDispositivo = d.id
WHERE 
    l_max.rn = 1
ORDER BY 
    c.tipo, l_max.descricao;

CREATE VIEW mediaPorHorario AS
SELECT DATE_FORMAT(dataHora, '%W') AS dia_semana,
	DATE_FORMAT(dataHora, '%H:00') AS hora, 
    DATE_FORMAT(dataHora, '%Y-%m-%d') AS data,
       AVG(valor) AS media_valor
FROM log
WHERE dataHora BETWEEN '2024-11-03%' AND '2024-11-09 23:59:59'
  AND fkComponente = 1
GROUP BY dia_semana, data, hora
ORDER BY  data, hora desc;