#ARGUMENTOS POR DEFAULT Y POR NOMBRE
def imprimir_persona(nombre, apellido='', edad=0):
    print(f'Persona: nombre = {nombre}, apellido = {apellido}, edad = {edad}')

# Primero llamamos la funcion pasando los argumentos de manera posicional
imprimir_persona('Ricardo', 'Quintana', 32)
# Llamar la funcion usando argumentos por nombre
imprimir_persona(nombre='Carlos', apellido='Rojas', edad=28)
# Llamar la funcion usando argumentos por nombre, pero intercambiando el orden
imprimir_persona(edad=28, apellido='Rojas', nombre='Carlos')
# Argumentos con valor por default
imprimir_persona(nombre='Carlos')
imprimir_persona(nombre='Carlos', apellido='Rojas')
imprimir_persona(apellido='Rojas', nombre='Carlos')

#RETORNO DE TUPLAS
def persona_mayusculas(nombre, apellido, edad):
    print(f'Esta función regresa varios valores (tupla)')
    return nombre.upper(), apellido.upper(), edad

# Programa principal
nombre, apellido, edad = persona_mayusculas('Sandra', 'Jimenez', 42)
print(f'Resultado Persona: nombre = {nombre}, apellido = {apellido}, edad = {42}')

#VARIABLES GLOBALES Y LOCALES
# Variable global
contador_global = 0

def incrementar_contador():
    # Declaramos una variable local
    contador_local = 0
    # usar la variable global
    global contador_global
    # incrementamos la variable global
    contador_global += 1
    # incrementar la variable local
    contador_local += 1
    # Imprimimos ambos contadores
    print(f'Contador local: {contador_local}')
    print(f'Contador global: {contador_global}\n')

# Llamamos varias vece la funcion
incrementar_contador()
incrementar_contador()
incrementar_contador()

# Terminando el programa
print(f'Valor variable global: {contador_global}')

#ARGS
def superheroe_superpoderes(superheroe, nombre, *args):
    print(f'Superheroe: {superheroe} - {nombre} - {args}')
    # Iteramos los superpoderes
    for superpoder in args:
        print(f'\tSuperpoder: {superpoder}')

# Llamar la funcion
superheroe_superpoderes('Spiderman', 'Peter Parker', 'Instinto Arácnido', 'Teleraña')
superheroe_superpoderes('Ironam', 'Tony Stark', 'Armadura','Playboy','Millonario')

# Es opcional enviar argumentos variables
superheroe_superpoderes('Mi vecino', 'Juan Perez')

#KWARGS
def superheroe_superpoderes(nombre, *args, **kwargs):
    print(f'Superheroe: {nombre} - {args} - Mas info: {kwargs}')

# Llamarmos la funcion
superheroe_superpoderes('Spiderman', 'Instinto Arácnido', edad=17, empresa='Marvel')
superheroe_superpoderes('Ironman', 'Armandura','Playboy', edad=45)

# Es opcional enviar argumentos variables
superheroe_superpoderes('Mi vecino', personalidad='Buena onda!')