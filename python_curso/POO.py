from abc import ABC, abstractmethod

#HERENCIA
class Animal:
    def comer(self):
        print('Como muchas veces el día')

    def dormir(self):
        print('Duermo muchas horas')

class Perro(Animal):
    def hacer_sonido(self):
        print('Puedo ladrar')

# Programa principal
print('*** Ejemplo de Herencia en Python ***')
print('Clase Padre, soy un Animal')
animal1 = Animal()
animal1.comer()
animal1.dormir()

print('\nClase Hija, soy un Perro')
perro1 = Perro()
perro1.comer()
perro1.dormir()
perro1.hacer_sonido()

#SOBREESCRITURA
class Animal:
    def comer(self):
        print('Como muchas veces el día')

    def dormir(self):
        print('Duermo muchas horas')

class Perro(Animal):
    def hacer_sonido(self):
        print('Puedo ladrar')

    # Sobreescritura del metodo dormir
    def dormir(self):
        print('Duermo 15 horas al día')

# Programa principal
print('*** Ejemplo de Herencia en Python ***')
print('Clase Padre, soy un Animal')
animal1 = Animal()
animal1.comer()
animal1.dormir()

print('\nClase Hija, soy un Perro')
perro1 = Perro()
perro1.comer()
perro1.dormir()  # Se llama el metodo sobreescrito de la clase hija
perro1.hacer_sonido()

#POLIMORFISMO
# Polimorfismo
class Animal:
    def hacer_sonido(self):
        print('Hago un pitido')

class Perro(Animal):
    # pass
    def hacer_sonido(self):
        print('Puedo ladrar')

class Gato(Animal):
    def hacer_sonido(self):
        print('Puedo maullar')

print('*** Ejemplo Polimorfismo ***')
print('Clase Padre Animal: ')
animal1 = Animal()
animal1.hacer_sonido()
# Definimos un objeto de la clase Perro
print('\nClase Hija Perro: ')
perro1 = Perro()
perro1.hacer_sonido()  # Polimorfismo
# Definimos un objeto de la clase Gato
print('\nClase Hija Gato: ')
gato1 = Gato()
gato1.hacer_sonido()


#DUCTYPING
# Polimorfismo
class Animal:
    def hacer_sonido(self):
        print('Hago un pitido')

class Perro(Animal):
    # pass
    def hacer_sonido(self):
        print('Puedo ladrar')

class Gato(Animal):
    def hacer_sonido(self):
        print('Puedo maullar')

# Funcion polimorfica
def hacer_sonido_animal(animal):  # duck typing
    animal.hacer_sonido()

print('*** Ejemplo Polimorfismo ***')
print('Clase Padre Animal: ')
animal1 = Animal()
hacer_sonido_animal(animal1)
# Definimos un objeto de la clase Perro
print('\nClase Hija Perro: ')
perro1 = Perro()
hacer_sonido_animal(perro1)
# Definimos un objeto de la clase Gato
print('\nClase Hija Gato: ')
gato1 = Gato()
hacer_sonido_animal(gato1)


#HERENCIA MULTIPLE
class FiguraGeometrica:
    def __init__(self, ancho, alto):
        self.ancho = ancho
        self.alto = alto
class Color:
    def __init__(self, color):
        self.color = color

class Cuadrado(FiguraGeometrica, Color):
    def __init__(self, lado, color):
        # super().__init__(lado)
        FiguraGeometrica.__init__(self, lado, lado)
        Color.__init__(self, color)

    def calcular_area(self):
        return self.alto * self.ancho
    
cuadrado1 = Cuadrado(5, 'rojo')
print(f'Cálculo área cuadrado: {cuadrado1.calcular_area()}')

#CLASE ABSTRACTA
class FiguraGeometrica(ABC):
    def __init__(self, ancho, alto):
        if self._validar_valor(ancho):
            self._ancho = ancho
        else:
            self._ancho = 0
            print(f'Valor erroneo ancho: {ancho}')
        if self._validar_valor(alto):
            self._alto = alto
        else:
            self._alto = 0
            print(f'Valor erroneo alto: {alto}')

    @property
    def ancho(self):
        return self._ancho

    @ancho.setter
    def ancho(self, ancho):
        if self._validar_valor(ancho):
            self._ancho = ancho
        else:
            print(f'Valor erroneo ancho: {ancho}')

    @property
    def alto(self):
        return self._alto

    @alto.setter
    def alto(self, alto):
        if self._validar_valor(alto):
            self._alto = alto
        else:
            print(f'Valor erroneo alto: {alto}')

    @abstractmethod
    def calcular_area(self):
        pass

    def __str__(self):
        return f'FiguraGeometrica [Ancho: {self._ancho}, Alto: {self.alto} ]'

    def _validar_valor(self, valor):
        return True if 0 < valor < 10 else False

class Rectangulo(FiguraGeometrica, Color):
    def __init__(self, ancho, alto, color):
        FiguraGeometrica.__init__(self, ancho, alto)
        Color.__init__(self, color)

    def calcular_area(self):
        return self.alto * self.ancho

    def __str__(self):
        return f'{FiguraGeometrica.__str__(self)} {Color.__str__(self)}'
    
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def __add__(self, otro):
        return f'{self.nombre} {otro.nombre}'

    def __sub__(self, otro):
        return self.edad - otro.edad


persona1 = Persona('Juan', 28)
persona2 = Persona('Carlos', 20)
print(persona1 + persona2)
print(persona1 - persona2)

# obj1 + obj2
# obj1.__add__(obj2)