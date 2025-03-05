# Definicion de una clase
class Persona:

    def inicializar_persona(self, nombre, apellido):
        # Creamos los atributos de la clase
        self.nombre = nombre
        self.apellido = apellido

    def mostrar_persona(self):
        print(f'''Persona: 
        Nombre: {self.nombre}
        Apellido: {self.apellido}''')

# Creacion de objetos
if __name__ == '__main__':
    # Creacion de un primer objeto
    persona1 = Persona()  # Crea un objeto vacio en memoria
    persona1.inicializar_persona('Layla', 'Acosta')
    persona1.mostrar_persona()
    
    

#CONSTRUCTORES
class Persona:
#  Constructor
    def __init__(self, nombre, apellido):
        # Creamos los atributos de la clase
        self.nombre = nombre
        self.apellido = apellido

    def mostrar_persona(self):
        print(f'''Persona: 
        Nombre: {self.nombre}
        Apellido: {self.apellido}''')


# Creacion de objetos
if __name__ == '__main__':
    # Creacion de un primer objeto
    persona1 = Persona('Layla', 'Acosta')  # Crea un objeto vacio en memoria
    persona1.mostrar_persona()

    # Creamos un segundo objeto
    persona2 = Persona('Ian', 'Sánchez') # Crea un objeto vacio en memoria
    #persona2.inicializar_persona('Ian', 'Sánchez')
    persona2.mostrar_persona()

class Aritmetica:
    # Python solamente toma el ultimo constructor
    # def __init__(self, operando1):
    #     self.operando1 = operando1

    def __init__(self, operando1=None, operando2=None):
        self.operando1 = operando1
        self.operando2 = operando2

    def sumar(self):
        resultado = self.operando1 + self.operando2
        print(f'Resultado suma: {resultado}')

    def restar(self):
        resultado = self.operando1 - self.operando2
        print(f'Resultado resta: {resultado}')

    def multiplicar(self):
        resultado = self.operando1 * self.operando2
        print(f'Resultado multiplicación: {resultado}')

    def dividir(self):
        resultado = self.operando1 / self.operando2
        print(f'Resultado división: {resultado}')


# Programa principal
if __name__ == '__main__':
    print('\n*** Ejemplo Clase Artimética ***')
    aritmetica1 = Aritmetica(5, 7)
    print('Primer objeto')
    aritmetica1.sumar()
    aritmetica1.restar()
    # Segundo objeto
    print('Segundo objeto')
    aritmetica2 = Aritmetica(12, 16)
    print()
    aritmetica2.sumar()
    aritmetica2.restar()
    # Tercer objeto
    print('Tercer objeto')
    aritmetica3 = Aritmetica(7)
    aritmetica3.operando2 = 9
    aritmetica3.sumar()
    # Cuarto objeto
    print('Cuarto objeto')
    aritmetica4 = Aritmetica()
    aritmetica4.operando1 = 2
    aritmetica4.operando2 = 8
    aritmetica4.sumar()
    # Quinto objeto
    print('Quinto objeto')
    aritmetica5 = Aritmetica(operando2=4, operando1=3)
    aritmetica5.sumar()

# Definimos la clase coche
class Coche:

    def __init__(self, marca, modelo, color):
        self.marca = marca # Atributo publico
        self._modelo = modelo # Atributo protegido
        self.__color = color # Atributo privado

    def conducir(self):
        print(f'''Conduciendo el coche:
        Marca: {self.marca}
        Modelo: {self._modelo}
        Color: {self.__color}''')


# Programa principal
if __name__ == '__main__':
    # Creacion de un primer coche
    coche1 = Coche('Toyota', 'Yaris', 'Azul')
    coche1.conducir()
    # No deberiamos acceder a los atributos que no sean publicos
    coche1.marca = 'Toyota 2'
    coche1._modelo = 'Yaris 2'  # Esto no es una buena practica
    coche1.__color = 'Azul 2'  # igoro la modificacion
    coche1._Coche__color = 'Azul 3'  # Es una mala practica
    coche1.conducir()

