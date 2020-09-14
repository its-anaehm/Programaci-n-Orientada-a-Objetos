<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>AJAX con Jquery</title>
        <meta name="author" content="swd">
        <title>Insert title here</title>
        
    </head>
    <body>
        <div id="selectAnOption">
            <select id="select" onchange="changeCSS(this);">
                <option value="0">Corners</option>
                <option value="1">Cross</option>
            </select>
            <div id="style"></div>
        </div>
        <div id="first" class="box"></div>
        <div id="second" class="box"></div>
        <div id="third" class="box"></div>
        <div id="fourth" class="box"></div>

        <script>
            window.onload = changeCSS;

            function changeCSS(select){
                //Anteriormente
                ///var select = document.querySelector("div#selectAnOption select");
                if(select.value == 0){
                    var styleCSS = `
                    <style>
                    /*Aplicar un estilo a objetos que pertenecen a la misma clasificaciÃ³n*/
                    div.box{
                        position: fixed;
                        border: 2px dotted black;
                        width: 50vw;
                        height: 50vh;
                    }


                    /*Estilo a un id en especÃ­fico*/
                    div#first{
                        background-color: red;
                        top:-45vh;
                        left:-45vw;
                    }


                    div#second{
                        background-color: blue;
                        top: -45vh;
                        right: -45vw; 
                    }



                    div#third{
                        background-color: green;
                        bottom: -45vh;
                        left: -45vw;
                    }



                    div#fourth{
                        background-color: yellow;
                        bottom: -45vh;
                        right: -45vw;
                    }


                    </style>
                `       
                }else{

                var styleCSS="";
                
                }
                //var style = document.querySelector("div...")
                style.innerHTML = styleCSS;


            }
        </script>
    </body>
</html>