
    function cadastrar() {
        //Recupere o valor da nova input pelo nome do id
        // Agora vá para o método fetch logo abaixo
        var empresaVar = sessionStorage.getItem('FK_EMPRESA')
        var nomeVar = nome_input.value;
        var emailVar = email_input.value;
        var senhaVar = senha_input.value;
        var confirmacaoSenhaVar = confirmacao_senha_input.value;
        var fkUsuario = sessionStorage.getItem('ID_USUARIO')
    
        // Verificando se há algum campo em branco
        if (
            empresaVar == "" ||
            nomeVar == "" ||
            emailVar == "" ||
            senhaVar == "" ||
            confirmacaoSenhaVar == ""
        ) {
            alert("Campos em brancos")
            return false;
        }
        else{
            alert("Campos validos")
        }
        // Enviando o valor da nova input

        fetch("/usuarios/cadastrarFunc", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                // crie um atributo que recebe o valor recuperado aqui
                // Agora vá para o arquivo routes/usuario.js
                empresaServer: empresaVar,
                nomeServer: nomeVar,
                emailServer: emailVar,
                senhaServer: senhaVar,
                fkUsuarioServer: fkUsuario
            }),
        })
            .then(function (resposta) {
                console.log("resposta: ", resposta);
                if (resposta.ok) {
                    alert("Cadastro realizado com sucesso! Redirecionando para tela de Login...");
                } else {
                    throw "Houve um erro ao tentar realizar o cadastro!";
                }
            })
            .catch(function (resposta) {
                console.log(`#ERRO: ${resposta}`);
            });
        return false;
    }  

    //Função para listar os usuários no painel de colaboradores
    function listarFuncionarios(){
        // var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

        fetch(`/usuarios/listarPainel/${fkEmpresa}`,{
            method: 'GET',
            headers: {
                "Content-Type": "application/json",
            }
            .then(function(resposta){
                if(resposta.ok){
                    resposta.json()
                    console.log("Usuários encontrados: ", resposta)
                }
                else{
                    console.log("Houve um problema ao buscar os usuários")
                }
            })
        })
        .catch(function(error){
            console.log("Erro!: ", error)
        })
    }

    function atualizarDados(){

        var params = {
            idUsuario: sessionStorage.getItem('ID_USUARIO'),
            fkEmpresa: sessionStorage.getItem('FK_EMPRESA')
        }
        
        var novoEmail = email_input.value
        var novoNome = nome_input.value
        var novaSenha = senha_input.value
        var confirmarSenha = confirmar_input.value

        /*
        aqui terá validações de input
        */

        fetch(`/usuarios/atualizarDados/${params.idUsuario}?fkEmpresa=${params.fkEmpresa}`,{
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
              novoEmailServer: novoEmail,
              novoNomeServer: novoNome,
              novoSenhaServer: novaSenha,
            }),
        })
        .then(function(resposta){
            if(resposta.ok){
                resposta.json()
                console.log("Informações atualizadas no banco com sucesso: ", resposta)
            }
            else{
                console.log("Houve um problema ao atualizar as informações")
            }
        })
        .catch(function(error){
            console.log("Erro ao atualizar os dados: ", error)
        })
    }
