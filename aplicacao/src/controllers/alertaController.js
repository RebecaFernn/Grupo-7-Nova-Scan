var alertaModel = require("../models/alertaModel");

function listaComponentes(req, res){
    var fkEmpresa = req.params.fkEmpresa 
    var id = req.query.idSelecionado

    console.log("ID selecionado na controller: ", id)

    if(id == undefined){
      res.status(400).send("O id do dispositivo está undefined")
    }
    else if(fkEmpresa == undefined){
      res.status(400).send("O id da empresa está undefined")
    }
    else{
      alertaModel.listaComponentes(fkEmpresa, id)
      .then(function(listaComponentes){
        res.status(200).send(listaComponentes)
      })
      .catch(function(error){
        res.status(500).send("Erro ao buscar os componentes: " + error)
      })
    }
}

module.exports = {
    listaComponentes
  };