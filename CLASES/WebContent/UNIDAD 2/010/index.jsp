<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="swd">
        <meta name="description" content="Validaciones con POO en FrontEnd">
        <title>Validaciones con POO en FrontEnd</title>
    </head>
    <body>
        <!--<form action="service.jsp" onsubmit="alert('Se está enviando el formulario')", si en el submit
        hay un valor false no se envia.
        -->
        <form action="service.jsp" onsubmit="return validate()" >
            <input type="text" id="name" placeholder="Nombre del Estudiante" name="name">
            <button type="submit">Enviar</button>
            <div id="error"></div>
        </form>
        <script type="text/javascript">
            var a; //Variable visible en todo el script
            
            /*
                Ejemplo rápido de Javascript 
                Comentario de multiples líneas
            */

            //Comentario multilínea

            //Función
            function example(c,d,f,g){
                if(true){
                    var a; //Variable visible en toda la función
                    let b; //Variable visible solo dentro de if
                }
                return c+d*e-f
            }

            /*
            Ejemplo de clases en Javascript
            */

            function Human(name, age){
                this.name = name;
                this.age = age;
                }
            
            human = new Human("Programación Orientada a Objetos",5);

            //Este objeto se encarga de validar datos.
            function Validator(){
                this.name = function(name){
                    if(`\${name}`.trim().match(/^([A-ZÁÉÍÓÚ][a-záéíóú]{2,})( [A-ZÁÉÍÓÚ][a-záéíóú]{2,}){1,3}$/)){
                        return true;
                    }
                    return false;
                }
            }
            var validator = new Validator();
            console.log(validator.name("Programación Orientada a Objetos"));
            
            //Este objeto se encarga de modificar el frontEnd, para informar al usuario de un error
            function ErrorManager(){
            	this.show = function(tag){
            		tag.style.border="1px solid red";
            		tag.style.color = "red";
            		tag.innerHTML = "El nombre no cumple con el formato"; //Para cambiar el texto dentro de la etiqueta div
            	}
            	this.hide = function(tag){
            		tag.style.border="0px solid transparent";
            		tag.style.color = "white";
            		tag.innerHTML = "";
            	}
            }
            

            /*
                Ejemplo de DOM
            */

            function validate(){
                var name = document.querySelector("#name");
                var validator = new Validator();
                result = validator.name(name.value);
                
                if(!result){
                	var errorManager = new ErrorManager();
                	var errorTag = document.querySelector("#error");
                	errorManager.show(errorTag);
                }
                
                //setInterval (function, time); Es una función, que se va a estar ejecutanto cara cierto tiempo, el intervalo dato en time
                //setTimeOut (function, time); Despues del tiempo especificado ejecuta la función solo una vez.
                //time en milisegundos
                //La función de parámetro tiene que existit como método anónimo o función externa
                
                setTimeout(function(){errorManager.hide(errorTag)}, 5000);
                
                return result;
            }
           


        </script>
    </body>
</html>