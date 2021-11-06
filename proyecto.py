# -*- coding: utf-8 -*- #Se especifíca que Python haga la interpretación con el formato de codificación utf-8.

#Se importan los módulos requeridos para el proyecto.

import mysql.connector
import kivy
kivy.require('1.9.2')

from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.popup import Popup
from kivy.properties import ListProperty
from kivy.uix.listview import ListItemButton

#Se accede a la base de datos del proyecto.

mydb = mysql.connector.connect(
  host="localhost",
  user="jgutierrezg",
  passwd="AO7t8",
  database="proyecto",
)
mycursor = mydb.cursor()

#get_horario: Función que recibe dos listas, myresult contiene una lista de horarios y lista esta vacía. La función convierte en string los datos de la primera y después los guarda en lista.

def get_horario(myresult, lista):
    for datos in myresult:
        datos = str(datos)
        #Esta parte de la función decodifica el string y lo vuelve a codificar en utf-8.
        datos = datos.decode('unicode_escape')
        datos = datos.encode('utf-8')
        #Esta parte de la función toma la parte del string que necesita devolver. Sin ella los strings devueltos tendrían esta forma: (u'05:30 am',)
        length = len(datos)
        startLoc = 3
        endLoc = length - 3
        datos = datos[startLoc: endLoc]
        lista.append(datos)
    return lista

#get_col: Función que recibe el nombre de una tabla (tabla) y un número que representa una columna de esa tabla (index)

def get_col(tabla, index):
    tablax = mydb.cursor()
    tablax.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'"+tabla+"'")
    my_tablax = tablax.fetchall()
    colx = my_tablax[index]
    colx = str(colx)
    colx = colx.decode('unicode_escape')
    colx = colx.encode('utf-8')
    length = len(colx)
    startLoc = 3
    endLoc = length - 3
    colx = colx[startLoc: endLoc]
    return colx

#get_tarifa: Función que recibe el id de la ruta y devuelve su tarifa.

def get_tarifa(id):
  mycursor.execute('SELECT Tarifa FROM buses WHERE ID = '+str(id))
  myresult = mycursor.fetchall()
  myresult = str(myresult)
  myresult = myresult.decode('unicode_escape')
  myresult = myresult.encode('utf-8')
  length = len(myresult)
  startLoc = 2
  endLoc = length - 3
  myresult = myresult[startLoc: endLoc]
  return myresult

#get_nombre: Función que recibe el id de la ruta y devuelve su nombre.

def get_nombre(id):
  mycursor.execute('SELECT Ruta FROM buses WHERE ID = '+str(id))
  myresult = mycursor.fetchall()
  myresult = str(myresult)
  myresult = myresult.decode('unicode_escape')
  myresult = myresult.encode('utf-8')
  length = len(myresult)
  startLoc = 4
  endLoc = length - 4
  myresult = myresult[startLoc: endLoc]
  return myresult

#get_stops: función que recibe el nombre de una ruta y devuelve una lista con el nombre de todas sus paradas.

def get_stops(nombre):
    if((nombre!="acosta") & (nombre!="alajuela")): #Esta parte fue hecha para evitar un error al tratar de acceder a alguna ruta que no fuera acosta o alajuela ya que son las únicas con una tabla de paradas en la base de datos.
        nombre = "alajuela"

    mycursor.execute('SELECT Parada FROM `paradas '+nombre+'` `utf8`')
    myresult = mycursor.fetchall()
    stops = []
    con = 0

    for datos in myresult:
        datos = str(datos)
        datos = datos.decode('unicode_escape')
        datos = datos.encode('utf-8')
        length = len(datos)
        startLoc = 3
        endLoc = length - 3
        datos = datos[startLoc: endLoc]
        stops.append(datos)
        con += 1

    for i in range(16 - con):
        stops.append("j")

    return stops

#get_lat: función que recibe el nombre de una ruta y devuelve una lista con las latitudes de todas sus paradas.

