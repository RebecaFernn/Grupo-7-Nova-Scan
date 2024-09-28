var empresaModel = require("../models/empresaModel");

function listarCnpj(req, res) {
  empresaModel.listarCnpj(cnpj).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function ultimaEmpresa(req, res) {
  empresaModel.ultimaEmpresa().then((resultado) => {
      if (resultado.length === 0) {
          res.status(404).json({ mensagem: "Nenhuma empresa encontrada." });
      } else {
          res.status(200).json(resultado);
      }
  }).catch((erro) => {
      console.log("Erro ao buscar a última empresa: ", erro);
      res.status(500).json({ mensagem: "Erro interno do servidor" });
  });
}

function cadastrar(req, res) {
  var cnpj = req.body.cnpjServer;
  var nomeEmpresa = req.body.nomeEmpresaServer;

  empresaModel.listarCnpj(cnpj).then((resultado) => {
    if (resultado.length > 0) {
      res
        .status(401)
        .json({ mensagem: `a empresa com o cnpj ${cnpj} já existe` });
    } else {
      empresaModel.cadastrar(nomeEmpresa, cnpj).then((resultado) => {
        res.status(201).json(resultado);
      });
    }
  });
}

module.exports = {
  listarCnpj,
  cadastrar,
  ultimaEmpresa,
};
