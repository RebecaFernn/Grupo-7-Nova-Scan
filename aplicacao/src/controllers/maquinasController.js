var maquinasModel = require("../models/maquinasModel");


function lista(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  maquinasModel.lista(fkEmpresa).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function qtdMaquinas(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  maquinasModel.qtdMaquinas(fkEmpresa).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function listaSelect(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  maquinasModel.listaSelect(fkEmpresa).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function atualizarNome(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.body.idDispositivoServer
  var novoNome = req.body.nomeServer;

  if (novoNome == undefined) {
    res.status(400).send("O novo nome esta undefined")
  }
  else if (idDispositivo == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else if (fkEmpresa == undefined) {
    res.status(400).send("O fk da empresa esta undefined")
  }
  else {
    maquinasModel.atualizarNome(novoNome, fkEmpresa, idDispositivo)
      .then(function (resultado) {
        console.log("Nome atualizado com sucesso")
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao atualizar o nome! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}


function desativarDispositivo(req, res) {
  var idDispositivo = req.body.idDispositivoServer

  if (idDispositivo == undefined) {
    res.status(400).send("O status esta undefined")
  }
  else {
    maquinasModel.desativarDispositivo(idDispositivo)
      .then(function (resultado) {
        console.log("Status atualizado com sucesso")
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao atualizar o status! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}

function ativarDispositivo(req, res) {
  var idDispositivo = req.body.idDispositivoServer

  if (idDispositivo == undefined) {
    res.status(400).send("O status esta undefined")
  }
  else {
    maquinasModel.ativarDispositivo(idDispositivo)
      .then(function (resultado) {
        console.log("Status atualizado com sucesso")
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao atualizar o status! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}


function componentes(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.query.idDispositivo;

  if (fkEmpresa == undefined) {
    res.status(400).send("O fk da empresa esta undefined")
  }
  else if (idDispositivo == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else {
    maquinasModel.componentes(fkEmpresa, idDispositivo)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao buscar os componentes! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}

function valoresComponentes(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.query.idDispositivo;

  if (fkEmpresa == undefined) {
    res.status(400).send("O fk da empresa esta undefined")
  }
  else if (idDispositivo == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else {
    maquinasModel.valoresComponentes(fkEmpresa, idDispositivo)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao buscar os componentes! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}

function listaAlertasMaquina(req, res) {
  var idUsuario = req.params.idUsuario;
  var fkEmpresa = req.query.idDispositivo;

  if (idUsuario == undefined) {
    res.status(400).send("O id do usuario esta undefined")
  }
  else if (fkEmpresa == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else {
    maquinasModel.listaAlertasMaquina(idUsuario, fkEmpresa)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao buscar os alertas! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}

function listarAlertasComponentesMaquina(req, res) {
  var idDispositivo = req.params.idDispositivo;

  if (idDispositivo == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else {
    maquinasModel.listarAlertasComponentesMaquina(idDispositivo)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao buscar os alertas! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }

}

function graficoAlerta(req, res) {
  var descricaoLog = req.params.descricao
  var idMaquina = req.query.idDispositivo

  if (descricaoLog == undefined) {
    res.status(400).send("a descrição do alerta está undefined")
  }
  else if(idMaquina == undefined){
    res.status(400).send("o id da maquina ta indefinido")
  }
  else {
    maquinasModel.graficoAlerta(descricaoLog, idMaquina)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        res.status(500).json(erro.sqlMessage)
      })
  }

}

function listarLogMaquina(req, res) {
  var idDispositivo = req.params.dispositivo; // Vem da rota.
  var idUsuario = req.query.idUsuario; // Passar via query string.
  var fkEmpresa = req.query.fkEmpresa
  
  
  console.log(`idDispositivo ${idDispositivo}, idUsuario ${idUsuario}, fkEmpresa ${fkEmpresa}`)



  if (idUsuario == undefined) {
    res.status(400).send("O id do usuario esta undefined")
  }
  else if (idDispositivo == undefined) {
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else if (fkEmpresa == undefined) {
    res.status(400).send("Fk da empresa esta undefined")
  }
  else {
    maquinasModel.listarLogMaquina(idUsuario, idDispositivo, fkEmpresa)
      .then(function (resultado) {
        res.status(200).json(resultado)
      })
      .catch(function (erro) {
        console.log(erro)
        console.log(`Houve um erro ao buscar os alertas! Erro: ${erro.sqlMessage}`)
        res.status(500).json(erro.sqlMessage)
      })
  }
}




function overview(req, res) {
  var fkEmpresa = req.params.fkEmpresa; // Vem da rota.
  var tipoComponente = req.query.tipoComponente; // Passado via query string.
  
  console.log(`fkEmpresa: ${fkEmpresa}, Componente: ${tipoComponente}`);

  // Validação de parâmetros
  if (!fkEmpresa) {  // Verifica se fkEmpresa está presente
      return res.status(400).send("O fk da empresa está undefined ou vazio.");
  }

  if (!tipoComponente) {  // Verifica se tipoComponente está presente
      return res.status(400).send("O tipo do componente está undefined ou vazio.");
  }

  // Chamada ao Model para buscar os dados
  maquinasModel.overview(fkEmpresa, tipoComponente)
      .then(function(resultado) {
          res.status(200).json(resultado);
      })
      .catch(function(erro) {
          // Log detalhado do erro
          console.error(`Erro ao buscar alertas: ${erro.message || erro.sqlMessage}`);
          res.status(500).json({ mensagem: "Houve um erro ao buscar os alertas.", erro: erro.message || erro.sqlMessage });
      });
}




module.exports = {
  lista,
  atualizarNome,
  desativarDispositivo,
  ativarDispositivo,
  componentes,
  valoresComponentes,
  listaAlertasMaquina,
  listarAlertasComponentesMaquina,
  listaSelect,
  listarLogMaquina,
  graficoAlerta,
  overview,
  qtdMaquinas
}