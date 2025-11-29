var medidaModel = require("../models/medidaModel");

function buscarUltimasMetricas(req, res) {

    console.log("Passou pelo controller")
    const limite_linhas = 6;

    var idUsuario = req.params.idUsuario;

    console.log(`Recuperando as ultimas medidas`);

    medidaModel.buscarUltimasMetricas(idUsuario).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([])
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}



function buscarMetricasCadastradas(req, res) {
    console.log(req.params.idUsuario)
    var idUsuario = req.params.idUsuario
    const limite_linhas = 1;

;
    console.log(idUsuario)
    console.log(`Recuperando as ultimas ${limite_linhas} medidas`);

    medidaModel.buscarMetricasCadastradas(idUsuario).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([])
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}



module.exports = {
    buscarUltimasMetricas,
    buscarMetricasCadastradas

}