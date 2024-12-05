import random
import datetime

# Função para gerar a data e hora aleatória
def gerar_data_hora():
    agora = datetime.datetime.now()
    return (agora - datetime.timedelta(seconds=random.randint(0, 86400))).strftime('%Y-%m-%d %H:%M:%S')

# IDs das máquinas (fkComponente)
fk_componentes = [4, 8, 12, 16]

# Inserções
insercoes = []

for fk_componente in fk_componentes:
    for _ in range(10):  # Gerar 10 inserções para cada máquina
        valor_enviados = round(random.uniform(0.1, 1000.0), 2)
        data_hora_enviados = gerar_data_hora()
        e_alerta_enviados = random.choice([0, 1])
        fk_dispositivo_enviados = random.randint(1, 4)

        valor_recebidos = round(random.uniform(0.1, 1000.0), 2)
        data_hora_recebidos = gerar_data_hora()
        e_alerta_recebidos = random.choice([0, 1])
        fk_dispositivo_recebidos = random.randint(1, 4)

        # Inserção para BytesEnviados
        insercoes.append(
            f"INSERT INTO baseLK (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) "
            f"VALUES ({valor_enviados}, 'MB', '{data_hora_enviados}', 'BytesEnviados', {e_alerta_enviados}, {fk_componente}, {fk_dispositivo_enviados});"
        )

        # Inserção para BytesRecebidos
        insercoes.append(
            f"INSERT INTO baseLK (valor, unidadeDeMedida, dataHora, descricao, eAlerta, fkComponente, fkDispositivo) "
            f"VALUES ({valor_recebidos}, 'MB', '{data_hora_recebidos}', 'BytesRecebidos', {e_alerta_recebidos}, {fk_componente}, {fk_dispositivo_recebidos});"
        )

# Salvar em um arquivo .txt
with open('insertsKaue.txt', 'w') as arquivo:
    for insercao in insercoes:
        arquivo.write(insercao + '\n')

print("Arquivo 'insertsKaue.txt' gerado com sucesso!")
