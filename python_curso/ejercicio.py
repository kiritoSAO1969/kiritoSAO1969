import os
import time

class Pelicula:
    def __init__(self, titulo:str, duracion:int, genero:str):
        self.__titulo=titulo
        self.__duracion=duracion
        self.__genero=genero
        
    def __str__(self):
        return f"Pelicula: {self.__titulo}, Duracion: {self.__duracion}, Genero: {self.__genero}"
    
    @property
    def titulo(self):
        return self.__titulo
    @property
    def duracion(self):
        return self.__duracion
    
    @property
    def genero(self):
        return self.__genero
    
    @titulo.setter
    def titulo(self, titulo):
        self.__titulo = titulo
    
    @duracion.setter
    def duracion(self, duracion):
        self.__duracion = duracion
        
    @genero.setter
    def genero(self, genero):
        self.__genero = genero


class CatalogoPeliculas:
    ruta_archivo="Peliculas.txt"
    
    @classmethod
    def agregar_pelicula(cls,Pelicula_agregar):
        with open(cls.ruta_archivo, "a",encoding="utf8") as archivo:
            archivo.write(f'{Pelicula_agregar}' + "\n")
            
    
    @classmethod
    def listar_peliculas(cls):
        with open(cls.ruta_archivo,"r",encoding="utf8") as archivo:
            print(archivo.read())

    @classmethod
    def eliminar(cls):
        os.remove(cls.ruta_archivo)
        
        
variable_salida=0

while variable_salida!=1:
    print("1. Agregar Pelicula")
    print("2. Listar Peliculas")
    print("3. Eliminar Peliculas")
    print("4. Salir")
    opcion=input("Ingrese una opcion: ")
    os.system("cls")

    if opcion=="1":
        titulo=input("Ingrese el Titulo de la Pelicula: ")
        duracion=int(input("Ingrese la Duracion de la Pelicula: "),10)
        genero=input("Ingrese el Genero de la Pelicula: ")
        Pelicula_enviar=Pelicula(titulo,duracion,genero)
        CatalogoPeliculas.agregar_pelicula(Pelicula_enviar)
        print("Pelicula agregada exitosamente")
        time.sleep(2)
        os.system("cls")
    if opcion=="2":
        print("CATALOGO DE PELICULAS")
        CatalogoPeliculas.listar_peliculas()
        time.sleep(5)
        os.system("cls")
    if opcion=="3":
        CatalogoPeliculas.eliminar()
        print("Se ha eliminado el archivo por completo")
        time.sleep(2)
        os.system("cls")
        