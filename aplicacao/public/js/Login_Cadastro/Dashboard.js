
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
                    Swal.fire({
                        title: 'Colaborador cadastrado!',
                        imageUrl: "img/ok.svg",
                        showConfirmButton: false,
                        timer: 2000
                    })
                    setTimeout(function () {
                        atualizarPagina();
                    }, 3000)
                } else {
                    throw console.log("Houve um erro ao tentar realizar o cadastro!");
                }
            })
            .catch(function (resposta) {
                console.log(`#ERRO: ${resposta}`);
                Swal.fire({
                    title: 'Houve um erro ao realizar o cadastro!',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: 2000
                })
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
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json();
            } else {
                console.log("Houve um problema ao buscar os usuários");
                throw new Error('Erro ao buscar usuários');
            }
        })
        .then(function (listaUsuarios) {
            console.log("Usuários encontrados: ", listaUsuarios);
            const nomeEmpresa = document.getElementById('nomeEmpresa');
            nomeEmpresa.innerHTML = `Colaboradores ${listaUsuarios[0].razaoSocial}`;
            let colaborador
            for (var i = 0; i < listaUsuarios.length; i++) {

                if (listaUsuarios[i].nomeAdmin == null) {
                    listaUsuarios[i].nomeAdmin = "Nenhum"
                }

                if (listaUsuarios[i].situacao == "Ativo") {
                    colaborador = `
                <div class="box-colaboradores">
                    <div class="nome" id="nome">${listaUsuarios[i].nome}</div>
                    <div class="email" id="email">${listaUsuarios[i].email}</div>
                    <div class="cargo" id="cargo">${listaUsuarios[i].cargo}</div>
                    <div class="administrador" id="administrador">${listaUsuarios[i].nomeAdmin}</div>
                    <div class="status" id="status">${listaUsuarios[i].situacao}</div>
                    <button id="editar" onclick=editar(${listaUsuarios[i].id})> <img src="./img/editar.svg" alt=""> </button>
                    <button id="deletar" onclick=excluir(${listaUsuarios[i].id})> <img src="./img/desative.svg" alt=""></button>
                </div>`;
                }else{
                    colaborador = `
                    <div class="box-colaboradores">
                        <div class="nome" id="nome">${listaUsuarios[i].nome}</div>
                        <div class="email" id="email">${listaUsuarios[i].email}</div>
                        <div class="cargo" id="cargo">${listaUsuarios[i].cargo}</div>
                        <div class="administrador" id="administrador">${listaUsuarios[i].nomeAdmin}</div>
                        <div class="status" id="status">${listaUsuarios[i].situacao}</div>
                        <button id="editar" onclick=editar(${listaUsuarios[i].id})> <img src="./img/editar.svg" alt=""> </button>
                        <button id="deletar" onclick=ativar(${listaUsuarios[i].id})> <img src="./img/active.svg" alt=""></button>
                    </div>`;
                }
                const elementoPai = document.getElementById('conteudoColadores');
                elementoPai.innerHTML += colaborador;
                console.log(elementoPai);
            }
        })
        .catch(function (error) {
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
                        imageUrl: "img/ok.svg",
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

var usuarioId

// função para chamar o pop up editar e excluir que estão recebendo o ID do usuario listado no listarFuncionario 
// e armazenando na variavel global usuarioId
function editar(id) {
    fundoEditar.style.display = 'flex';
    usuarioId = id
}

function excluir(id) {
    fundoExcluir.style.display = 'flex';
    usuarioId = id
}
function ativar(id) {
    fundoAtivar.style.display = 'flex';
    usuarioId = id
}

function editarCargo() {

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var novoCargo = comboBox.value

    fetch(`/usuarios/atualizarCargo/${fkEmpresa}`, {
        method: "PATCH",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            novoCargoServer: novoCargo,
            idUsuarioServer: usuarioId
        }),
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Informações atualizadas no banco com sucesso: ", resposta)

                usuarioId = null

                Swal.fire({
                    title: 'Cargo atualizado com sucesso!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })

                setTimeout(function () {
                    atualizarPagina();
                }, 3000)
            }
            else {
                console.log("Houve um problema ao atualizar as informações")
                Swal.fire({
                    title: 'Erro ao atualizar o cargo!',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: 2000
                })
                usuarioId = null
            }
        })
        .catch(function (error) {
            console.log("Erro ao atualizar os dados: ", error)
            usuarioId = null
        })
}

function desativarFuncionario() {

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

    var input = inputExcluir.value;

    if (input != "excluir usuário") {
        Swal.fire({
            title: 'Digite "excluir usuário" para confirmar!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    } else {
        fetch(`/usuarios/desativarFuncionario/${fkEmpresa}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                idUsuarioServer: usuarioId
            }),
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    console.log("Informações atualizadas no banco com sucesso: ", resposta)

                    Swal.fire({
                        title: 'Usuario desativado!',
                        imageUrl: "img/ok.svg",
                        showConfirmButton: false,
                        timer: 2000
                    })

                    usuarioId = null

                    setTimeout(function () {
                        atualizarPagina();
                    }, 3000)
                }
                else {
                    console.log("Houve um problema ao atualizar as informações")
                    Swal.fire({
                        title: 'Houve um erro ao desativar o funcionario!',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 2000
                    })

                    usuarioId = null
                }
            })
            .catch(function (error) {
                console.log("Erro ao atualizar os dados: ", error)
                usuarioId = null
            })

    }
}

function ativarFuncionario() {

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

    var input = inputAtivar.value;

    if (input != "ativar usuário") {
        Swal.fire({
            title: 'Digite "ativar usuário" para confirmar!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    } else {
        fetch(`/usuarios/ativarFuncionario/${fkEmpresa}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                idUsuarioServer: usuarioId
            }),
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    console.log("Informações atualizadas no banco com sucesso: ", resposta)

                    Swal.fire({
                        title: 'Usuario ativado!',
                        imageUrl: "img/ok.svg",
                        showConfirmButton: false,
                        timer: 2000
                    })

                    usuarioId = null

                    setTimeout(function () {
                        atualizarPagina();
                    }, 3000)
                }
                else {
                    console.log("Houve um problema ao atualizar as informações")
                    Swal.fire({
                        title: 'Houve um erro ao ativar o funcionario!',
                        icon: 'error',
                        showConfirmButton: false,
                        timer: 2000
                    })

                    usuarioId = null
                }
            })
            .catch(function (error) {
                console.log("Erro ao atualizar os dados: ", error)
                usuarioId = null
            })

    }
}
