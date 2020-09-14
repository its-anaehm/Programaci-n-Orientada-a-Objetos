#-*- coding: utf-8 -*-
import re
"""
    Al estudiante:
        Hacer una clase que permita transformar un list (i.e.: array) en una tabla assci
        /objeto

        Número de Teléfono    |    Válido
        ----------------------------------
                              |          
        -----------------------------------
                              |

"""

class PhoneNumber:
    def __init__(self,number="",areaCode="",operator=""):
        self.number = number
        self.areaCode = areaCode
        self.operator = operator

class Validator:
    def __init__(self):
        self.rePhoneNumber = r"(\(\+504\))?9\d{3}-?\d{4}"

    def phoneNumber(self,phoneNumber=PhoneNumber()):

        if re.match(self.rePhoneNumber, "%s%s" %(phoneNumber.areaCode,phoneNumber.number)):
            return True
        return False

    def phoneNumbers(self,phoneNumbers=PhoneNumber()):
        result = []
        for number in phoneNumbers:
            resultElement = ["%s%s" %(number.areaCode,number.number),self.phoneNumber(number)]
            result.append(resultElement)
        return result

class Printer:
    def __init__(self):
        pass

    def _print(self,ObjToPrint):
        print("Número de teléfono    |   Válido")
        for obj in ObjToPrint:
            print("-"*32)
            print("%s|%s" %(obj[0],obj[1]))