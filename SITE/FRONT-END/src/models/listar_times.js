var database = require("../database/config")


function mostrarTimes(id_usuario) {

    var instrucaoSql  = `SELECT nome_time, estado_time, região_time, cidade_time, formulario_time, categoria FROM Usuario JOIN região ON região_usuario = idRegião JOIN TIMES ON região_time = idRegião WHERE idUsuario = ${id_usuario};`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}



module.exports = {
    mostrarTimes
};