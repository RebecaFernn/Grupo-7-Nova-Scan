var alertaModel = require("../models/alertaModel");

function listaComponentes(req, res) {
  var fkEmpresa = req.params.fkEmpresa
  var id = req.query.idSelecionado

  console.log("ID selecionado na controller: ", id)

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

  if (fkUsuario == undefined) {
    res.status(400).send("O id do usuário está undefined")
  }
  else {
    alertaModel.qtdAlertasUsuario(fkUsuario)
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

  console.log("ID do usuário na controller: ", fkUsuario)
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

module.exports = {
  listaComponentes,
  criarAlerta,
  qtdAlertasUsuario,
  listaAlertas
};