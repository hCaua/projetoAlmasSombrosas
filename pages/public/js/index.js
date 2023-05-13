var telas = []
for (i = 1; i <= 3; i++){
    var tela = document.querySelector(`[id="tela${i}"]`) 
    
    telas.push(tela)
}

var transicaoFull
transicaoFull = document.querySelector(".t-full")

var telaStart
telaStart = document.querySelector("#telaStart")

transicaoFull.addEventListener('click', function(){
transicaoFull.style.opacity = "100";
setTimeout(() => { telaStart.style.display = "none", transicaoFull.style.transition = "opacity 2s ease-in", transicaoFull.style.opacity = "0"}, 1200);
setTimeout(() => { transicaoFull.style.display = "none";}, 3300);
})



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




