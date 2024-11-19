INSERT INTO empresa (razaoSocial, cnpj) VALUES 
("supermercado Sonda", '12345678901234');

INSERT INTO usuario (nome, email, senha, fkAdmin, fkEmpresa, fkTipoUsuario, fkStatusUsuario) VALUES
('Gisele Francisca', 'gisele.francisca@sonda.market', 'novascan', null, 1, 2, 1);

INSERT INTO dispositivo (nome, fkEmpresa) VALUES
('Dispositivo 1', 1);

INSERT INTO componente (nome, tipo, fkDispositivo) VALUES
('AMD', 'Processador', 1),
('RAYZEN', 'Memória', 1);
 
-- select * from dispositivo;

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-03 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-03 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-03 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-03 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-03 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-03 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-03 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-03 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-03 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-03 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-03 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-03 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-03 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-03 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-03 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-03 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-03 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-03 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-03 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-03 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-03 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-03 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-03 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-03 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-03 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-03 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-03 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-03 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-03 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-03 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-03 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-03 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-03 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-03 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-03 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-03 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-03 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-03 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-03 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-03 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-03 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-03 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-03 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-03 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-03 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-03 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-03 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-03 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-03 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-03 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-03 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-03 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-03 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-03 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-03 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-03 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-03 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-03 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-03 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-03 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-03 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-03 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-03 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-03 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-03 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-03 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-03 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-03 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-03 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-03 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-03 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-03 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-03 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-03 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-03 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 03/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-03 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-03 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-03 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-03 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-03 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-03 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-03 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-03 17:45:00', 'Uso da Memória', 0, 2, 1);


-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-04 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-04 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-04 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-04 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-04 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-04 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-04 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-04 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-04 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-04 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-04 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-04 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-04 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-04 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-04 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-04 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-04 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-04 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-04 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-04 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-04 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-04 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-04 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-04 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-04 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-04 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-04 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-04 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-04 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-04 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-04 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-04 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-04 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-04 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-04 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-04 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-04 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-04 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-04 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-04 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-04 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-04 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-04 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-04 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-04 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-04 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-04 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-04 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-04 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-04 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-04 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-04 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-04 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-04 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-04 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-04 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-04 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-04 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-04 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-04 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-04 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-04 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-04 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-04 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-04 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-04 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-04 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-04 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-04 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-04 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-04 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-04 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-04 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-04 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-04 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-04 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-04 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-04 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-04 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-04 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-04 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-04 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-04 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-04 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-04 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-04 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-04 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-04 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-04 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-04 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-04 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-04 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-04 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-04 21:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-05 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-05 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-05 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-05 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-05 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-05 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-05 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-05 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-05 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-05 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-05 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-05 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-05 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-05 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-05 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-05 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-05 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-05 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-05 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-05 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-05 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-05 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-05 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-05 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-05 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-05 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-05 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-05 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-05 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-05 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-05 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-05 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-05 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-05 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-05 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-05 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-05 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-05 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-05 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-05 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-05 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-05 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-05 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-05 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 04/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-05 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-05 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-05 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-05 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-05 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-05 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-05 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-05 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-05 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-05 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-05 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-05 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-05 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-05 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-05 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-05 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-05 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-05 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-05 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-05 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-05 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-05 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-05 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-05 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-05 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-05 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-05 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-05 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-05 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-05 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-05 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-05 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-5 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-05 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-05 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-05 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-05 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-05 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-05 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-05 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-05 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-05 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-05 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-05 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-05 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-05 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-05 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-05 21:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-06 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-06 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-06 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-06 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-06 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-06 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-06 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-06 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-06 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-06 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-06 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-06 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-06 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-06 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-06 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-06 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-06 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-06 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-06 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-06 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-06 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-06 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-06 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-06 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-06 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-06 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-06 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-06 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-06 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-06 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-06 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-06 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-06 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-06 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-06 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-06 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-06 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-06 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 21:45:00', 'Uso da Memória', 0, 2, 1);



-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 08/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-08 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-08 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-08 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-08 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-08 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-08 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-08 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-08 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-08 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-08 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-08 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-08 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-08 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-08 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-08 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-08 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-08 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-08 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-08 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-08 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-08 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-08 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-08 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-08 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-08 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-08 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-08 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-08 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-08 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-08 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-08 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-08 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-08 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-08 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-08 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-08 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-08 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-08 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 21:45:00', 'Uso da Memória', 0, 2, 1);



