var maquinasModel = require("../models/maquinasModel");


function lista(req, res) {
    var fkEmpresa = req.params.fkEmpresa;
    maquinasModel.lista(fkEmpresa).then((resultado) => {
      res.status(200).json(resultado);
    });
  }

function atualizarNome(req,res){
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.body.idDispositivoServer
  var novoNome = req.body.nomeServer;

  if(novoNome == undefined){
    res.status(400).send("O novo nome esta undefined")
  }
  else if(idDispositivo == undefined){
    res.status(400).send("O id do dispositivo esta undefined")
  }
  else if(fkEmpresa == undefined){
    res.status(400).send("O fk da empresa esta undefined")
  }
  else{
    maquinasModel.atualizarNome(novoNome, fkEmpresa, idDispositivo)
    .then(function(resultado){
        console.log("Nome atualizado com sucesso")
        res.status(200).json(resultado)
    })
    .catch(function(erro){
      console.log(erro)
      console.log(`Houve um erro ao atualizar o nome! Erro: ${erro.sqlMessage}`)
      res.status(500).json(erro.sqlMessage)
    })
  }
}


function desativarDispositivo(req,res){
  var idDispositivo = req.body.idDispositivoServer

  if(idDispositivo == undefined){
    res.status(400).send("O status esta undefined")
  }
  else{
    maquinasModel.desativarDispositivo(idDispositivo)
    .then(function(resultado){
        console.log("Status atualizado com sucesso")
        res.status(200).json(resultado)
    })
    .catch(function(erro){
      console.log(erro)
      console.log(`Houve um erro ao atualizar o status! Erro: ${erro.sqlMessage}`)
      res.status(500).json(erro.sqlMessage)
    })
  }
}

function ativarDispositivo(req,res){
  var idDispositivo = req.body.idDispositivoServer

  if(idDispositivo == undefined){
    res.status(400).send("O status esta undefined")
  }
  else{
    maquinasModel.ativarDispositivo(idDispositivo)
    .then(function(resultado){
        console.log("Status atualizado com sucesso")
        res.status(200).json(resultado)
    })
    .catch(function(erro){
      console.log(erro)
      console.log(`Houve um erro ao atualizar o status! Erro: ${erro.sqlMessage}`)
      res.status(500).json(erro.sqlMessage)
    })
  }
}
module.exports = {
    lista,
    atualizarNome,
    desativarDispositivo,
    ativarDispositivo,
}