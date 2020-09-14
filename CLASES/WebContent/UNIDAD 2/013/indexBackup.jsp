<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>AJAX con Jquery</title>
        <meta name="author" content="swd">
        <meta name="description" content="Uso de AJAX">
        <title>Insert title here</title>
        <style>
            /*Estilo al selector div*/
            div{

            }

            /*Aplicar un estilo a mÃºltiples selectores al mismo tiempo.*/
            div#first, div#second{

            }

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

            div#first:hover{
                top:0;
                left: 0;
            }

            div#second{
                background-color: blue;
                top: -45vh;
                right: -45vw; 
            }

            div#second:hover{
                top:0;
                right:0;
            }

            div#third{
                background-color: green;
                bottom: -45vh;
                left:-45vw;
            }

            div#third:hover{
                bottom:0;
                left:0;
            }

            div#fourth{
                background-color: yellow;
                bottom: -45vh;
                right: -45vw;
            }

            div#fourth:hover{
                bottom:0;
                right: 0;
            }
        </style>
    </head>
    <body>
        <div id="first" class="box"></div>
        <div id="second" class="box"></div>
        <div id="third" class="box"></div>
        <div id="fourth" class="box"></div>
    </body>
</html>