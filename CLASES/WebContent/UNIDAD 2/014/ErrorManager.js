function ErrorManager(){
	this.errorTag = null;
	this.insertTag = function(tag){
		//El estudiante puede desarrollar un mecanismo para no duplicar el div error.
		
		var errorTag = "<div id='error'></div>";
		tag.innerHTML = `${erroTag}${tag.innerHTML}`;
		 
		this.errorTag = document.querySelector("div#error");
		return thsi.errorTag;
	};
	
	this.show = function (tag,message="Error,"){
		tag.style.borber = "1px solid red";
		tag.style.color = "red";
		tag.innerHTML = message;
		
	};
	
	this.hide = function(tag){
		tag.style.border = "0px solid transparent";
		tag.style.color = "transparent";
		tag.innerHTML = "";
	}
}