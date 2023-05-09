var indiceTelaAtual = 1
var indiceProximaTela = ""
var indiceTelaAnterior = ""

function dirDireita(){

        var telaAtual = document.querySelector(`[data-indice="${indiceTelaAtual}"]`) 
        indiceProximaTela = indiceTelaAtual + 1
        var proximaTela = document.querySelector(`[data-indice="${indiceProximaTela}"]`)
        if(indiceTelaAtual == 1 && indiceTelaAtual == 0){
            indiceTelaAnterior = 0
        }else{
            indiceTelaAnterior = indiceTelaAtual - 1
            var telaAnterior = document.querySelector(`[data-indice="${indiceTelaAnterior}"]`)
        }
        indiceTelaAtual = indiceProximaTela


console.log(telaAnterior)
console.log(telaAtual)
console.log(proximaTela)

}