-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-05 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-05 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-05 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-05 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-05 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-05 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-05 21:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-06 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-06 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-06 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-06 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-06 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-06 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-06 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-06 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-06 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-06 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-06 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-06 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-06 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-06 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-06 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-06 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-06 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-06 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-06 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-06 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-06 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-06 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-06 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-06 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-06 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-06 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-06 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-06 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-06 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-06 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-06 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-06 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-06 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-06 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-06 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-06 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-06 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-06 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-06 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-06 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-06 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-06 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-06 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-06 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-06 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-06 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-06 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-06 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-06 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-06 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-06 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-06 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-06 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-06 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-06 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-06 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-06 21:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-07 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-07 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-07 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-07 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-07 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-07 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-07 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-07 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-07 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-07 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-07 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-07 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-07 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-07 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-07 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-07 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-07 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-07 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-07 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-07 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-07 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-07 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-07 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-07 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-07 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-07 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-07 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-07 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-07 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-07 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-07 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-07 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-07 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-07 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-07 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-07 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-07 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-07 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-07 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-07 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-07 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-07 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-07 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-07 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-07 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-07 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-07 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-07 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-07 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-07 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-07 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-07 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-07 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-07 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-07 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-07 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-07 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-07 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-07 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-07 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-07 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-07 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-07 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-07 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-07 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-07 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-07 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-07 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-07 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-07 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-07 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-07 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-07 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-07 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-07 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-07 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-07 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-07 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-07 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-07 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-07 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-07 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-07 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-07 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-07 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-07 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-07 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-07 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-07 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-07 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-07 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-07 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-07 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-07 21:45:00', 'Uso da Memória', 0, 2, 1);


-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-08 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-08 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-08 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-08 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-08 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-08 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-08 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-08 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-08 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-08 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-08 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-08 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-08 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-08 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-08 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-08 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-08 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-08 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-08 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-08 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-08 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-08 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-08 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-08 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-08 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-08 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-08 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-08 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-08 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-08 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-08 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-08 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-08 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-08 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-08 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-08 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-08 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-08 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-08 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-08 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-08 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-08 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-08 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-08 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-08 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-08 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-08 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-08 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-08 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-08 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 07/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-08 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-08 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-08 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-08 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-08 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-08 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-08 21:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 07:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-09 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 07:00:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-09 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-09 07:15:00', 'Uso da Memória', 0, 2, 1),
(05.5, '%', '2024-11-09 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 07:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-09 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-09 07:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 08:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-09 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-09 08:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-09 08:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-09 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-09 08:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-09 08:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 09:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-09 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-09 09:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-09 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-09 09:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-09 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-09 09:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-09 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-09 09:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 10:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-09 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-09 10:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-09 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-09 10:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-09 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-09 10:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-09 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-09 10:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 11:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-09 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 11:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-09 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 11:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-09 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 11:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-09 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 11:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 12:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-09 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 12:00:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-09 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 12:15:00', 'Uso da Memória', 0, 2, 1),
(85.5, '%', '2024-11-09 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 12:30:00', 'Uso da Memória', 0, 2, 1),
(85.0, '%', '2024-11-09 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 12:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 13:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-09 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-09 13:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-09 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-09 13:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-09 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-09 13:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-09 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-09 13:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 14:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-09 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-09 14:00:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-09 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-09 14:15:00', 'Uso da Memória', 0, 2, 1),
(45.5, '%', '2024-11-09 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-09 14:30:00', 'Uso da Memória', 0, 2, 1),
(45.0, '%', '2024-11-09 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-09 14:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 15:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-09 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-09 15:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 15:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-09 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-09 15:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 15:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 16:00:00 - 05/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-09 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-09 16:00:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 16:15:00', 'Uso da Memória', 0, 2, 1),
(25.5, '%', '2024-11-09 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-09 16:30:00', 'Uso da Memória', 0, 2, 1),
(25.0, '%', '2024-11-09 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 16:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 17:00:00 - 06/01/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-09 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-09 17:00:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-09 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-09 17:15:00', 'Uso da Memória', 0, 2, 1),
(35.5, '%', '2024-11-09 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-09 17:30:00', 'Uso da Memória', 0, 2, 1),
(35.0, '%', '2024-11-09 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-09 17:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 18:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-09 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-09 18:00:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-09 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-09 18:15:00', 'Uso da Memória', 0, 2, 1),
(75.5, '%', '2024-11-09 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-09 18:30:00', 'Uso da Memória', 0, 2, 1),
(75.0, '%', '2024-11-09 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-09 18:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 19:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-09 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 19:00:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-09 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 19:15:00', 'Uso da Memória', 0, 2, 1),
(65.5, '%', '2024-11-09 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-09 19:30:00', 'Uso da Memória', 0, 2, 1),
(65.0, '%', '2024-11-09 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-09 19:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 20:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-09 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 20:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-09 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 20:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-09 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 20:30:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-09 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 20:45:00', 'Uso da Memória', 0, 2, 1);

-- Inserindo registros de logs de monitoramento dos componentes 21:00:00 - 09/11/2024
INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-09 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 21:00:00', 'Uso da Memória', 0, 2, 1),
(15.0, '%', '2024-11-09 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-09 21:15:00', 'Uso da Memória', 0, 2, 1),
(15.5, '%', '2024-11-09 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-09 21:30:00', 'Uso da Memória', 0, 2, 1),
(05.0, '%', '2024-11-09 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-09 21:45:00', 'Uso da Memória', 0, 2, 1);

