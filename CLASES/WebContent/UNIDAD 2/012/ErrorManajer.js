function ErrorManager(){
    this.tag = null;
    this.show = function(tag,message="Error"){
        tag.style.border="1px solid red";
        tag.style.color = "red";
        tag.innerHTML = message; //Para cambiar el texto dentro de la etiqueta div
    }

    this.hide = function(tag){
        tag.style.border="0px solid transparent";
        tag.style.color = "white";
        tag.innerHTML = "";
    }
    this.inserTag = function(tag){
        tag = "<div id='error'></div>";
        this.tag = tag;
        this.innerHTML += tag;
        return document.querySelector("div#error");
    }

}