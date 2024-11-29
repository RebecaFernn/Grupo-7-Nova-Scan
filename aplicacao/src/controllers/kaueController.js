var kaueModel = require('../models/kaueModel');

function graficopacotes(req, res) {
    kaueModel.graficopacotes()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado); // Retorna todos os resultados no formato JSON
            } else {
                res.status(204).send("Nenhum resultado encontrado!");
            }
        })
        .catch(function (erro) {
            console.log("Houve um erro ao buscar os pacotes.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function graficoperda(req, res){
    kaueModel.graficoperda()
        .then(function(resultado){
            if (resultado.length > 0 ) {
                res.status(200).json(resultado); 
            } else {
                res.status(204).send("Nenhum resultado encontrado!");
            }
        })
        .catch(function(erro){
            console.log("Houve um erro ao buscar os pacotes.", erro.sqlMessage);
            res.stastus(500).json(erro.sqlMessage);
        })
}
function listamaquina(req, res){
    var fkEmpresa = req.params.fkEmpresa

    if(fkEmpresa == undefined){
        res(400).status.send("A fk da empresa esta indefindo")
    }

    kaueModel.listamaquina(fkEmpresa)
        .then(function(resultado){
            if (resultado.length > 0 ) {
                res.status(200).json(resultado); 
            } else {
                res.status(204).send("Nenhum resultado encontrado!");
            }
        })
        .catch(function(erro){
            console.log("Houve um erro ao buscar os pacotes.", erro.sqlMessage);
            res.stastus(500).json(erro.sqlMessage);
        })
}




module.exports = {
    graficopacotes,
    graficoperda, 
    listamaquina
};
