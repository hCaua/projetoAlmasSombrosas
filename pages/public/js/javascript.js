var telas = []


 document.addEventListener('DOMContentLoaded', function() {
    for (i = 1; i <= 3; i++){
        var tela = document.querySelector(`[id="tela${i}"]`) 
        
        telas.push(tela)
    }
 }, false);


 var distanciaCarrosel = 0

function dirDireita(){
    distanciaCarrosel += 100

    const transicao = document.querySelector(".t-direita")
    transicao.style.animation = "transicaoEsquerda 2s linear"
   

    for (i = 0; i < telas.length; i++){
        
        telas[i].setAttribute("style", `transform: translateX(-${distanciaCarrosel}vw)`)
    } 

    setTimeout(() => { transicao.style.animation = null }, 1800);
    
}

function dirEsquerda(){
    distanciaCarrosel -= 100

    const transicao = document.querySelector(".t-esquerda")
    transicao.style.animation = "transicaoDireita 2s linear"

    for (i = 0; i < telas.length; i++){
        
        
        telas[i].setAttribute("style", `transform: translateX(-${distanciaCarrosel}vw)`)
    } 

    setTimeout(() => { transicao.style.animation = null }, 1800);
     
}