def get_lat(nombre):
    if ((nombre != "acosta") & (nombre != "alajuela")): #Esta parte fue hecha para evitar un error al tratar de acceder a alguna ruta que no fuera acosta o alajuela ya que son las únicas con una tabla de paradas en la base de datos.
        nombre = "alajuela"

    mycursor.execute('SELECT lat FROM `paradas '+nombre+'` `utf8`')
    myresult = mycursor.fetchall()
    lat = []
    con = 0

    for datos in myresult:
        datos = str(datos)
        datos = datos.decode('unicode_escape')
        datos = datos.encode('utf-8')
        length = len(datos)
        startLoc = 1
        endLoc = length - 2
        datos = datos[startLoc: endLoc]
        lat.append(datos)
        con += 1

    for i in range(16 - con):
        lat.append("0")

    return lat

#get_lon: función que recibe el nombre de una ruta y devuelve una lista con las longitudes de todas sus paradas.

def get_lon(nombre):
    if ((nombre != "acosta") & (nombre != "alajuela")): #Esta parte fue hecha para evitar un error al tratar de acceder a alguna ruta que no fuera acosta o alajuela ya que son las únicas con una tabla de paradas en la base de datos.
        nombre = "alajuela"

    mycursor.execute('SELECT lon FROM `paradas '+nombre+'` `utf8`')
    myresult = mycursor.fetchall()
    lon = []
    con = 0

    for datos in myresult:
        datos = str(datos)
        datos = datos.decode('unicode_escape')
        datos = datos.encode('utf-8')
        length = len(datos)
        startLoc = 1
        endLoc = length - 2
        datos = datos[startLoc: endLoc]
        lon.append(datos)
        con += 1

    for i in range(16 - con):
        lon.append("0")

    return lon

#Se crea la clase principal, en la cual se encuentra la función que accede a la información de cada ruta.

class U_way(BoxLayout):

    #open_ruta: función que recibe el id de una ruta y abre una ventana con su información.

    def open_ruta(self, id):
        class RutaPopup(Popup):

            #Se guardan los nombres de la ruta seleccionada y su tarifa en dos variables a través de las funciones get_nombre y get_tarifa.

            nombre = get_nombre(id)
            tarifa = get_tarifa(id)

            #Se guarda la lista con los nombres de las paradas de la ruta seleccionada en stops.
            stops = get_stops(nombre)
            # Se guardan las listas con las coordenadas (latitud y longitud) de las paradas de la ruta seleccionada en lat y lon.
            lat = get_lat(nombre)
            lon = get_lon(nombre)

            #La clase Horarios_List_Button define las listas de horarios que serán mostradas para cada ruta en los ListViews del archivo main.kv

            class Horarios_List_Button(ListItemButton):
                pass

            #Se obtiene la lista de la primera columna de la tabla de salidas

            col = get_col(nombre, 0)

            lista_salidas = []
            lista_ucr = []

            mycursor.execute('select `'+col+'` from `'+nombre+'` `utf8`')
            myresult = mycursor.fetchall()

            lista_salidas = get_horario(myresult, lista_salidas)

            output = [col]+lista_salidas

            mycursor.execute('select `Salidas UCR` from `'+nombre+'` `utf8`')
            myresult = mycursor.fetchall()

            lista_ucr = get_horario(myresult, lista_ucr)

            #Si la ruta tiene más de dos horarios estos se guardan en output3 y output4 para que sean mostradas por los ListViews del segundo BoxLayout de main.kv

            output3 = []
            output4 = []

            if ((id == 16) | (id == 17)):
                col3 = get_col(nombre, 2)
                lista3 = []
                lista3 = get_horario(myresult, lista3)
                output3 = [col3]+lista3

                col4 = get_col(nombre, 3)
                lista4 = []
                lista4 = get_horario(myresult, lista4)
                output4 = [col4] + lista4

            if(id == 13):
                col3 = get_col(nombre, 2)
                lista3 = []
                lista3 = get_horario(myresult, lista3)
                output3 = [col3] + lista3

        ruta = RutaPopup()
        ruta.open()

#Se crea la clase MainApp

class MainApp(App):
  title = "U-way"

  def build(self):
    return U_way()

if __name__ == "__main__":
  MainApp().run()