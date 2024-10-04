
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
            console.log("resposta: ", resposta)
            if (resposta.ok) {
                // Aqui terá um Sweet alert
                console.log("Cadastro da empresa realizado")
                setTimeout(() => {
                    window.location = "cadastro_02.html";
                  }, "2000");
            
            }
            else {
                throw "Houve um erro ao tentar realizar o cadastro da empresa"
            }
        })
        .catch(function (resposta) {
            console.log(`Erro: ${resposta}`)
        })
}


//Segunda parte do cadastro onde é o primeiro login feito para aquela empresa, no caso o administrador
function cadastrarUserAdmin() {
    var nome = nomeColab_input.value
    var email = email_input.value
    var senha = senha_input.value
    var confirmarSenha = confirmar_input.value

    /*
   Aqui terá validações das inputs
    */
   
        // Fetch para o caminho do usuário ADMIN
        fetch("/usuarios/primeiroAcesso", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                nomeServer: nome,
                emailServer: email,
                senhaServer: senha
            }),
        })

            .then(function (resposta) {
                console.log("resposta: ", resposta)
                if (resposta.ok) {
                    // Aqui terá um Sweet alert
                    console.log("Cadastro do usuário admin realizado")
                    setTimeout(() => {
                        window.location = "login.html";
                      }, "2000");

                }
                else {
                    throw "Houve um erro ao tentar realizar o cadastro do usuário admin"
                }
            })
            .catch(function (resposta) {
                console.log(`Erro: ${resposta}`)
            })
    
}
