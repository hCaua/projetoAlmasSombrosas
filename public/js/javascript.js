var indiceTelaAtual = 1
var indiceProximaTela = ""
var indiceTelaAnterior = ""

var telas = []
for (i = 1; i <= 3; i++){
    var tela = document.querySelector(`[id="tela${i}"]`) 
    
    telas.push(tela)
}


function dirDireita(){
    for (i = 1; i < telas.length; i++){
        var tela = document.querySelector(`[id="tela${i}"]`) 

        tela.add
    }    
}

// function dirDireita(){

//         var telaAtual = document.querySelector(`[data-indice="${indiceTelaAtual}"]`) 
//         indiceProximaTela = indiceTelaAtual + 1
//         var proximaTela = document.querySelector(`[data-indice="${indiceProximaTela}"]`)
//         if(indiceTelaAtual == 1 && indiceTelaAtual == 0){
//             indiceTelaAnterior = 0
//         }else{
//             indiceTelaAnterior = indiceTelaAtual - 1
//             var telaAnterior = document.querySelector(`[data-indice="${indiceTelaAnterior}"]`)
//         }
//         indiceTelaAtual = indiceProximaTela


// console.log(telaAnterior)
// console.log(telaAtual)
// console.log(proximaTela)

// }



