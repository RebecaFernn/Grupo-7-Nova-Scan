var maquinasModel = require("../models/maquinasModel");


function lista(req, res) {
  var fkEmpresa = req.params.fkEmpresa;
  maquinasModel.lista(fkEmpresa).then((resultado) => {
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

function graficoAlerta(req, res){
  var idDoAlerta = req.params.idAlerta

  if(idDoAlerta == undefined){
    res.status(400).send("o id do alerta esta indefinido")
  }
  else{
    maquinasModel.graficoAlerta(idDoAlerta)
    .then(function(resultado){
      res.status(200).json(resultado)
    })
    .catch(function(erro){
      res.status(500).json(erro.sqlMessage)
    })
  }
  
}

function updateChart() {
    
  currentTime = new Date(currentTime.getTime() + 1 * 60 * 1000);

 
  const graficoAlerta = Math.floor(Math.random() * 100);
 
  cpuChart.data.labels.push(currentTime.toLocaleString());
  cpuChart.data.datasets[0].data.push(graficoAlerta);
  
 
  if (cpuChart.data.labels.length > 5) {
      cpuChart.data.labels.shift();
      cpuChart.data.datasets[0].data.shift();
  }
  
 
  cpuChart.update();
}


setInterval(updateChart, 1 * 60 * 1000); 



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
  graficoAlerta,
  updateChart
}