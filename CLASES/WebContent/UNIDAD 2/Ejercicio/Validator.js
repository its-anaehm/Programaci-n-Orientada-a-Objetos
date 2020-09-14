function Validator(){
    this.isNumber = function(pNumber){
        return `${pNumber}`.trim().match(/\d+/)
    };

    this.isBetween = function(number, min, max){
        return (max > number) && (number >= min);
    }; 

    this.verifyDataType = function(idTag){
        var tag = document.querySelector(`#${idTag}`)
        var errorManager = new ErrorManager();
        if(!(this.isNumber(tag.value) && this.isBetween(tag.value, 0, 2001))){
            console.log("Invalido")
            errorManager.show(tag);
        }else{
            console.log("valido")
            errorManager.hide(tag,"black",1);
        }
    }
    this.random = function(min, max){
        return min + Math.random()*(max-min);
    }
} 

