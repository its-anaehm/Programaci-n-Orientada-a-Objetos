"""
Caracteres Especiales de las RegExp
-----------------------------------

Son aquellos que tienen un significado no literal dentro de la expersión regular.
    . * { } [ ] / - + ( ) | ?

Metacaracteres
---------------

Son una combinación de caracteres epeciales que tienen un significado superior dentro de la expresión regular.

    \w: Un caracter alfanumérico o guión bajo.
    \W: Un caracter que no es \w.
    \d: Un caracter número (i.e.: un dígito).
    \D: Un caracter que no es \d.
    []: Significa un único caracter que puede ser cualquiera de los caracteres que se encuentran dentro de los corchetes.
    {}: Rpetición. El caracter o la agrupación anterior se repite el número de veces indicado.
        {n}: se repite específicamente n veces.
        {n,m}: se repite al menos n veces y máximo m veces.
        {n,}: se repite al menos n veces, máximo infinitas veces.
        {,m}: se repite máximo m veces.
    (): Agrupar.
    .: Significa "cualquier caracter".
    *: El caracter o la agrupación anterior se repite cero o infinitas veces.
    +: El caracter o la agrupación anterior se repite 1 o infinitas veces.
    ?: El caracter o la agrupación anterior es opcional.

Ejemplo
---------
    Una expersión regular para reconocer el siguiente número de telefono:
        9213-2121
            Número de Honduras.
            Originalmente era del operador Tigo.
            Telefonía móvil.

        (\(\+504\))?\d\d\d\d-?\d\d\d\d
        (\(\+504\))?9\d{3}-?\d{4}
"""
import re
class Validator:
    def __init__(self):
        pass

    def phoneNumber(self,phoneNumber=""):
        if re.match(r"(\(\+504\))?9\d{3}-?\d{4}",phoneNumber):
            return True
        return False

    def phoneNumbers(self,phoneNumbers=[]):
        result = []
        for number in phoneNumbers:
            resultElement = [number, self.phoneNumber(number)]
            result.append(resultElement)
        return result


validator = Validator()

userPhoneNumber = "9213-8888"
print("El número de teléfono %s es válido: %s" %(userPhoneNumber,validator.phoneNumber(userPhoneNumber)))

userPhoneNumbers = ["(+503)9111-1111", "(+503)91111111","(+504)91111111","91111111","9111-1-111","(+504)9111-1111"]

print(validator.phoneNumbers(userPhoneNumbers))