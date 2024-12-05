import datetime
import random

# Função para gerar as inserções para a tabela tempoAtividade
def gerar_inserts_tempo_atividade():
    data_inicio = datetime.datetime(2024, 11, 24)  # Data de início
    inserts = []
    for i in range(4):  # Para 4 máquinas
        for j in range(7):  # Para 7 dias
            boot_time = data_inicio + datetime.timedelta(days=j)
            inserts.append(f"INSERT INTO tempoAtividade (fkDispositivo, bootTime) VALUES ({i + 1}, '{boot_time.strftime('%Y-%m-%d %H:%M:%S')}');")
    return inserts

# Função para gerar as inserções para a tabela log
def gerar_inserts_log():
    data_inicio = datetime.datetime(2024, 11, 24)  # Data de início
    inserts = []
    componentes_alerta = [
        (1, 'Uso da CPU', 'Alerta: Alto uso da CPU!!'),
        (1, 'Frequencia do processador', 'Alerta: Alta Frequencia do processador'),
        (2, 'Uso de Memória RAM', 'Alerta: Uso Alto de Memória RAM!!'),
        (3, 'Uso de Armazenamento', 'Alerta: Alto uso de armazenamento'),
        (4, 'Perda de Pacotes', 'Alerta: Alta Perda de Pacotes')
    ]

    # Dados de alertas para 4 máquinas
    for i in range(4):
        for j in range(7):  # Para 7 dias
            data_hora = data_inicio + datetime.timedelta(days=j)
            for comp_id, descricao, alerta in componentes_alerta:
                valor = random.randint(10, 100)  # Gera valor aleatório entre 10 e 100
                if 'Alerta:' in alerta:
                    e_alerta = 1  # Alertas devem ter eAlerta = 1
                    inserts.append(f"INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES ({valor}, 'un', '{data_hora.strftime('%Y-%m-%d %H:%M:%S')}', '{alerta}', {e_alerta}, {comp_id}, {i + 1});")
                else:
                    e_alerta = 0  # Outros registros devem ter eAlerta = 0
                    inserts.append(f"INSERT INTO log (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) VALUES ({valor}, 'un', '{data_hora.strftime('%Y-%m-%d %H:%M:%S')}', '{descricao}', {e_alerta}, {comp_id}, {i + 1});")
    return inserts

# Gerar inserts
inserts_tempo_atividade = gerar_inserts_tempo_atividade()
inserts_log = gerar_inserts_log()

# Escrever no arquivo de texto
with open('inserts_script.txt', 'w') as file:
    file.write('-- Inserts para a tabela tempoAtividade\n')
    for insert in inserts_tempo_atividade:
        file.write(insert + '\n')
    file.write('\n-- Inserts para a tabela log\n')
    for insert in inserts_log:
        file.write(insert + '\n')

print("Arquivo 'inserts_script.txt' gerado com sucesso!")
