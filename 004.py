"""
$ python3 004.py "Todo lo puesto aqui es un parámetro"

$ python3 004.py "Pogramación Orientada a Objetos"

$ python3 004.py -p "Pogramación Orientada a Objetos"

argv = argument values , es un arreglo con los parámetros dados este incluye el nombre del programa en la primera posición
todos los datos que contiene ese arreglo se pasa a cadena
"""

"""
    @author -> autor del código, poner un usuario público como un correo, twitter, githubUser... donde la gente te puede insultar o felicitar POO
    @since -> desde cuando existe este código
    @version -> la versión del código 0.1.0
"""


import sys
import re
"""
    Gestiona los parámetros de usuario.Contabiliza y categoriza los parámetros recibidos.
    @author @POO
    @version 0.1.0

"""
class ParameterMenager:
    def __init__(self):
        pass
#Los nombres apropiados para métodos en POO son verbos
    def analyse(self,params):
        results = []
        count = len(params)

        for param in params:
            length = len(param)
            if(re.match(r"-?\d+(\.\d+)?", param)):
                #Es numérico
                parameterType = "numeric"
            else:
                #Es alfanumérico
                parameterType = "alphanumeric"
            results.append([param,lenth,parameterType])

        return [count,results]
parameters = sys.argv[1:]

print(parameters)