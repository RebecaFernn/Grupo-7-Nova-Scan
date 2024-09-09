//HORÁRIO
import java.time.LocalTime
import java.time.format.DateTimeFormatter

//RANDOM

fun main() {

    val novaScan = Grupo4(
        codigoMaq = mutableListOf(),
        dadosRam = mutableListOf(),
        dadosCpu = mutableListOf(),
        dadosArm = mutableListOf(),
    )

    val horaAtual = LocalTime.now()

    // Define o formato personalizado
    val formatoPersonalizado = DateTimeFormatter.ofPattern("HH:mm:ss")

    // Formata a hora atual usando o formato personalizado
    val horaFormatada = horaAtual.format(formatoPersonalizado)

    println("Seja bem vindo ao sistema")
    println("        NovaScan         ")

    while (true) {
        println("")
        println("Confira as opções")
        println("")
        println("1 - Adicionar máquina")
        println("2 - Remover máquina")
        println("3 - Ver dados")
        println("4 - Ver todas as máquinas")
        println("5 - Ver máquina com código")
        println("6 - logs")
        println("7 - Sair")
        println("")
        print("Digite a opção: ")
        val rep = readln().toInt()
        println("")

        when (rep) {

            1 -> {
                print("Vamos cadastar uma nova máquina")
                println("")
                print("Digite o código da máquina: ")
                var codigoUser = readln().toString()
                novaScan.verificarCodigo(codigoUser)
            }

            2 -> {
                novaScan.removerCodigo()
            }

            3 -> {
                println("Dados das máquinas")

                print(novaScan.dadosMaq())

                println("Horário de verificação: $horaFormatada")
                println("")
            }

            4 -> {
                    println("Máquinas:")
                    novaScan.verMaq()
            }

            5 ->{
                println("Pesquisar máquina por código")
                println(novaScan.listaCodigoMaq)
                println("")
                print("Digite o código da máquina: ")
                var codigo = readln().toString()

                print(novaScan.verMaqCod(codigo))
            }

            6 ->{
                print(novaScan.log())
            }


            7 -> {
                break
            }

        }
        Thread.sleep(1000)
    }
}