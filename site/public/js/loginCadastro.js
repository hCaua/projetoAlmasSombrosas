var formElements = []

for (i = 1; i <= 4; i++){
    var formElement = document.querySelector(`[formElemnt="${i}"]`) 
    
    formElements.push(formElement)
}

var loginSwitch = document.querySelector("#loginSwitch")
var cadastroSwitch = document.querySelector("#cadastroSwitch")

loginSwitch.addEventListener('click', function(){
    Array.from(formElements).forEach(formElement => {

        if(loginSwitch.classList.contains("ativo")){
            console.log("XD")
        }else{
            if(formElement.getAttribute("estado") == 0){

                formElement.setAttribute ("estado", 1)
                formElement.style.display = "flex"
            }else {
                formElement.setAttribute ("estado", 0)
                formElement.style.display = "none"
                
            }
        }
    })

    if(cadastroSwitch.classList.contains("ativo")){
        cadastroSwitch.classList.remove("ativo")
    }
    loginSwitch.classList.add("ativo")
})

cadastroSwitch.addEventListener('click', function(){
    Array.from(formElements).forEach(formElement => {

        if(cadastroSwitch.classList.contains("ativo")){
            console.log("XD")
        }else{
            if(formElement.getAttribute("estado") == 0){

                formElement.setAttribute ("estado", 1)
                formElement.style.display = "flex"
            }else {
                formElement.setAttribute ("estado", 0)
                formElement.style.display = "none"
                
            }

            
        }
    })    
    if(loginSwitch.classList.contains("ativo")){
        loginSwitch.classList.remove("ativo")
    }

    cadastroSwitch.classList.add("ativo")
})

function limparFormulario(){
    var usuario = document.getElementById("i_usuario")
    var senha = document.getElementById("i_senha")
    var confirmarSenha = document.getElementById("i_confirmarSenha")
    var email = document.getElementById("i_email")

    usuario.value = ""
    senha.value = ""
    confirmarSenha.value = ""
    email.value = ""
}