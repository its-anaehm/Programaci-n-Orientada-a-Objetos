window.onload = function(){
	document.cookie = "auth=";
}

function record(){
	$.post(
			"service.jsp",
			{"option":"record",
				"evaluatorName":evaluatorName.value,
				"evaluatedName":evaluatedName})
}

function validation(){
	$.post("service.jsp",{"option":"auth","user":user.value,"password":password.value},function(data){
		data = JSON.parse(`{data}`.trim());
		if(data.status){
			//Redirigir al usuario al sitio "destino"
			document.cookie = `auth=${user.value}`;
			location = `PAA.jsp?`;
		}else{
			var em = new ErrorManager();
			var body = document.querySelector("body");
			var errorTag = em.insertTag(body);
			em.show(errorTag,"El usuario y/o la contraseña no son válidos.");
			setTimeout(function(){
				em.hide(errorTag);
			},3000);
		}
	});

	return false;
}