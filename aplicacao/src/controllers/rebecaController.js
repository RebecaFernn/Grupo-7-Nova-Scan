var rebecaModel = require("../models/rebecaModel");

function grafico(req, res) {

    const inicio = req.query.inicio;
    const fim = req.query.fim;

    if (!inicio || !fim) {
        res.status(400).send("Os parâmetros 'inicio' e 'fim' são obrigatórios.");
        return;
    }

    const idEmpresa = req.query.empresa; 
    const tipoDispositivo = req.query.tipo; 

    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }


    rebecaModel.grafico(inicio, fim, idEmpresa, tipoDispositivo).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function grafico2(req, res) {

    const day = req.query.dia;

    if (!day) {
        res.status(400).send("Os parâmetros day são obrigatórios.");
        return;
    }

    const idEmpresa = req.query.empresa; 
    const tipoDispositivo = req.query.tipo; 

    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }


    rebecaModel.grafico2(idEmpresa, tipoDispositivo, day).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function KPI1(req, res) {

    const inicio= req.query.inicio;
    const fim = req.query.fim;
    const idEmpresa = req.query.empresa; 
    const tipoDispositivo = req.query.tipo; 

    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }


    rebecaModel.KPI1(inicio, fim, idEmpresa, tipoDispositivo).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function KPI2(req, res) {

    const inicio= req.query.inicio;
    const fim = req.query.fim;
    const idEmpresa = req.query.empresa; 
    const tipoDispositivo = req.query.tipo; 

    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }


    rebecaModel.KPI2(inicio, fim, idEmpresa, tipoDispositivo).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function KPI3(req, res) {

    const inicio= req.query.inicio;
    const fim = req.query.fim;
    const idEmpresa = req.query.empresa; 
    const tipoDispositivo = req.query.tipo; 

    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }


    rebecaModel.KPI3(inicio, fim, idEmpresa, tipoDispositivo).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    grafico,
    grafico2,
    KPI1,
    KPI2,
    KPI3
}