#Listas
lista=[5,4,6,3,2,"cinco","seis"]
print(lista)

#modificar elementos a una lista
lista[5]=10
print(lista)

#Añadir elemento a la lista
lista.append(20)
print(lista)

lista.insert(2,100)
print(lista)

#Eliminar elementos en una lista
lista.remove("seis")
print(lista)

lista.pop(5)
print(lista)

del lista[1]
print(lista)

#sublista 
sublista=lista[0:2]
print(sublista)

#TUPLAS 
mi_tupla = (1, 2, 3, 4, 5)
print(mi_tupla)
# No podemos modificar una tupla
#mi_tupla[0] = 10
#mi_tupla.append(6)

# Iteramos los elementos de una tupla
for elemento in mi_tupla:
    print(elemento, end=' ')

# Crear una tupla para una coordenada x,y
coordenadas = (3, 5)
# Accedemos a cada elemento de la tupla
print(f'\nCoordenada en el eje x: {coordenadas[0]}')
print(f'Coordenada en el eje y: {coordenadas[1]}')

# Crear una tupla unitaria
tupla_un_elemento = 10,
print(f'Tupla de un elemento: {tupla_un_elemento}')

# Tupla anidada
tuplas_anidada = (1, (2,3), (4,5))
print(f'Segundo elemento tupla anidada: {tuplas_anidada[1]}')

# Desempaquetado
producto = ('P001', 'Camisa', 20.00)
id, descripcion, precio = producto
print(f'Tupla completa: {producto}')

#SET
mi_set = {1, 2, 3, 4, 5, 4}
print(f'Mi set: {mi_set}')

# Agregar elementos al set
mi_set.add(6)
mi_set.add(7)

# Intentamos agregar un elemento duplicado
mi_set.add(3)

# Eliminar un elemento del conjunto
mi_set.remove(4)
print(f'Mi set modificado: {mi_set}')

# Iterar los elementos del set
for elemento in mi_set:
    print(elemento, end=' ')

# Comprobar si existe un elemento en el set
print(f'\nExiste el valor de 1 en el set? {1 in mi_set}')

# Obtener la longitud del set
print(f'Longitud del conjunto: {len(mi_set)}')

#Operaciones con conjuntos
a = {1, 2, 3, 4}
b = {3, 4, 5, 6}

union = a | b
print(f'Union a | b: {union}')

interseccion = a & b
print(f'Intersección a & b {interseccion}')

diferencia = a - b
print(f'Diferencia a - b {diferencia}')

#DICCIONARIOS
print('*** Diccionarios en Python ***')

# Creamos un dict de persona con clave y valor
persona = {
    'nombre': 'Sergio',
    'edad': 30,
    'ciudad': 'México'
}
print(f'Diccionario de persona: {persona}')

# Acceder a los elementos del diccionario
print(f'Nombre: {persona['nombre']}')
print(f'Edad: {persona.get('edad')}')
print(f'Ciudad: {persona.get('ciudad')}')

# Creamos un dict de persona con clave y valor
persona = {
    'nombre': 'Sergio',
    'edad': 30,
    'ciudad': 'México'
}
print(f'Diccionario de persona: {persona}')

# Acceder a los elementos del diccionario
print(f'Nombre: {persona['nombre']}')
print(f'Edad: {persona.get('edad')}')
print(f'Ciudad: {persona.get('ciudad')}')

# Modificar un valor del diccionario
persona['edad'] = 35
print(f'Diccionario de persona: {persona}')

# Agregar un nuevo elemento
persona['profesion'] = 'Ingeniero'
print(f'Diccionario de persona: {persona}')

# Eliminar un elemento
del persona['ciudad']
print(f'Diccionario de persona: {persona}')

persona.pop('profesion')
print(f'Diccionario de persona: {persona}')

# Iterar los elementos de un dict (llave, valor)
for llave, valor in persona.items():
    print(f'Llave: {llave}, Valor: {valor}')

# Obtener los valores
print(f'\nValores del diccionario: ')
for valor in persona.values():
    print(f'- Valor: {valor}')

# Obtener las llaves
print(f'Impresión de las llaves del diccionario:')
for llave in persona.keys():
    print(f'- {llave}')

#EJERCICIO 
agenda=dict()
desicion=0

print("Agenda de contactos")

for i in range(5):
    nombre=input("Ingrese el nombre del nuevo contacto")
    agenda[nombre]={
        "telefono":input("Ingrese el telefono del contacto"),
        "direccion":input("Ingrese la direccion del contacto"),
        "email":input("Ingrese el email del contacto"),
    }

print(agenda)

#COMPRESION DE LISTAS

# Una lista con el cuadrado de cada numero
numeros = [1, 2, 3, 4, 5]
cuadrados = [x**2 for x in numeros]
print(cuadrados)

# Lista de numeros pares
numeros = range(10+1)
pares = [x for x in numeros if x % 2 == 0]
print(pares)

# Lista saludando a cada nombre
nombres = ['Ana', 'Jerónimo', 'Carlos']
saludando = [f'Hola {nombre}' for nombre in nombres]
print(saludando)