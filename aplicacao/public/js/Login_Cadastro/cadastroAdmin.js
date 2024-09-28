
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

        fetch("/usuarios/cadastrarAdmin", {
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