# Definimos la clase coche
class Coche:

    def __init__(self, marca, modelo, color):
        self._marca = marca # Atributo protegido
        self._modelo = modelo # Atributo protegido
        self._color = color # Atributo protegido

    def conducir(self):
        print(f'''Conduciendo el coche:
        Marca: {self._marca}
        Modelo: {self._modelo}
        Color: {self._color}''')

    def get_marca(self):
        return self._marca

    def set_marca(self, marca):
        self._marca = marca

    def get_modelo(self):
        return self._modelo

    def set_modelo(self, modelo):
        self._modelo = modelo

    def get_color(self):
        return self._color

    def set_color(self, color):
        self._color = color


# Programa principal
if __name__ == '__main__':
    # Creacion de un primer coche
    coche1 = Coche('Toyota', 'Yaris', 'Azul')
    coche1.conducir()
    # No deberiamos acceder a los atributos que no sean publicos
    coche1.set_marca('Toyota 2')
    coche1.set_modelo('Yaris 2')
    coche1.set_color('Azul 2')
    coche1.conducir()

# Definimos la clase coche
class Coche:

    def __init__(self, marca, modelo, color):
        self._marca = marca # Atributo protegido
        self._modelo = modelo # Atributo protegido
        self._color = color # Atributo protegido

    def conducir(self):
        print(f'''Conduciendo el coche:
        Marca: {self._marca}
        Modelo: {self._modelo}
        Color: {self._color}''')

    # def get_marca(self):
    #     return self._marca

    @property # Definir el metodo get de manera mas pythonica
    def marca(self):
        return self._marca

    @marca.setter
    def marca(self, marca):
        self._marca = marca

    @property
    def modelo(self):
        return self._modelo

    @modelo.setter
    def modelo(self, modelo):
        self._modelo = modelo

    @property
    def color(self):
        return self._color

    @color.setter
    def color(self, color):
        self._color = color


# Programa principal
if __name__ == '__main__':
    # Creacion de un primer coche
    coche1 = Coche('Toyota', 'Yaris', 'Azul')
    coche1.conducir()
    # No deberiamos acceder a los atributos que no sean publicos
    coche1.marca = 'Toyota 2'
    coche1.modelo = 'Yaris 2'
    coche1.color = 'Azul 2'
    # Intentar agregar un nuevo atributo
    setattr(coche1, 'nuevo_atributo', 'Valor nuevo atributo')
    coche1.nuevo_atributo2 = 'Valor nuevo atributo 2'
    print(f'Atributos del coche1: {coche1.__dict__}')
    coche1.conducir()
    print(coche1.nuevo_atributo)
    print(f'Nuevo atributo coche1 {coche1.nuevo_atributo2}')
    # Segundo objeto
    coche2 = Coche('Chevrolet', 'Trax', 'Blanco')
    coche2.conducir()
    print(f'Atributos del coche2: {coche2.__dict__}')
    #print(f'Nuevo atributo coche2 {coche2.nuevo_atributo}')
    #print(f'Nuevo atributo coche2 {coche2.nuevo_atributo2}')

class Persona:
    # Atributo clase
    contador_personas = 0

    def __init__(self, nombre, apellido):
        # Incrementamos el valor del atributo de clase
        Persona.contador_personas += 1
        self.id = Persona.contador_personas
        self.nombre = nombre
        self.apellido = apellido

    def mostrar_persona(self):
        print(f'Persona: {self.id}, {self.nombre}, {self.apellido}')

    @staticmethod
    def get_contador_personas_estatico():
        print('Método estático')
        return Persona.contador_personas

    @classmethod
    def get_contador_personas_clase(cls):
        print('Método de clase')
        return cls.contador_personas


if __name__ == '__main__':
    print('*** Ejemplo Contador de Objetos de tipo Persona ***')
    persona1 = Persona('Gerardo', 'Perez')
    persona1.mostrar_persona()

    # Segundo objeto
    persona2 = Persona('Daniel', 'Sanchez')
    persona2.mostrar_persona()

    # Imprimir el valor del contador de objetos de personas
    print(f'Contador objetos Persona: {Persona.contador_personas}')
    print(f'Contador objetos Persona (persona1): {persona1.contador_personas}')
    print(f'Contador objetos Persona (static): {Persona.get_contador_personas_estatico()}')
    print(f'Contador objetos Persona (clase): {Persona.get_contador_personas_clase()}')