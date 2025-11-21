var database = require("../database/config")

function autenticar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucaoSql = `
        SELECT idUsuario, nome_usuario, email_usuario, região_usuario FROM usuario WHERE email_usuario = '${email}' AND senha_usuario = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucaoSql
function cadastrar(nome, email, senha, regiao, altura, peso, frequencia, tiro40, cone_3, shuttle_20, shuttle_60, repeticoes) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        INSERT INTO Usuario (nome_usuario, email_usuario, senha_usuario, região_usuario, altura_usuario, peso_usuario, frequencia_treino, metrica_tiro40y, metrica_3cones, metrica_shuttle_20, metrica_shuttle_60, metrica_supino) VALUES 
	('${nome}', '${email}', '${senha}', ${regiao}, ${altura}, ${peso}, ${frequencia}, ${tiro40}, ${cone_3}, ${shuttle_20}, ${shuttle_60}, ${repeticoes});
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}






module.exports = {
    autenticar,
    cadastrar,
    
};