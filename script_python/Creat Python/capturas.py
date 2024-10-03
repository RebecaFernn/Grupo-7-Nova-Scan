import psutil as ps 
import cpuinfo as cp
import datetime


# Capturas de processador
def nomeCPU():
    nome = cp.get_cpu_info()
    return nome["brand_raw"]

def mediaUsoCpu():
    tempoCpu = ps.cpu_times(percpu=True)

    i = 0
    tempoAtivo = 0
    tempoTotal = 0

    # Arrumar função do Python
    while i < len(tempoCpu):
        tempoAtivo += tempoCpu[i].user + tempoCpu[i].system
        tempoTotal += sum(tempoCpu[i])

        i += 1
    return f"{(tempoAtivo / tempoTotal) * 100:.2f}"

def freqCpu():
    frequencia = ps.cpu_freq()
    return frequencia

def qtdNucleos():
    return ps.cpu_count()

# Capturando memória RAM
def memoriaRamTotal():
    total = ps.virtual_memory().total
    
    return f"{total / (1024 ** 3):.2}" 

# Capturando dados de armazenamento 
def usoDisco():
    total = ps.disk_usage("/").total 
    return f"{total / (1024**3):.0f}"

def particaoDisco():
    particoes = ps.disk_partitions()
    
    return particoes[0].fstype





