<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>AJAX con Jquery</title>
    <meta name="author" content="swd">
    <meta name="description" content="Uso de AJAX">
    <script src='../../jquery-3.4.1.min.js'></script>
    <script src="ErrorManajer.js"></script>
</head>
<body>
    <button onclick="anyName();" >Click me</button>
    <input type="number" id="number"> 
    <select id="option">
        <option value="factorial">Factorial</option>
        <option value="fibonacci">Fibonacci</option>
    </select>
    <script>
        /*
        AJAX: Javascript Asincrono con JSON, XML, etc.
        Métodos del objeto "$" de Jquery para hacer AJAX:
            $.post(action, parameters, callback);
            $.get(action, paremeters);

            action: El sitio destino.
            parameters: Los parámetros que se enviarán a traves del encabezado POST o de la URL GET.
            Callback: es un método que se ejecuta con la respuesta recibida desde "action"
            */
        /*
        //Ejemplo hecho con un archivo de texto cualquiera, lo que retorna al callback es su contenido    
        function anyName(){

            var action = "example.txt" //-> Un archivo txt no es capás de procesar parámetros.
            var parameters = {"name": "Programación Orientada a Objetos"}; //-> Parametros dados en formato JSON.

            var callback = function(anyVariableName){
                document.querySelector("body").innerHTML += anyVariableName;
            }
            
            $.get(action,parameters,callback);
        }
        */
        /*
        //Ejemplo hecho con un archivo de jsp que retorna un html  
        function anyName(){

        var action = "serviceRecursive.jsp";
        var parameters = {"name": "Programación Orientada a Objetos"}; 
        
        var callback = function(anyVariableName){
            document.querySelector("body").innerHTML += anyVariableName;
        }

        $.get(action,parameters,callback);
        }
        */

        //Ejemplo hecho con un archivo de jsp que retorna un html segun los parametros que le enviemos
        function anyName(){

	        var action = "service.jsp";
	        var parameters = {"option":document.querySelector("#option").value,"n":document.querySelector("#number").value}
	
	        var callback = function(anyVariableName){
	            /*document.querySelector("body").innerHTML += anyVariableName;
                console.log(JSON.parse(anyVariableName));*/
                var body = document.querySelector("body");
                var result = JSON.parse(anyVariableName)

                if(!result.error){
                    var message = `Se ha realizado la operaci�n <strong>\${result.operation}</strong> 
                    con el n�mero <strong>\${result.n}</strong> dando como resultado <strong>\${result.description}</strong>`;
                    body.innerHTML += message;
                }else{
                    var em = new ErrorManager();
                    var errorTag = em.insertTag();
                    em.show(errorTag,result.description);
                }
	        }
	
	        $.get(action,parameters,callback);
        }

    </script>
</body>
</html>