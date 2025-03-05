#CONCATENACION DE CADENAS

cadena1="hola"
cadena2="mundo"

cadena_concatenada_suma=cadena1+" "+cadena2
print(cadena_concatenada_suma)
cadena_concatenada_join="".join([cadena1," ",cadena2])
print(cadena_concatenada_join)

#FORMATEO DE CADENAS
resultado_f_string=f'hola {cadena1}'
print(resultado_f_string)
resultado_format='hola {}'.format(cadena2)
print(resultado_format)

#METODOS CADENAS BASICO
mayusculas="MUNDO"
cadena_con_espacios="   hola mundo   "
cadena1_mayuscula=cadena1.upper()
cadena2_minisculas=mayusculas.lower()
cadena_sin_espacios_infin=cadena_con_espacios.strip()

print("La cadena con mayusculas es",cadena1_mayuscula)
print("La cadena en minisculas es",cadena2_minisculas)
print("La cadena sin espacios es",cadena_sin_espacios_infin)


#SUBCADENAS EN PYTHON
subcadena=cadena_sin_espacios_infin[0:3]
print(subcadena)

posicion=cadena_sin_espacios_infin.find(cadena1)
print("Si se encontro la cadena hola en la cadena en la posicoon",posicion)

reemplazada_cadena=cadena_sin_espacios_infin.replace(cadena1,cadena2)
print(f'la cadena reemplazada es {reemplazada_cadena}')

subcadenas_dividias=cadena_sin_espacios_infin.split()
print(subcadenas_dividias)


#EJERCICIO GENERADOR DE MAILS
nombre= "ZADDKIEL DE JESUS MARTINEZ ALOR"
empresa= "Microsoft enterteiment"
dominio= "com.mx"


correo_total=nombre.replace(" ",".")+"@"+empresa.strip()+"."+dominio
print(f'\n{correo_total}')


#CONVERSION TIPOS DE DATOS
numero_cadena="10"
numero_entero=float(numero_cadena)
print(f'El tipo de dato de la variable es {type(numero_entero)} y su valor es {numero_entero}')

