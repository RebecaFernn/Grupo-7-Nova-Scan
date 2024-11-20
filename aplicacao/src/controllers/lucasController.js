var lucasModel = require("../models/lucasModel")

function bootTime(req, res) {
    var fkEmpresa = req.params.fkEmpresa

    if (fkEmpresa == undefined) {
        res.status(400).send("O id da empresa está undefined")
    }
    else {
        lucasModel.bootTime(fkEmpresa)
            .then(function (resposta) {
                res.status(200).json(resposta)
            })
            .catch(function (erro) {
                console.log(erro)
                console.log("Houve um erro ao buscar o Boot Time. ", erro.sqlMessage)
                res.status(500).json(erro.sqlMessage)
            })
    }
}

module.exports ={
    bootTime,
}