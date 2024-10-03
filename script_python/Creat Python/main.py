import banco as bd
import capturas as cp
import time as t

def main():
    print("Insira suas informações de login")
    email = input("Insira o seu email: ")
    senha = input("Insira a sua senha: ")
    print("Verificando login aguarde!")
    t.sleep(3)
    codigoEmpresa = verificaoLogin(email, senha)    
    
    print(f"Fazendo a listagem de máquinas da empresa do código: {codigoEmpresa}")
    t.sleep(3)
    
    listarMaquinas = bd.select(f"SELECT nome FROM dispositivo as d JOIN empresa as e ON d.fkEmpresa = e.id WHERE e.id = {codigoEmpresa}")

    encontrados = []
    i = 0 
    while i < len(listarMaquinas):
        encontrados.append(listarMaquinas[i])
        i += 1
    
    if(len(encontrados) <= 0):
        print("Nenhuma máquina foi cadastrada, Deseja cadastrar alguma?  1 - Sim // 2 - Não")
        opcao = input()
            
        if opcao == "1":
            cadastrarMaquina(codigoEmpresa)
        elif opcao == "2":
            print("tem que fazer outro menu")
        else:
            print("Opção inválida!")
    else:
        for i in encontrados:
            print(f"Máquina encontradas: {encontrados} ")
            
        print("\n Deseja cadastrar mais máquinas?: 1 - Sim // 2 - Não")
            
        opcao = input()
            
        if opcao == "1":
            cadastrarMaquina(codigoEmpresa)
        elif opcao == "2":
            print("tem que fazer outro menu")
        else:
            print("Opção inválida")
            
def cadastrarMaquina(fkEmpresa):
    nomeMaquina = input("Insira o nome da máquina: ")
    codigoEmpresa = fkEmpresa
    bd.insert(f"INSERT INTO dispositivo (nome, tempoAtividade, fkEmpresa) VALUES ('{nomeMaquina}', current_timestamp(), {codigoEmpresa})")
    print("Começando processo de cadastrar os componentes da máquina...")
    t.sleep(2)
    cadastrarComponentes()
    
    
def cadastrarComponentes():
    idUltimaMaquina = bd.select(f"SELECT id FROM dispositivo ORDER BY id DESC LIMIT 1")
    
    print("Cadastrando componentes da máquina...")
    t.sleep(3)
    print("Cadastrando Processador...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, qtdNucleos, fkDispositivo) VALUES ('{cp.nomeCPU()}', 'Processador', {cp.qtdNucleos()}, {idUltimaMaquina[0][0]})")
    t.sleep(3)
    print("Cadastrando memória ram...")
    bd.insert(f"INSERT INTO componentes (nome, tipo, memTotal, fkDispositivo) VALUES ('Memória Ram', 'Memória', {cp.memoriaRamTotal()}, {idUltimaMaquina[0][0]})")
    t.sleep(3)
    print("Cadastrando armazenamento... ")
    bd.insert(f"INSERT INTO componentes (nome, tipo, armaTotal, fkDispositivo) VALUES ('Armazenamento', '{cp.particaoDisco()}', {cp.usoDisco()}, {idUltimaMaquina[0][0]})")
    t.sleep(3)
    print("Componentes registrado com sucesso!, atualize a página da sua dashboard para listar a nova máquina cadastrada")
    
def verificaoLogin(email, senha):
    listaVerificacao = [email, senha]
    print(listaVerificacao[0])
    
    resultado = bd.select(f"SELECT nome, fkEmpresa FROM usuario WHERE email = '{listaVerificacao[0]}' AND senha = '{listaVerificacao[1]}'")
    
    if len(resultado) <= 0:
        print("Usuário não encontrado, verifique seu email e senha")
    else:
        print(f"Usuário {resultado[0][0]} encontrado")
        fkEmpresa = resultado[0][1]
        return fkEmpresa
    
# Garante que o main será executado primeiro
if __name__ == "__main__":
    main()