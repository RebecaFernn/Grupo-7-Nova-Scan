
// Primeira parte do login onde a empresa é cadastrada primeiro e é feito uma validação 
// de cnpj da empresa para ver se existe ou não dentro do banco de dados
function cadastrarEmpresa() {
    var nomeEmpresa = nomeEmpresa_input.value
    var cnpj = cnpj_input.value

    fetch("/empresas/cadastrar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            nomeEmpresaServer: nomeEmpresa,
            cnpjServer: cnpj,
        }),
    })
        .then(function (resposta) {
            console("resposta: ", resposta)
            if (resposta.ok) {
                // Aqui terá um Sweet alert
                console.log("Cadastro da empresa realizado")
            }
            else {
                throw "Houve um erro ao tentar realizar o cadastro da empresa"
            }
        })
        .catch(function (resposta) {
            console(`Erro: ${resposta}`)
        })
}

function buscarUltimaEmpresa() {
    fetch("/empresas/ultimaEmpresa", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
        },
    })
        .then(function (resposta) {
            console.log("Ultima empresa listada: ", resposta)
            return resposta
        })
        .catch(function (erro) {
            console.log("Erro ao tentar buscar a empresa Erro: ", erro)
        })
}

//Segunda parte do cadastro onde é o primeiro login feito para aquela empresa, no caso o administrador
function cadastrarUserAdmin() {
    var nome = nomeColab_input.value
    var email = email_input.value
    var senha = senha_input.value
    var confirmarSenha = confirmar_input.value
    var ultimaEmpresa = buscarUltimaEmpresa()

    /*
   Aqui terá validações das inputs
    */
   
    if (ultimaEmpresa.length < 0) {
        console.log("Houve um erro no cadastro da empresa")
    }
    else {
        // Fetch para o caminho do usuário ADMIN
        fetch("/usuarios/primeiroAcesso", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                nomeServer: nome,
                emailServer: email,
                senhaServer: senha,
                fkEmpresaServer: ultimaEmpresa
            }),
        })

            .then(function (resposta) {
                console.log("resposta: ", resposta)
                if (resposta.ok) {
                    // Aqui terá um Sweet alert
                    console.log("Cadastro do usuário admin realizado")
                }
                else {
                    throw "Houve um erro ao tentar realizar o cadastro do usuário admin"
                }
            })
            .catch(function (resposta) {
                console.log(`Erro: ${resposta}`)
            })
    }
}
