var medidaModel = require("../models/medidaModel");

/* 
function buscarAltura_peso(req,res) {
    idUsuario = req.body.idUsuario

    medidaModel.buscarAltura_peso(idUsuario).then(

        
    ) {
        res.json(resultado)
    }
}
*/ 

function cadastrar_tiro40y(req, res) {

    var mes = req.body.serverMes;
    var tempo = req.body.serverTemmpo;
    var idUsuario = req.body.serveridUsuario;

    console.log(idUsuario, mes, tempo)
    

    medidaModel.cadastrarTiro40y(idUsuario, mes, tempo)
                .then(
                function (resultado) {
                    res.json(resultado);
                    
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    

}

function editar_tiro40y(req, res) {

    console.log("passou pelo editar")

    var mes = req.body.serverMes;
    var tempo = req.body.serverTemmpo;
    var idUsuario = req.body.serveridUsuario;

    console.log(idUsuario, mes, tempo)
    

    medidaModel.editarTiro40y(idUsuario, mes, tempo)
                .then(
                function (resultado) {
                    res.json(resultado);
                    
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    

}

function buscarUltimasMetricas(req, res) {

    console.log("Passou pelo controller")
    

    var idUsuario = req.params.idUsuario;

   

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
    buscarMetricasCadastradas,
    cadastrar_tiro40y,
    editar_tiro40y

}