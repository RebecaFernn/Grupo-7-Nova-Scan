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
            
            while True:
                print("Selecione uma opção:")
                print(dedent("""\
                    1 - Listar Máquinas
                    2 - Cadastrar Máquina
                    3 - Capturar Dados de Máquina
                    4 - Sair
                """))
                
                opcao = input()
                if opcao == "1":
                    print(f"Fazendo a listagem de máquinas da empresa do código: {codigoEmpresa}")
                    t.sleep(3)
                    
                    listarMaquinas = bd.select(f"SELECT d.id, d.nome FROM dispositivo as d JOIN empresa as e ON d.fkEmpresa = e.id WHERE e.id = {codigoEmpresa}")
               
                    if(len(listarMaquinas) <= 0):
                        print("Nenhuma máquina foi cadastrada, Deseja cadastrar alguma?  1 - Sim // 2 - Não")
                        
                        opcao2 = input()
                            
                        if opcao2 == "1":
                            cadastrarMaquina(codigoEmpresa)
                        elif opcao2 == "2":
                            # TESTAR ESSA PARTE PARA VER SE ESTÁ FUNCIONANDO
                            print("")
                        else:
                            print("Opção inválida!")
                    else:
                        print("Máquinas encontradas: ")
                        
                        i = 0
                        while i < len(listarMaquinas) - 1:
                            print(f"ID: {listarMaquinas[i][0]} - Nome Máquina: {listarMaquinas[i][1]}")
                            i += 1
                        t.sleep(5)
                           
                            
                if opcao == "2":
                    print("Començando o cadastro da máquina...")
                    t.sleep(1)
                    cadastrarMaquina(codigoEmpresa)
                    
                if opcao == "3":
                    listarMaquinas = bd.select(f"SELECT id, nome FROM dispositivo as d JOIN empresa as e ON d.fkEmpresa = e.id WHERE e.id = {codigoEmpresa}")
                    
                    i = 0
                    while i < len(listarMaquinas):
                        print(f"{listarMaquinas[i][i]} - {listarMaquinas[i][i + 1]}")
                        i += 1
                        
                    print("Selecione o Id da máquina que deseja fazer a captura de dados")
                    id = input()
                    cd.capturaArmazenamento(id)
                    cd.capturandoCpu(id)
                    cd.capturaMemoria(id)
                    cd.capturaPerdaDePacotes(id)
                
                if opcao == "4":
                    print("Saindo do sistema...")
                    t.sleep(2)
                    break
        else:
            print("Usuário não encontrado, tente novamente!") 
            t.sleep(2)
            
def cadastrarMaquina(fkEmpresa):
    nomeMaquina = input("Insira o nome da máquina: ")
    codigoEmpresa = fkEmpresa
    bd.insert(f"INSERT INTO dispositivo (nome, tempoAtividade, fkEmpresa) VALUES ('{nomeMaquina}', current_timestamp(), {codigoEmpresa})")
    
    print("Começando processo de cadastrar os componentes da máquina...")
    t.sleep(2)
    cadastrarComponentes()
    
    
def cadastrarComponentes():
    idUltimaMaquina = bd.select(f"SELECT id, nome FROM dispositivo ORDER BY id DESC LIMIT 1")
    nomeMaquina = idUltimaMaquina[0][1]
    idMaquina = idUltimaMaquina[0][0]
    print("Cadastrando componentes da máquina...")
    t.sleep(3)
    print("Cadastrando Processador...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, qtdNucleos, fkDispositivo) VALUES ('{cp.nomeCPU()}', 'Processador', {cp.qtdNucleos()}, {idMaquina})")
    t.sleep(3)
    print("Cadastrando memória ram...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, memTotal, fkDispositivo) VALUES ('Memória Ram', 'Memória', {cp.memoriaRamTotal()}, {idMaquina})")
    t.sleep(3)
    print("Cadastrando armazenamento... ")
    bd.insert(f"INSERT INTO componentes (nome, tipo, armaTotal, fkDispositivo) VALUES ('Memória Massa', 'Armazenamento', {cp.totalDisco()}, {idMaquina})")
    t.sleep(3)
    print("Componentes registrado com sucesso!, atualize a página da sua dashboard para listar a nova máquina cadastrada")
    
    print("Iniciando a captura de dados dos componentes...")
    print("Caso deseje encerrar a captura pressione CTRL + C")
    t.sleep(3)
    
    print(f"Selecionando componentes do dispositivo {nomeMaquina}") 
    print("Começando a captura dos dados...")
    
    t.sleep(2)
    print("Iniciando Captura de dados do armazenamento...")
    cd.capturaArmazenamento(idMaquina)
    t.sleep(2)
    print("Iniciando Captura de dados da CPU...")
    cd.capturandoCpu(idMaquina)
    t.sleep(2)
    print("Iniciando Captura de dados da Memória...")
    cd.capturaMemoria(idMaquina)
    t.sleep(2)
    print("Iniciando Captura de dados de perda de pacotes...")
    cd.capturaPerdaDePacotes(idMaquina)

    
def verificaoLogin(email, senha):
    listaVerificacao = [email, senha]  
    resultado = bd.select(f"SELECT nome, fkEmpresa FROM usuario WHERE email = '{listaVerificacao[0]}' AND senha = '{listaVerificacao[1]}'")
    
    if len(resultado) <= 0:
        return None
    else:
        print(f"Usuário {resultado[0][0]} encontrado")
        fkEmpresa = resultado[0][1]
        return fkEmpresa
    
# Garante que o main será executado primeiro
if __name__ == "__main__":
    main()