// Código para inserir no vetor cada tela da home
var telas = []
for (i = 1; i <= 3; i++){
    var tela = document.querySelector(`[id="tela${i}"]`) 
    
    telas.push(tela)
}

// Função para tela de start sumir ao click
var transicaoFull
transicaoFull = document.querySelector(".t-full")

var telaStart
telaStart = document.querySelector("#telaStart")

transicaoFull.addEventListener('click', function(){
    transicaoFull.style.opacity = "100";


setTimeout(() => { telaStart.style.display = "none", transicaoFull.style.transition = "opacity 2s ease-in", transicaoFull.style.opacity = "0"}, 1200);
setTimeout(() => { transicaoFull.style.display = "none";}, 3300);
})



// Funções para jogar as telas da home para esquerda e direita
 var distanciaCarrosel = 0

function dirDireita(){
    distanciaCarrosel += 100

    const transicao = document.querySelector(".t-direita")
    transicao.style.animation = "transicaoEsquerda 1.5s ease-in-out"
   

    setTimeout(() => {  
        for (i = 0; i < telas.length; i++){
            
            telas[i].setAttribute("style", `transform: translateX(-${distanciaCarrosel}vw)`)
        } 
    }, 250);

    setTimeout(() => { transicao.style.animation = null }, 1000);
    
}

function dirEsquerda(){
    distanciaCarrosel -= 100

    const transicao = document.querySelector(".t-esquerda")
    transicao.style.animation = "transicaoDireita 1.5s ease-in-out"

setTimeout(() => {  
    for (i = 0; i < telas.length; i++){
        
        telas[i].setAttribute("style", `transform: translateX(-${distanciaCarrosel}vw)`)
    } 
}, 200);
    setTimeout(() => { transicao.style.animation = null }, 1000);
     
}



// Função para abrir e fechar um card de boss
var bossesContainer = document.getElementById("bossesContainer")

var bossesCardsDiv = bossesContainer.getElementsByTagName("div")

Array.from(bossesCardsDiv).forEach(bossCard => {
    bossCard.addEventListener('click', () => {
     var estado = bossCard.getAttribute("data-value")
     var imagem = bossCard.querySelector("img");
     var infosBoss = bossCard.querySelector("#bossCardInfo")
        console.log(infosBoss);

    //  0 = contraido
    // 1 = aberto
        if(estado == 0){
            bossCard.style.minWidth = "750px"
            bossCard.style.filter = "grayscale(0)"

            
            imagem.style.transform= "translateX(-80px) skew(-345deg)"

            infosBoss.style.transform = "translateX(0rem)"

            bossCard.setAttribute("data-value", "1")
        }else{
            bossCard.style.minWidth = "245px"
            bossCard.style.filter = "grayscale(100%)"

            imagem.style.transform= "translateX(-180px) skew(-345deg)"

            infosBoss.style.transform = "translateX(25rem)"

            bossCard.setAttribute("data-value", "0")
        }


    });
  });