
function cadastrarColaborador() {
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
        Swal.fire({
            title: 'Preencha todos os campos!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else if (senhaVar !== confirmacaoSenhaVar) {
        Swal.fire({
            title: 'As senhas não coincidem!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else if (emailVar.indexOf("@") == -1 || emailVar.indexOf(".") == -1) {
        Swal.fire({
            title: 'Insira um email válido!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else {

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
                    console.log("CADASTRO DE COLABORADOR REALIZADO")
                    ChamarPopupCadastrar()
                } else {
                    throw console.log("Houve um erro ao tentar realizar o cadastro!");
                }
            })
            .catch(function (resposta) {
                console.log(`#ERRO: ${resposta}`);
            });
        return false;
    }
}

function listarFuncionarios() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA');
    fetch(`/usuarios/listarPainel/${fkEmpresa}`, {
        method: 'GET',
        headers: {
            "Content-Type": "application/json"
        }
    })
    .then(function(resposta) {
        if (resposta.ok) {
            return resposta.json();
        } else {
            console.log("Houve um problema ao buscar os usuários");
            throw new Error('Erro ao buscar usuários');
        }
    })
    .then(function(listaUsuarios) {
        console.log("Usuários encontrados: ", listaUsuarios);
        let colaborador
        for (var i = 0; i < listaUsuarios.length; i++) {
            colaborador = `
            <div class="box-colaboradores">
                <div class="nome" id="nome">${listaUsuarios[i].nome}</div>
                <div class="email" id="email">${listaUsuarios[i].email}</div>
                <div class="cargo" id="cargo">${listaUsuarios[i].fkTipoUsuario}</div>
                <div class="administrador" id="administrador">${listaUsuarios[i].fkAdmin}</div>
                <div class="status" id="status">${listaUsuarios[i].fkStatusUsuario}</div>
                <button id="editar" onclick="editar()"> <img src="./img/editar.svg" alt=""> </button>
                <button id="deletar" onclick="excluir()"> <img src="./img/delete.svg" alt=""></button>
            </div>`;
            
            const elementoPai = document.getElementById('conteudoColadores');
            elementoPai.innerHTML += colaborador;
            console.log(elementoPai);
        }
    })
    .catch(function(error) {
        console.log("Erro!: ", error);
    });
}


function editarDados() {
    var params = {
        idUsuario: sessionStorage.getItem('ID_USUARIO'),
        fkEmpresa: sessionStorage.getItem('FK_EMPRESA')
    }

    var novoNome = inp1.value
    var novoEmail = inp2.value
    var novaSenha = inp3.value
    var confirmarSenha = inp4.value

    if (novaSenha !== confirmarSenha) {
        
    }
    else {
        fetch(`/usuarios/atualizarDados/${params.idUsuario}?fkEmpresa=${params.fkEmpresa}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                novoNomeServer: novoNome,
                novoEmailServer: novoEmail,
                novoSenhaServer: novaSenha,
            }),
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    console.log("Informações atualizadas no banco com sucesso: ", resposta)
                    Swal.fire({
                        title: 'Informações atualizadas com sucesso!',
                        icon: 'success',
                        showConfirmButton: false,
                        timer: 2000
                    })
                }
                else {
                    console.log("Houve um problema ao atualizar as informações")
                    Swal.fire({
                        title: 'Ocorreu um erro ao atualizar as informações!',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 2000
                    })
                }
            })
            .catch(function (error) {
                console.log("Erro ao atualizar os dados: ", error)
            })
    }
}


function editarCargo() {
    var params = {
        fkEmpresa: sessionStorage.getItem('FK_EMPRESA')
    }

    var novoCargo = cargo_input.value
    var idUsuario = id_input.value

    if (novoCargo == "") {
        Swal.fire({
            title: 'Preencha o campo!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else {
        fetch(`/usuarios/atualizarCargo/${params.fkEmpresa}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                novoCargoServer: novoCargo,
                idUsuarioServer: idUsuario
            }),
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    console.log("Informações atualizadas no banco com sucesso: ", resposta)
                }
                else {
                    console.log("Houve um problema ao atualizar as informações")
                }
            })
            .catch(function (error) {
                console.log("Erro ao atualizar os dados: ", error)
            })
    }
}
// Fazer a função para desativar o usuario
