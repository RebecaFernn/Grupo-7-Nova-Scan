var maquinasModel = require("../models/maquinasModel");


function lista(req, res) {
    var fkEmpresa = req.params.fkEmpresa;
    maquinasModel.lista(fkEmpresa).then((resultado) => {
      res.status(200).json(resultado);
    });
  }

function atualizarNome(req,res){
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.query.idDispositivo
  var novoNome = req.body.nomeServer;

  if(novoNome == undefined){
    res.status(400).send("O novo nome esta undefined")
  }
  else{
    maquinasModel.atualizarNome(novoNome, fkEmpresa, idDispositivo)
    .then(function(resultado){
        console.log("Nome atualizado com sucesso")
        res.json(resultado)
    })
    .catch(function(erro){
      console.log(erro)
      console.log(`Houve um erro ao atualizar o nome! Erro: ${erro.sqlMessage}`)
      res.status(500).json(erro.sqlMessage)
    })
  }
}


function atualizarStatus(req,res){
  var fkEmpresa = req.params.fkEmpresa;
  var idDispositivo = req.query.idDispositivo
  var status = req.body.statusServer;

  if(status == undefined){
    res.status(400).send("O status esta undefined")
  }
  else{
    maquinasModel.atualizarStatus(status, fkEmpresa, idDispositivo)
    .then(function(resultado){
        console.log("Status atualizado com sucesso")
        res.json(resultado)
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
    atualizarNome
}