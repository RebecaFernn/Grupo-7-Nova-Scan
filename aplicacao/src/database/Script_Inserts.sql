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

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-10 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-10 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-10 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-10 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-10 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-10 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-10 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-10 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-10 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-10 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-10 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-10 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-10 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-10 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-10 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-10 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-10 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-10 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-10 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-10 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-10 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-10 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-10 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-10 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-10 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-10 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-10 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-10 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-10 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-10 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-10 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-10 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-10 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-10 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-10 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-10 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-10 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-10 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-10 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-10 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-10 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-10 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-10 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-10 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-10 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-10 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-10 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-10 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-10 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-10 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-10 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-10 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-10 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-10 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-10 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-10 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-10 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-10 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-10 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-10 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-10 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-10 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-10 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-10 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-10 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-10 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-10 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-10 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-10 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-10 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-10 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-10 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-10 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-10 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-10 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-10 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-10 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-10 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-10 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-10 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-10 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-10 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-10 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);


INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-11 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-11 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-11 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-11 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-11 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-11 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-11 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-11 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-11 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-11 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-11 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-11 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-11 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-11 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-11 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-11 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-11 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-11 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-11 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-11 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-11 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-11 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-11 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-11 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-11 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-11 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-11 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-11 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-11 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-11 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-11 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-11 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-11 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-11 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-11 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-11 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-11 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-11 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-11 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-11 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-11 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-11 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-11 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-11 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-11 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-11 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-11 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-11 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-11 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-11 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-11 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-11 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-11 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-11 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-11 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-11 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-11 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-11 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-11 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-11 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-11 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-11 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-11 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-11 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-11 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-11 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-11 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-11 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-11 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-11 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-11 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-11 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-11 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-11 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-11 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-11 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-11 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-11 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-11 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-11 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-11 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-11 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-11 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-11 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-11 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-11 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-11 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-11 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-11 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-11 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-11 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-11 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-11 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-11 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-12 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-12 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-12 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-12 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-12 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-12 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-12 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-12 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-12 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-12 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-12 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-12 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-12 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-12 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-12 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-12 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-12 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-12 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-12 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-12 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-12 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-12 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-12 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-12 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-12 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-12 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-12 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-12 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-12 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-12 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-12 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-12 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-12 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-12 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-12 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-12 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-12 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-12 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-12 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-12 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-12 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-12 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-12 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-12 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-12 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-12 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-12 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-12 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-12 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-12 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-12 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-12 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-12 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-12 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-12 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-12 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-12 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-12 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-12 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-12 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-12 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-12 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-12 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-12 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-12 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-12 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-12 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-12 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-12 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-12 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-12 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-12 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-12 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-12 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-12 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-12 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-5 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-12 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-12 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-12 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-12 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-12 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-12 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-12 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-12 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-12 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-12 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-12 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-12 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-12 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-12 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-12 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-12 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-12 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-13 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-13 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-13 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-13 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-13 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-13 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-13 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-13 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-13 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-13 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-13 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-13 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-13 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-13 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-13 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-13 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-13 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-13 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-13 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-13 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-13 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-13 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-13 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-13 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-13 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-13 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-13 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-13 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-13 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-13 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-13 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-13 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-13 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-13 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-13 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-13 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-13 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-13 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-13 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-13 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-13 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-13 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-13 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-13 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-13 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-13 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-13 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-13 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-13 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-13 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-13 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-13 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-13 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-13 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-13 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-13 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-13 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-13 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-13 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-13 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-13 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-13 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-13 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-13 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-13 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-13 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-13 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-13 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-13 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-13 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-13 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-13 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-13 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-13 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-13 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-13 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-13 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-13 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-13 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-13 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-13 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-13 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-13 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-13 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-13 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-13 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-13 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-13 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-13 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-13 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-13 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-13 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-13 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-13 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);



INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-14 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-14 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-14 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-14 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-14 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-14 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-14 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-14 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-14 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-14 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-14 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-14 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-14 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-14 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-14 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-14 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-14 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-14 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-14 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-14 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-14 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-14 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-14 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-14 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-14 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-14 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-14 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-14 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-14 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-14 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-14 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-14 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-14 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-14 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-14 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-14 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-14 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-14 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-14 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-14 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-14 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-14 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-14 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-14 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-14 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-14 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-14 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-14 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-14 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-14 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-14 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-14 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-14 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-14 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-14 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-14 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-14 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-14 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-14 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-14 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-14 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-14 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-14 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-14 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-14 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-14 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-14 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-14 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-14 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-14 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-14 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-14 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-14 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-14 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-14 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-14 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-14 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-14 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-14 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-14 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-14 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-14 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-14 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-14 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-14 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-14 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-14 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-14 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-14 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-14 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-14 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-14 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-14 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-14 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);


INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-15 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-15 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-15 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-15 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-15 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-15 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-15 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-15 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-15 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-15 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-15 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-15 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-15 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-15 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-15 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-15 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-15 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-15 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-15 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-15 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-15 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-15 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-15 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-15 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-15 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-15 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-15 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-15 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-15 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-15 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-15 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-15 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-15 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-15 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-15 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-15 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-15 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-15 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-15 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-15 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-15 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-15 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-15 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-15 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-15 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-15 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-15 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-15 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-15 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-15 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-15 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-15 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-15 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-15 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-15 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-15 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-15 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-15 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-15 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-15 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-15 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-15 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-15 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-15 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-15 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-15 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-15 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-15 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-15 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-15 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-15 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-15 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-15 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-15 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-15 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-15 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-15 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-15 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-15 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-15 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-15 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-15 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-15 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-15 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-15 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-15 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-15 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-15 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-15 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-15 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-15 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-15 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-15 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-15 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-16 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-16 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-16 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-16 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-16 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-16 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-16 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-16 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-16 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-16 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-16 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-16 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-16 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-16 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-16 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-16 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-16 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-16 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-16 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-16 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-16 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-16 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-16 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-16 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-16 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-16 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-16 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-16 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-16 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-16 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-16 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-16 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-16 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-16 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-16 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-16 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-16 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-16 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-16 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-16 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-16 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-16 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-16 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-16 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-16 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-16 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-16 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-16 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-16 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-16 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-16 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-16 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-16 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-16 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-16 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-16 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-16 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-16 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-16 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-16 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-16 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-16 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-16 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-16 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-16 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-16 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-16 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-16 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-16 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-16 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-16 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-16 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-16 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-16 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-16 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-16 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-16 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-16 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-16 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-16 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-16 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-16 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-16 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-16 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-16 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-16 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-16 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-16 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-16 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-16 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-16 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-16 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-16 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-16 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);


INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-17 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-17 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-17 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-17 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-17 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-17 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-17 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-17 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-17 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-17 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-17 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-17 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-17 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-17 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-17 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-17 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-17 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-17 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-17 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-17 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-17 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-17 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-17 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-17 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-17 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-17 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-17 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-17 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-17 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-17 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-17 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-17 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-17 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-17 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-17 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-17 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-17 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-17 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-17 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-17 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-17 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-17 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-17 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-17 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-17 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-17 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-17 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-17 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-17 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-17 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-17 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-17 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-17 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-17 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-17 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-17 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-17 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-17 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-17 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-17 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-17 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-17 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-17 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-17 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-17 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-17 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-17 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-17 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-17 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-17 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-17 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-17 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-17 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-17 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-17 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-17 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-17 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-17 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-17 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-17 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-17 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-17 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-17 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);


INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-18 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-18 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-18 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-18 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-18 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-18 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-18 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-18 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-18 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-18 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-18 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-18 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-18 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-18 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-18 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-18 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-18 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-18 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-18 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-18 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-18 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-18 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-18 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-18 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-18 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-18 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-18 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-18 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-18 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-18 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-18 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-18 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-18 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-18 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-18 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-18 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-18 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-18 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-18 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-18 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-18 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-18 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-18 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-18 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-18 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-18 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-18 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-18 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-18 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-18 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-18 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-18 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-18 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-18 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-18 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-18 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-18 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-18 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-18 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-18 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-18 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-18 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-18 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-18 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-18 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-18 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-18 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-18 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-18 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-18 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-18 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-18 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-18 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-18 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-18 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-18 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-18 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-18 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-18 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-18 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-18 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-18 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-18 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-18 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-18 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-18 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-18 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-18 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-18 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-18 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-18 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-18 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-18 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-18 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-19 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-19 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-19 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-19 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-19 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-19 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-19 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-19 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-19 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-19 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-19 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-19 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-19 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-19 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-19 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-19 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-19 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-19 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-19 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-19 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-19 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-19 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-19 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-19 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-19 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-19 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-19 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-19 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-19 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-19 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-19 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-19 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-19 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-19 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-19 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-19 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-19 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-19 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-19 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-19 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-19 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-19 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-19 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-19 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-19 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-19 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-19 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-19 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-19 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-19 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-19 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-19 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-19 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-19 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-19 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-19 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-19 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-19 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-19 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-19 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-19 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-19 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-19 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-19 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-19 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-19 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-19 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-19 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-19 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-19 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-19 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-19 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-19 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-19 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-19 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-19 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-19 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-19 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-19 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-19 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-19 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-19 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-19 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-19 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-19 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-19 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-19 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-19 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-19 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-19 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-19 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-19 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-19 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-19 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-20 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-20 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-20 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-20 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-20 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-20 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-20 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-20 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-20 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-20 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-20 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-20 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-20 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-20 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-20 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-20 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-20 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-20 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-20 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-20 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-20 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-20 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-20 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-20 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-20 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-20 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-20 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-20 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-20 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-20 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-20 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-20 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-20 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-20 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-20 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-20 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-20 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-20 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-20 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-20 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-20 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-20 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-20 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-20 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-20 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-20 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-20 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-20 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-20 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-20 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-20 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-20 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-20 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-20 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-20 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-20 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-20 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-20 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-20 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-20 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-20 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-20 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-20 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-20 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-20 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-20 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-20 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-20 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-20 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-20 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-20 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-20 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-20 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-20 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-20 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-20 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-20 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-20 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-20 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-20 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-20 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-20 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-20 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-20 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-20 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-20 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-20 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-20 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-20 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-20 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-20 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-20 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-20 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-20 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-21 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-21 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-21 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-21 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-21 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-21 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-21 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-21 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-21 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-21 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-21 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-21 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-21 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-21 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-21 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-21 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-21 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-21 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-21 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-21 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-21 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-21 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-21 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-21 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-21 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-21 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-21 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-21 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-21 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-21 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-21 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-21 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-21 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-21 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-21 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-21 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-21 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-21 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-21 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-21 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-21 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-21 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-21 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-21 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-21 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-21 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-21 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-21 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-21 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-21 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-21 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-21 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-21 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-21 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-21 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-21 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-21 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-21 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-21 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-21 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-21 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-21 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-21 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-21 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-21 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-21 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-21 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-21 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-21 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-21 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-21 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-21 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-21 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-21 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-21 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-21 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-21 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-21 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-21 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-21 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-21 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-21 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-21 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-21 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-21 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-21 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-21 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-21 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-21 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-21 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-21 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-21 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-21 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-21 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-22 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-22 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-22 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-22 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-22 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-22 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-22 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-22 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-22 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-22 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-22 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-22 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-22 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-22 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-22 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-22 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-22 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-22 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-22 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-22 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-22 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-22 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-22 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-22 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-22 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-22 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-22 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-22 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-22 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-22 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-22 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-22 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-22 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-22 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-22 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-22 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-22 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-22 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-22 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-22 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-22 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-22 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-22 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-22 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-22 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-22 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-22 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-22 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-22 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-22 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-22 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-22 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-22 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-22 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-22 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-22 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-22 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-22 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-22 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-22 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-22 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-22 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-22 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-22 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-22 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-22 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-22 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-22 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-22 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-22 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-22 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-22 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-22 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-22 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-22 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-22 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-22 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-22 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-22 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-22 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-22 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-22 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-22 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-22 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-22 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-22 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-22 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-22 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-22 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-22 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-22 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-22 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-22 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-22 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-23 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-23 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-23 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-23 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-23 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-23 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-23 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-23 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-23 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-23 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-23 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-23 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-23 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-23 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-23 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-23 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-23 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-23 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-23 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-23 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-23 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-23 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-23 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-23 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-23 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-23 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-23 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-23 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-23 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-23 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-23 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-23 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-23 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-23 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-23 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-23 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-23 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-23 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-23 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-23 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-23 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-23 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-23 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-23 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-23 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-23 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-23 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-23 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-23 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-23 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-23 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-23 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-23 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-23 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-23 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-23 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-23 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-23 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-23 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-23 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-23 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-23 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-23 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-23 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-23 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-23 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-23 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-23 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-23 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-23 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-23 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-23 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-23 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-23 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-23 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-23 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-23 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-23 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-23 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-23 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-23 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-23 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-23 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-23 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-23 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-23 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-23 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-23 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-23 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-23 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-23 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-23 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-23 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-23 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-24 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-24 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-24 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-24 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-24 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-24 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-24 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-24 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-24 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-24 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-24 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-24 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-24 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-24 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-24 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-24 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-24 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-24 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-24 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-24 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-24 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-24 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-24 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-24 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-24 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-24 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-24 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-24 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-24 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-24 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-24 18:00:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-24 18:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 18:15:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-24 18:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-24 18:30:00', 'Uso da CPU', 1, 1, 1),
(75.3, 'GB', '2024-11-24 18:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 18:45:00', 'Uso da CPU', 1, 1, 1),
(75.0, 'GB', '2024-11-24 18:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-24 19:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 19:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 19:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 19:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-24 19:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 19:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 19:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 19:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-24 20:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 20:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-24 20:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 20:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-24 20:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 20:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-24 20:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 20:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(15.5, '%', '2024-11-24 21:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 21:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.0, '%', '2024-11-24 21:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 21:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(15.5, '%', '2024-11-24 21:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 21:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-24 21:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-24 21:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(05.5, '%', '2024-11-24 07:00:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 07:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-24 07:15:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-24 07:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.5, '%', '2024-11-24 07:30:00', 'Uso da CPU', 1, 1, 1),
(05.3, 'GB', '2024-11-24 07:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(05.0, '%', '2024-11-24 07:45:00', 'Uso da CPU', 1, 1, 1),
(05.0, 'GB', '2024-11-24 07:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 08:00:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-24 08:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 08:15:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-24 08:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 08:30:00', 'Uso da CPU', 1, 1, 1),
(25.3, 'GB', '2024-11-24 08:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 08:45:00', 'Uso da CPU', 1, 1, 1),
(25.0, 'GB', '2024-11-24 08:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-24 09:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 09:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 09:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 09:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-24 09:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 09:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 09:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 09:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-24 10:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 10:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 10:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 10:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-24 10:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 10:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 10:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 10:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(65.5, '%', '2024-11-24 11:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 11:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 11:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 11:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.5, '%', '2024-11-24 11:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 11:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(65.0, '%', '2024-11-24 11:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 11:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(85.5, '%', '2024-11-24 12:00:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 12:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-24 12:15:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 12:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.5, '%', '2024-11-24 12:30:00', 'Uso da CPU', 1, 1, 1),
(65.3, 'GB', '2024-11-24 12:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(85.0, '%', '2024-11-24 12:45:00', 'Uso da CPU', 1, 1, 1),
(65.0, 'GB', '2024-11-24 12:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(75.5, '%', '2024-11-24 13:00:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-24 13:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 13:15:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-24 13:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.5, '%', '2024-11-24 13:30:00', 'Uso da CPU', 1, 1, 1),
(55.3, 'GB', '2024-11-24 13:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(75.0, '%', '2024-11-24 13:45:00', 'Uso da CPU', 1, 1, 1),
(55.0, 'GB', '2024-11-24 13:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(45.5, '%', '2024-11-24 14:00:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 14:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 14:15:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 14:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.5, '%', '2024-11-24 14:30:00', 'Uso da CPU', 1, 1, 1),
(45.3, 'GB', '2024-11-24 14:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(45.0, '%', '2024-11-24 14:45:00', 'Uso da CPU', 1, 1, 1),
(45.0, 'GB', '2024-11-24 14:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 15:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 15:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 15:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 15:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 15:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 15:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 15:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 15:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(25.5, '%', '2024-11-24 16:00:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 16:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 16:15:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 16:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.5, '%', '2024-11-24 16:30:00', 'Uso da CPU', 1, 1, 1),
(15.3, 'GB', '2024-11-24 16:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(25.0, '%', '2024-11-24 16:45:00', 'Uso da CPU', 1, 1, 1),
(15.0, 'GB', '2024-11-24 16:45:00', 'Porcentagem Memória Ram', 0, 2, 1);

INSERT INTO baseR (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES
(35.5, '%', '2024-11-24 17:00:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 17:00:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 17:15:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 17:15:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.5, '%', '2024-11-24 17:30:00', 'Uso da CPU', 1, 1, 1),
(35.3, 'GB', '2024-11-24 17:30:00', 'Porcentagem Memória Ram', 0, 2, 1),
(35.0, '%', '2024-11-24 17:45:00', 'Uso da CPU', 1, 1, 1),
(35.0, 'GB', '2024-11-24 17:45:00', 'Porcentagem Memória Ram', 0, 2, 1);
