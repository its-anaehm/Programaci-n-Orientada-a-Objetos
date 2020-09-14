function ErrorManager(){
    this.show = function(tag){
        tag.style.border = "1px solid red";
        tag.style.color = "red";
        tag.innerHTML = "Los datos introducidos son incorrectos";
    };

    this.hide = function(tag, borderColor="transparent", borderPx="0"){
        tag.style.border = `${borderPx}px solid ${borderColor}`;
        tag.style.color = "black";
        tag.innerHTML = "";
    };
}