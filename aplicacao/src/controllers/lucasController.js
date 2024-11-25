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

function dadosGraficoRosquinha(req, res){
    var fkEmpresa = req.params.fkEmpresa

    if(fkEmpresa == undefined){
        res.status(400).send("A fk da empresa está indefinida")
    }
    else{
        lucasModel.dadosGraficoRosquinha(fkEmpresa)
        .then(function(resposta){
            res.status(200).json(resposta)
        })
        .catch(function(error){
            console.log(error)
            console.log("Houve um erro ao buscar os dados da rosquinha", error)
            res.status(500).json(erro.sqlMessage)
        })

    }
}

function dadosKpiAlerta(req, res){
    var fkEmpresa = req.params.fkEmpresa

    if(fkEmpresa == undefined){
        res.status(400).send("A fk da empresa está indefinida")
    }
    else{
        lucasModel.dadosKpiAlerta(fkEmpresa)
        .then(function(resposta){
            res.status(200).json(resposta)
        })
        .catch(function(error){
            console.log(error)
            console.log("Houve um erro ao buscar os dados da rosquinha", error)
            res.status(500).json(erro.sqlMessage)
        })

    }
}

function tempoTotal(req, res){
    var fkEmpresa = req.params.fkEmpresa

    if(fkEmpresa == undefined){
        res.status(400).send("A fk da empresa esta indefinida")
    }
    else{
        lucasModel.tempoTotal(fkEmpresa)
        .then(function(resposta){
            res.status(200).json(resposta)
        })
        .catch(function(error){
            console.log(error)
            console.log("Houve um erro ao buscar o tempo das maquinas", error)
            res.status(500).json(sqlMessage.error)
        })
    }
}

module.exports ={
    bootTime,
    dadosGraficoRosquinha,
    dadosKpiAlerta,
    tempoTotal
}