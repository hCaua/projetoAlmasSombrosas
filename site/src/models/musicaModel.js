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
        select musica.nome, musica.criadorVid, usuario.idUsuario, musica.vidBanner, musica.idMusica, musica.serie from musica 
        join usuarioCurtida on musica.idMusica = usuarioCurtida.fkMusica
            join usuario on usuario.idUsuario = usuarioCurtida.fkUsuario
                where idUsuario = ${idUsuario}
                order by idUsuarioCurtida desc; `

        return database.executar(instrucao);    
    }

    function listarQtdPorSerie(idUsuario){
        var instrucao = `
        SELECT musica.serie, IFNULL(count(curtidas.qtdCurtidas), 0) AS qtdCurtidas
        FROM musica
        LEFT JOIN (
            SELECT musica.idMusica, COUNT(usuarioCurtida.idUsuarioCurtida) AS qtdCurtidas
            FROM usuarioCurtida
            JOIN musica ON usuarioCurtida.fkMusica = musica.idMusica
            WHERE usuarioCurtida.fkUsuario = ${idUsuario}
            GROUP BY musica.idMusica
        ) AS curtidas ON musica.idMusica = curtidas.idMusica
        GROUP BY musica.serie
        ORDER BY musica.serie DESC;`

        return database.executar(instrucao);    
    }


    function maisCurtidas(){
        var instrucao = `
        select count(usuarioCurtida.idUsuarioCurtida) qtdCurtidas, musica.*
        from usuarioCurtida JOIN musica 
            ON usuarioCurtida.fkMusica = musica.idMusica
            group by musica.idMusica, musica.nome, musica.ytVidId, musica.vidBanner, musica.criadorVid, musica.serie, musica.bossDesc
            order by count(usuarioCurtida.idUsuarioCurtida) desc limit 5;
            `

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
    curtidas,
    maisCurtidas,
    listarQtdPorSerie
};