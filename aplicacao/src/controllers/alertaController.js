var alertaModel = require("../models/alertaModel");

function listaComponentes(req, res) {
  var fkEmpresa = req.params.fkEmpresa
  var id = req.query.idSelecionado

  if (id == undefined) {
    res.status(400).send("O id do dispositivo está undefined")
  }
  else if (fkEmpresa == undefined) {
    res.status(400).send("O id da empresa está undefined")
  }
  else {
    alertaModel.listaComponentes(fkEmpresa, id)
      .then(function (listaComponentes) {
        res.status(200).send(listaComponentes)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao buscar os componentes: " + error)
      })
  }
}

function listarAlertaComponente(req, res){
  alertaModel.listarAlertaComponente()
  .then(function(resposta){
    res.status(200).send(resposta)
  })
  .catch(function(error){
    res.status(500).send("Erro ao listar os tipos de alerta: " + error)
  })
}

function criarAlerta(req, res) {
  var fkUsuario = req.body.fkUsuarioServer
  var fkComponente = req.body.fkComponenteServer
  var fkDispositivo = req.body.fkDispositivoServer
  var minIntervalo = req.body.minIntervaloServer
  var maxIntervalo = req.body.maxIntervaloServer

  if (fkUsuario == undefined) {
    res.status(400).send("O id do usuário está undefined")
  }
  else if (fkComponente == undefined) {
    res.status(400).send("O id do componente está undefined")
  }
  else if (fkDispositivo == undefined) {
    res.status(400).send("O id do dispositivo está undefined")
  }
  else if (minIntervalo == undefined) {
    res.status(400).send("O intervalo mínimo está undefined")
  }
  else if (maxIntervalo == undefined) {
    res.status(400).send("O intervalo máximo está undefined")
  }
  else {
    alertaModel.criarAlerta(fkUsuario, fkComponente, fkDispositivo, minIntervalo, maxIntervalo)
      .then(function (resposta) {
        res.status(200).send(resposta)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao criar o alerta: " + error)
      })
  }
}


function qtdAlertasUsuario(req, res) {
  var fkUsuario = req.params.fkUsuario
  var fkDispositivo = req.query.fkDispositivo
  var fkComponente = req.query.fkComponente

  if (fkUsuario == undefined) {
    res.status(400).send("O id do usuário está undefined")
  }
  else if (fkDispositivo == undefined) {
    res.status(400).send("O id do dispositivo está undefined")
  }
  else if (fkComponente == undefined) {
    res.status(400).send("O id do componente está undefined")
  }
  else {
    alertaModel.qtdAlertasUsuario(fkUsuario, fkDispositivo, fkComponente)
      .then(function (qtdAlertas) {
        res.status(200).send(qtdAlertas)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao buscar a quantidade de alertas: " + error)
      })
  }
}

function listaAlertas(req, res) {
  var fkUsuario = req.params.fkUsuario

  if (fkUsuario == undefined) {
    res.status(400).send("O id do usuário está undefined")
  }
  else {
    alertaModel.listaAlertas(fkUsuario)
      .then(function (resposta) {
        res.status(200).send(resposta)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao listar os alertas: " + error)
      })
  }
}

function excluirAlerta(req, res) {
  var idAlerta = req.params.idAlerta

  if (idAlerta == undefined) {
    res.status(400).send("O id do alerta está undefined")
  }
  else {
    alertaModel.excluirAlerta(idAlerta)
      .then(function (resposta) {
        res.status(200).send(resposta)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao excluir o alerta: " + error)
      })
  }
}

function editarAlerta(req, res) {
  var idUsuario = req.body.idUsuarioServer
  var minIntervalo = req.body.minIntervaloServer
  var maxIntervalo = req.body.maxIntervaloServer
  var idAlerta = req.body.idAlertaServer

  console.log("ID do usuário: ", idUsuario)
  console.log("Intervalo mínimo: ", minIntervalo)
  console.log("Intervalo máximo: ", maxIntervalo)
  console.log("ID do alerta: ", idAlerta)
  

  if (idUsuario == undefined) {
    res.status(400).send("O id do usuário está undefined")
  }
  else if (minIntervalo == undefined) {
    res.status(400).send("O intervalo mínimo está undefined")
  }
  else if (maxIntervalo == undefined) {
    res.status(400).send("O intervalo máximo está undefined")
  }
  else if (idAlerta == undefined) {
    res.status(400).send("O id do alerta está undefined")
  }
  else {
    alertaModel.editarAlerta(idUsuario, minIntervalo, maxIntervalo, idAlerta)
      .then(function (resposta) {
        res.status(200).send(resposta)
      })
      .catch(function (error) {
        res.status(500).send("Erro ao editar o alerta: " + error)
      })
  }
}

module.exports = {
  listaComponentes,
  criarAlerta,
  qtdAlertasUsuario,
  listaAlertas,
  excluirAlerta,
  editarAlerta,
  listarAlertaComponente
};