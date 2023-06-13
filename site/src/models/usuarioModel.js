var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM usuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function login(usuario, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", usuario, senha)
    var instrucao = `
       
            select usuario.*, senhaUsuario.* from usuario join senhaUsuario on idUsuario = fkUsuario where senha = '${senha}' and userName = '${usuario}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(usuario, email) {

    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO usuario (userName, email) VALUES ('${usuario}', '${email}');
    `;

    return database.executar(instrucao);
}

function cadastrarSenhaUsuario(idUsuario, senhaUsuario){
    var instrucao = `
    insert into senhaUsuario values (null, '${senhaUsuario}', ${idUsuario})
    `
    return database.executar(instrucao);
}

function obterId(nomeUsuario){
    var instrucao = `select idUsuario from usuario where userName = '${nomeUsuario}'`
    return database.executar(instrucao);
}

module.exports = {
    login,
    cadastrar,
    listar,
    obterId,
    cadastrarSenhaUsuario
};