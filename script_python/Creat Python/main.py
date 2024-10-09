import banco as bd
import capturasComponente as cp
import dadosComponente as cd
import time as t
from textwrap import dedent

def main():
    while True:    

        print("Insira suas informações de login")
        email = input("Insira o seu email: ")
        senha = input("Insira a sua senha: ")
        print("Verificando login aguarde!")
        t.sleep(2)
        
        codigoEmpresa = verificaoLogin(email, senha)
        
        if codigoEmpresa is not None:
            print("Login efetuado com sucesso!")
            t.sleep(2)
            
            pularLinha()
            
            while True:
                print("Selecione uma opção:")
                print(dedent("""\
                    1 - Cadastrar Máquina
                    2 - Sair
                """))
                
                opcao = input()
                
                if opcao == "1":
                    pularLinha()
                    print("Començando o cadastro da máquina...")
                    t.sleep(1)
                    cadastrarMaquina(codigoEmpresa)
                
                if opcao == "2":
                    pularLinha()
                    print("Saindo do sistema...")
                    t.sleep(2)
                    break
                
                if opcao != "1" and opcao != "2":
                    pularLinha()
                    print("Opção inválida, tente novamente!")
                    t.sleep(2)
        else:
            pularLinha()
            print("Usuário não encontrado, tente novamente!") 
            t.sleep(2)
            
def cadastrarMaquina(fkEmpresa):
    pularLinha()
    nomeMaquina = input("Insira o nome da máquina: ")
    codigoEmpresa = fkEmpresa
    
    insertMaquina = bd.insert(f"INSERT INTO dispositivo (nome, fkEmpresa) VALUES ('{nomeMaquina}', {codigoEmpresa})")
    idUltimaMaquina = bd.select(f"SELECT id, nome FROM dispositivo ORDER BY id DESC LIMIT 1")
    insertMaquinaAtividade = bd.insert(f"INSERT INTO historicoAtividade (fkDispositivo, fkAtividade, dataHora) VALUES ('{idUltimaMaquina[0][0]}', 1, '{cp.bootTime()}')")
    
    if insertMaquina > 0 and insertMaquinaAtividade > 0:
        pularLinha()
        print("Máquina cadastrada com sucesso!")
        t.sleep(1)
        print("Começando processo de cadastrar os componentes da máquina...")
        t.sleep(2)
        cadastrarComponentes()
    
    
def cadastrarComponentes():
    idUltimaMaquina = bd.select(f"SELECT id, nome FROM dispositivo ORDER BY id DESC LIMIT 1")
    nomeMaquina = idUltimaMaquina[0][1]
    idMaquina = idUltimaMaquina[0][0]
    pularLinha()
    print("Cadastrando componentes da máquina...")
    t.sleep(1)
    
    pularLinha()
    print("Cadastrando Processador...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, qtdNucleos, fkDispositivo) VALUES ('{cp.nomeCPU()}', 'Processador', {cp.qtdNucleos()}, {idMaquina})")
    t.sleep(1)
    
    pularLinha()
    print("Cadastrando memória ram...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, memTotal, fkDispositivo) VALUES ('Memória Ram', 'Memória', {cp.memoriaRamTotal()}, {idMaquina})")
    t.sleep(1)
    
    pularLinha()
    print("Cadastrando armazenamento... ")
    bd.insert(f"INSERT INTO componentes (nome, tipo, armazTotal, fkDispositivo) VALUES ('Memória Massa', 'Armazenamento', {cp.totalDisco()}, {idMaquina})")
    t.sleep(1)
    
    pularLinha()
    print("Componentes registrado com sucesso!, atualize a página da sua dashboard para listar a nova máquina cadastrada")
    
    pularLinha()
    print("Iniciando a captura de dados dos componentes...")
    print("Caso deseje encerrar a captura pressione CTRL + C")
    t.sleep(3)
    
    pularLinha()
    print(f"Selecionando componentes do dispositivo {nomeMaquina}") 
    print("Começando a captura dos dados...")
    pularLinha()
    t.sleep(1)
    
    # Parte da captura de dados dos componentes
    # Capturando armazenamento
    print("Iniciando Captura de dados do armazenamento...")
    cd.capturaArmazenamento(idMaquina)
    t.sleep(1)
    
    print("Iniciando Captura de dados constante da Memória RAM, CPU e Perda de Pacotes...")
    t.sleep(1)
    
    while True:
    # Capturando dados constante da memória RAM, CPU e Perda de Pacotes
        memoria = cd.capturaMemoria(idMaquina)
        cpu = cd.capturandoCpu(idMaquina)
        # perdaPacote = cd.capturaPerdaDePacotes(idMaquina)

        print("Memória RAM Usada: ", memoria[0])
        print("Memória RAM Livre: ", memoria[1])
        print("Média de Uso da CPU: ", cpu)
        # print("Perda de Pacotes: ", perdaPacote)
        
        t.sleep(2)
    
def verificaoLogin(email, senha):
    listaVerificacao = [email, senha]  
    resultado = bd.select(f"SELECT nome, fkEmpresa FROM usuario WHERE email = '{listaVerificacao[0]}' AND senha = '{listaVerificacao[1]}'")
    
    if len(resultado) <= 0:
        return None
    else:
        print(f"Usuário {resultado[0][0]} encontrado")
        fkEmpresa = resultado[0][1]
        return fkEmpresa
    
def pularLinha():
    return print("\n" * 50)
    
# Garante que o main será executado primeiro
if __name__ == "__main__":
    main()  