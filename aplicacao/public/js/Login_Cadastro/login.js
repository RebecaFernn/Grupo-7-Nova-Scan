    function entrar() {

        var emailVar = email_input.value;
        var senhaVar = senha_input.value;

        // validando se as inputs estão vazias
        if (emailVar == "" || senhaVar == "") {
            alert("todos os campos estão em branco")
        }
        else {
            alert("Campos validados")
        }

        console.log("FORM LOGIN: ", emailVar);
        console.log("FORM SENHA: ", senhaVar);

        fetch("/usuarios/autenticar", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                emailServer: emailVar,
                senhaServer: senhaVar,
            })
        }).then(function (resposta) {
            console.log("ESTOU NO THEN DO entrar()!")

            if (resposta.ok) {
                console.log(resposta);

                resposta.json().then(json => {
                    console.log(json);
                    console.log(JSON.stringify(json));
                    sessionStorage.EMAIL_USUARIO = json.email;
                    sessionStorage.NOME_USUARIO = json.nome;
                    sessionStorage.ID_USUARIO = json.id;
                    sessionStorage.FK_EMPRESA = json.fkEmpresa;
                });

                alert("Login realizado com sucesso")

                setTimeout(function () {
                    window.location = "overview.html";
                }, 1000);

            } else {
                console.log("Houve um erro ao tentar realizar o login!");
                resposta.text().then(texto => {
                    console.error(texto);
                });
            }

        }).catch(function (erro) {
            console.log(erro);
        })

        return false;
    }