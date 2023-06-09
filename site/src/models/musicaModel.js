var database = require("../database/config")

function listar(serieJogo) {

var instrucao = `select * from musica where serie = ${serieJogo} order by rand();`
    return database.executar(instrucao);
}

function curtiu(idUsuario, idMusica) {

    var instrucao = `select * from usuarioCurtida where fkUsuario = ${idUsuario} && fkMusica = ${idMusica};`
        return database.executar(instrucao);
    }

function descurtir(idUsuario, idMusica) {

    var instrucao = `delete from usuarioCurtida where fkUsuario = ${idUsuario} AND fkMusica = ${idMusica};`
        return database.executar(instrucao);
    }

function curtir(idUsuario, idMusica) {

    var instrucao = `insert into usuarioCurtida values (null, ${idUsuario}, ${idMusica});`
        return database.executar(instrucao);
    }


    function curtidas(idUsuario){
        var instrucao = `
        select musica.nome, musica.criadorVid, usuario.idUsuario, musica.vidBanner, musica.idMusica from musica 
            join usuarioCurtida on musica.idMusica = usuarioCurtida.fkMusica
                join usuario on usuario.idUsuario = usuarioCurtida.fkUsuario
                    where idUsuario = ${idUsuario};`

        return database.executar(instrucao);    
    }

function luckyFind() {

    var instrucao = `select * from musica order by rand() limit 1;`
        return database.executar(instrucao);
    }



module.exports = {
    listar,
    luckyFind,
    curtiu,
    curtir,
    descurtir,
    curtidas
};