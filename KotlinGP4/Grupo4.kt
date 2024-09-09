import kotlin.random.Random
import java.time.LocalTime
import java.time.format.DateTimeFormatter

class Grupo4 (
    var codigoMaq: MutableList<String>,
    var dadosRam: MutableList<Double>,
    var dadosCpu: MutableList<Double>,
    var dadosArm: MutableList<Double>
) {
    var listaCodigoMaq = mutableListOf<String>()
    var listaCpuMaqchk = mutableListOf<Boolean>()
    var listaRamMaqchk = mutableListOf<Boolean>()
    var listaHdMaqchk = mutableListOf<Boolean>()

    var listaLogs = mutableListOf<String>()



    fun verificarCodigo(codigoUser: String) {

        var chkMonitoramento: Int = 0

        codigoMaq += codigoUser
        val chkExiste = listaCodigoMaq.indexOf(codigoUser)
        if(chkExiste >= 0){
            println("Essa máquina já existe")
            println("")
            println("MÁQUINA NÃO ADICIONADA")
        } else {
            listaCodigoMaq.add(codigoUser)
            println("")

            print("Desejar monitorar CPU ? SIM(1) ou NÃO(2): ")
            var chkCpuUser = readln().toInt()
            if(chkCpuUser == 1){listaCpuMaqchk.add(true)} else{
                listaCpuMaqchk.add(false)
                chkMonitoramento += 1
            }
            println("")

            print("Desejar monitorar RAM ? SIM(1) ou NÃO(2): ")
            var chkRamUser = readln().toInt()
            if(chkRamUser == 1){listaRamMaqchk.add(true)} else{
                listaRamMaqchk.add(false)
                chkMonitoramento += 1
            }
            println("")

            print("Desejar monitorar HD ? SIM(1) ou NÃO(2): ")
            var chkHdUser = readln().toInt()
            if(chkHdUser == 1){listaHdMaqchk.add(true)} else{
                listaHdMaqchk.add(false)
                chkMonitoramento += 1
            }
            println("")

            if(chkMonitoramento == 3){
                println("NADA ESTÁ SENDO MONITORADO NESSA MÁQUINA")
            }else{
                println("MÁQUINA ADICIONADA COM SUCESSO!")
            }
        }
        val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
        listaLogs.add("$horaFinal - Realizou um verificação de códigos\n")

    }

    fun removerCodigo() {
        println("Lista de máquinas: ")
        println(listaCodigoMaq)
        println("")
        print("Digite o código da máquina que deseja remover ou digite 0 (zero) para sair: ")
        val codRemove = readln().toString()

        if(codRemove != "0"){

            val indexCodigo = listaCodigoMaq.indexOf(codRemove)

            if(indexCodigo >= 0 ){

                val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
                listaLogs.add("$horaFinal - Deletou a máquina com o código: ${listaCodigoMaq[indexCodigo]} \n")

                listaCodigoMaq.removeAt(indexCodigo)
                listaCpuMaqchk.removeAt(indexCodigo)
                listaRamMaqchk.removeAt(indexCodigo)
                listaHdMaqchk.removeAt(indexCodigo)

                println("Máquina com o código ${codRemove} foi removida com sucesso!")

            }else{
                println("Máquina com o códgigo $codRemove não existe ou já foi removida")

                val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
                listaLogs.add("$horaFinal - Tentou deletar a máquina com o código: ${codRemove} \n")
            }

        }else{
            print("Execução cancelada")
            println("")
            val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
            listaLogs.add("$horaFinal - Cancelou uma tentativa de deletar uma máquina\n")
        }

    }

    fun dadosMaq(): String {

        var texto:String = ""

        for (i in 0..listaCodigoMaq.size - 1) {

            val valorCpu = Random.nextDouble(5.0, 6.0)
            //val valorCpuForm = "%.2f".format(valorCpu).toDouble()
            dadosCpu += valorCpu
            val valorRam = Random.nextDouble(20.0, 22.0)
            //val valorRamForm = "%.2f".format(valorRam).toDouble()
            dadosRam += valorRam
            val valorHd = Random.nextDouble(50.0, 51.0)
            //val valorHdForm = "%.2f".format(valorHd).toDouble()
            dadosArm += valorHd

            texto += ("\nCódigo: ${listaCodigoMaq[i]}\n")
            if(listaCpuMaqchk[i]){
                texto += ("Uso da CPU: ${"%.2f".format(valorCpu)}%\n")
            }
            if(listaRamMaqchk[i]){
                texto += ("Uso da memória: ${"%.2f".format(valorRam)}% de 8gb\n")
            }
            if(listaHdMaqchk[i]){
                texto += ("Uso do armazenamento: ${"%.2f".format(valorHd)}% de 128gb\n")
            }
        }

        val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
        listaLogs.add("$horaFinal - Visualizou os dados das máquinas\n")

        return texto
    }

    fun verMaq() {
        for (i in 0..listaCodigoMaq.size - 1){

            println("\nMáquina de Código: ${listaCodigoMaq[i]}")

            if(listaCpuMaqchk[i]){
                println("Monitoramento de CPU -> OK")
            }else{
                println("CPU não esta sendo monitorada nessa máquina")
            }

            if(listaHdMaqchk[i]){
                println("Monitoramento de HD -> OK")
            }else{
                println("HD não esta sendo monitorada nessa máquina")
            }

            if(listaRamMaqchk[i]){
                println("Monitoramento de RAM -> OK")
            }else{
                println("RAM não esta sendo monitorada nessa máquina")
            }

        }

        val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
        listaLogs.add("$horaFinal - Visualizou todas as máquinas\n")

    }

    fun verMaqCod(codigo: String): String{

        var texto: String = ""

        val indice = listaCodigoMaq.indexOf(codigo)

        if(indice < 0){
            return "Não existe máquina com esse código\n"
        }else{

            val valorCpu = Random.nextDouble(5.0, 6.0)
            val valorRam = Random.nextDouble(20.0, 22.0)
            val valorHd = Random.nextDouble(50.0, 51.0)

            texto += "Código: ${listaCodigoMaq[indice]}\n"
            if(listaCpuMaqchk[indice]){
                texto += ("Uso da CPU: ${"%.2f".format(valorCpu)}%\n")
            }
            if(listaRamMaqchk[indice]){
                texto += ("Uso da memória: ${"%.2f".format(valorRam)}% de 8gb\n")
            }
            if(listaHdMaqchk[indice]){
                texto += ("Uso do armazenamento: ${"%.2f".format(valorHd)}% de 128gb\n")
            }

        }

        val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
        listaLogs.add("$horaFinal - Visualizou os dados da máquina ${listaCodigoMaq[indice]}\n")

        return texto

    }

    fun log(): String{

        val horaFinal = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
        listaLogs.add("$horaFinal - Visualizou os logs\n")

        return "$listaLogs"
    }

}