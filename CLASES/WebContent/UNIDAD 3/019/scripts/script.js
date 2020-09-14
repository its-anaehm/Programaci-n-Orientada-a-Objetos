window.onload = loadData;

function store(){
	console.group("Store_Request");
	$.post("controllers/store1.jsp",{},function(data){
		
		try{
			var json = JSON.parse(`${data}`.trim());
			
			if(json.status){
				
				console.log("Éxito.")
			
			}else{
				
				console.error("Fracaso desde el Controlle Store");
	
			}
			
		}catch(ex){
			console.error("Fracaso en la petición desde Store");
			console.group("Exception variable");
			console.error(ex);
			console.groupEnd();
			
		}
	console.groupEnd();
	}).fail(function(){
		
		console.error("Fracaso en la petición Ajax Store.");
		console.groupEnd();
	});
}

function validation(){
	var userName = user.value;
	var userPassword = password.value;
	
	$.post("controllers/auth.jsp",{"userName":userName, "userPassword":userPassword},function(data){
		var json = JSON.parse(`${data}`.trim());
		if(json.status){
			location = "index.jsp"
		}else{
			
			var body = document.querySelector("body");
			var em = new ErrorManager();
			var errorTag = em.insertTag(body);
			em.show(errorTag);
			
			setTimeout(function(){
				em.hide(errorTag);
			},5000)
		}
		
	})
	return false;
}

function loadData(){
	$.post("controllers/read.jsp",{},function(data){
		var json = JSON.parse(`${data}`.trim());
		if(json.status){
			userName.value = json.name;
			userAge.value = json.age;
			userID.value = json.id;
			userDescription.value = json.description;
		}
		console.log(`Read: ${json.status}`);
	})
}

function writeData(f){
	var userName_form = userName.value;
	var userAge_form = userAge.value;
	var userID_form = userID.value;
	var userDescription_form = userDescription.value;
	
	$.post("controllers/write.jsp",{
		"name":userName_form,
		"age":userAge_form,
		"id":userID_form,
		"description":userDescription_form
	},function(data){
		
		try{
			var json = JSON.parse(`${data}`.trim());
			
			if(typeof f == "function"){
				f();
			}
			
			else{
				
				console.error("Fracaso desde el Controlle Store");
				
			}
			
			
			
	}catch(ex){
		console.error("Fracaso en la petición desde Store");
		console.group("Exception variable");
		console.error(ex);
		console.groupEnd();
		
	}
		
	}).fail(function(){
		
		console.error("Fracaso en la petición ajax 'Write data'");
	});
}

var isTyping = false;
var time = 300;
var timeOut;
function change(obj){
	
	clearTimeout(timeOut);
	isTyping = true;
	
	timeOut = setTimeout(function(){
		writeData(store);
		isTyping = false;
	},time)
}