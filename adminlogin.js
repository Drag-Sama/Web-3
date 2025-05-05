document.addEventListener('DOMContentLoaded',function(){
    let message=document.getElementById("message")
    let form=document.getElementById("user-infos-01")
    form.addEventListener('submit', function(event){
        event.preventDefault();
        if(form.login.value==""){
            message.innerHTML="le <b>login</b> ne doit pas etre vide! "
        }
        else{
            form.submit()
            message.innerHTML=""
        }
    })
})