var database = require("../database/config");


function cadastrarTiro40y(idUsuario, mes, tempo) {
    var instrucaoSql = `
      INSERT INTO Metrica_atual (mes, metrica_tiro40y, fk_usuario) VALUES 
        (${mes}, ${tempo}, ${idUsuario})
    ` 

        console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function editarTiro40y(idUsuario, mes, tempo) {
    var instrucaoSql = `
      UPDATE Metrica_atual SET metrica_tiro40y = ${tempo}
    WHERE fk_usuario = ${idUsuario} AND mes = ${mes}
    ` 

        console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}


function buscarMetricasCadastradas(idUsuario) {
    var instrucaoSql = `
    SELECT frequencia_treino, metrica_3cones, metrica_shuttle_20, metrica_shuttle_60, metrica_supino, metrica_tiro40y 
	FROM Usuario WHERE idUsuario = ${idUsuario}; ` 


   

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}



function buscarUltimasMetricas(idUsuario) {

    var instrucaoSql = `
    SELECT mes, metrica_tiro40y FROM Metrica_atual WHERE mes IN (1,2,3,4,5,6) AND fk_usuario = ${idUsuario};
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


function buscarMedidasEmTempoReal(idAquario) {

    var instrucaoSql = `SELECT 
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fk_aquario 
                        FROM medida WHERE fk_aquario = ${idAquario} 
                    ORDER BY id DESC LIMIT 1`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMetricas,
    buscarMetricasCadastradas, 
    cadastrarTiro40y,
    editarTiro40y
}
