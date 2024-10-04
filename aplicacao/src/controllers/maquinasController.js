var maquinasModel = require("../models/maquinasModel");


function lista(req, res) {
    var fkEmpresa = req.params.fkEmpresa;
    maquinasModel.lista(fkEmpresa).then((resultado) => {
      res.status(200).json(resultado);
    });
  }

module.exports = {
    lista,
}