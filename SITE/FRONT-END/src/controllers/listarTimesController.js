var usuarioModel = require("../models/usuarioModel");
var listar_times = require("../models/listar_times");


function  mostrarTimes(req, res) {

    var id_usuario  = req.params.id_usuario;

    if (id_usuario != undefined) {

        listar_times.mostrarTimes(id_usuario)
            .then(
                function (resultadoMostrarTimes) {
                    console.log(`\nResultados encontrados: ${resultadoMostrarTimes}`);
                    console.log(`Resultados: ${JSON.stringify(resultadoMostrarTimes)}`); // transforma JSON em String

                    

                        res.json(resultadoMostrarTimes)
                        

                }   
            )
    } } 


module.exports = {
    mostrarTimes
};