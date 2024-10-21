function entrar() {

    var emailVar = email_input.value;
    var senhaVar = senha_input.value;

    // validando se as inputs estão vazias
    if (emailVar == "" || senhaVar == "") {
        Swal.fire({
            title: 'Preencha todos os campos!',
            icon: 'warning',
            showConfirmButton: false,
            position: 'center',
            timer: 2000
        })
    }
    else if (emailVar.indexOf("@") == -1 || emailVar.indexOf(".") == -1) {
        Swal.fire({
            title: 'Insira um email válido!',
            icon: 'warning',
            showConfirmButton: false,
            position: 'center',
            timer: 2000
        })
    }
    else {

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

                Swal.fire({
                    title: 'Sucesso ao fazer o login!',
                    text: 'Redirecionando para a tela de Dashboard!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })
                console.log("Login realizado com sucesso");
                setTimeout(function () {
                    window.location = "overview.html";
                }, 2000);

            } else {
                console.log("Houve um erro ao tentar realizar o login!");
                resposta.text().then(texto => {
                    console.error(texto);
                    Swal.fire({
                        title: 'Houve um erro ao tentar realizar o login!',
                        text: 'Tente novamente',
                        icon: 'error',
                        showConfirmButton: false,
                    })
                });
            }

        }).catch(function (erro) {
            console.log(erro);
        })
        return false;
    }
}