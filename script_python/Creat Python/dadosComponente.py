import banco as bd
import capturasComponente as cp
import time as t

# Capturando dados de média de uso da CPU
def capturandoCpu(idMaquina):   
    idUltimaCpu = bd.select("SELECT id FROM ultimoComponente WHERE tipo = 'Processador'")

    while True:
        mediaUsoCpu = cp.mediaUsoCpu()
        t.sleep(3)
        bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao) VALUES ('{mediaUsoCpu}', 'current_timestamp()' {idUltimaCpu[0][0]}, {idMaquina}, 'Média de Uso da CPU' );")
    
# Capturando dados da memória RAM usada e Livre
def capturaMemoria(idMaquina):
    idUltimaMemoria = bd.select("SELECT id FROM ultimoComponente WHERE tipo = 'Memória'")
    
    while True:
        t.sleep(3)
        
        bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao) VALUES ('{cp.memoriaRamUsada()}', 'current_timestamp()', {idUltimaMemoria[0][0]}, {idMaquina}, 'Uso de Memória RAM');")
        bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao) VALUES ('{cp.memoriaRamLivre()}', 'current_timestamp()', {idUltimaMemoria[0][0]}, {idMaquina}, 'Memória RAM Livre');")
        
# Capturando dados de disco usado e livre 
def capturaArmazenamento(idMaquina):
    idUltimoArmazenamento = bd.select("SELECT id FROM ultimoComponente WHERE tipo = 'Armazenamento'")
    t.sleep(3)
    
    bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao) VALUES ('{cp.discoUsado()}', 'current_timestamp()', {idUltimoArmazenamento[0][0]}, {idMaquina}, 'Uso de Armazenamento');")
    bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao) VALUES ('{cp.discoLivre()}', 'current_timestamp()', {idUltimoArmazenamento[0][0]}, {idMaquina}, 'Armazenamento Livre');")
    
# Capturando dados de perda de pacote na rede
def capturaPerdaDePacotes(idMaquina):
    while True: 
        t.sleep(3)
        bd.insert(f"INSERT INTO log (valor, dataHora, fkComponente, fkDispositivo, descricao)  VALUES ('{cp.perdaPacotes()}', 'current_timestamp()', null, {idMaquina}, 'Perda de Pacotes');")