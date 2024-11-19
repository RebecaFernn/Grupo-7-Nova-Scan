var rebecaModel = require("../models/rebecaModel");

function grafico(req, res) {

    const idEmpresa = req.query.empresa; // Obtém o ID da empresa da query string
    const tipoDispositivo = req.query.tipo; // Obtém o tipo do dispositivo da query string

    // Valida se os parâmetros foram enviados
    if (!idEmpresa || !tipoDispositivo) {
        res.status(400).send("Parâmetros 'empresa' e 'tipo' são obrigatórios!");
        return;
    }
   

    rebecaModel.grafico(idEmpresa, tipoDispositivo).then(function (resultado) {
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
    grafico
}