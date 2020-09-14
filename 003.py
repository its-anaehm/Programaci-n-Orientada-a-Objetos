from Validator import *

validator = Validator()
userPhoneNumber = PhoneNumber("9884-4555","(+504)","Tigo")
printer = Printer()

print("El número de teléfono %s es válido: %s" %(userPhoneNumber.number,validator.phoneNumber(userPhoneNumber)))

userPhoneNumbers = [
    PhoneNumber("9111-1111","(+504)","Tigo"),
    PhoneNumber("91111111","(+503)","Tigo"),
    PhoneNumber("911-111111","(+503)","Tigo"),
    PhoneNumber("911-111111","(+504)","Tigo"),
    PhoneNumber("911-111111","(504)","Tigo"),
    PhoneNumber("911-1111","","Tigo"),
    PhoneNumber("911111111","","Tigo"),
]

print(validator.phoneNumbers(userPhoneNumbers))
printer._print(validator.phoneNumbers(userPhoneNumbers))