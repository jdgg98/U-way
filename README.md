
# U-way

U-way es una aplicación que le permite a su usuario conocer, de manera fácil y rápida, tanto los horarios como los puntos de partida y paradas de los autobuses que recorren las rutas externas de la Universidad de Costa Rica. Esta aplicación se desarrolló para el proyecto final del curso IE0117 Programación Bajo Plataformas Abiertas.
## Autor

- Estudiante: Jafet David Gutiérrez Guevara
- Carné: B73558

## Documentación

### Herramientas utilizadas para el desarrollo de la aplicación

Para este proyecto de programación se planteó el desarrollo de una aplicación en Python que realice las siguientes funciones:

- Indicar para cada ruta, los horarios de salida desde la Universidad de Costa Rica y cualquier otro sitio autorizado.
- Mostrar en un mapa las paradas que realizan los autobuses.
- Señalar los puntos de parada establecidos para que suban pasajeros, en los alrededores de la Universidad de Costa Rica.

Para cumplir con dicho propósito, primero se creó una base de datos que almacena la información de todas las rutas de transporte externo. Para ello se optó por utilizar el sistema de gestión de bases de datos conocido como MySQL. La base de datos creada contiene tres tipos de tablas:

- Buses: Esta guarda el nombre de cada ruta y su tarifa, junto con un ID que funciona como primary key, como se muestra en la siguiente figura.

[![buses.png](https://i.postimg.cc/rwGfb160/buses.png)](https://postimg.cc/sMXPGZgs)

- Ruta: En este tipo de tablas se encuentran los horarios de salida de cada ruta. Como ejemplo se puede observar la siguiente figura, que muestra la tabla de la ruta de Grecia.

[![grecia.png](https://i.postimg.cc/9QSyLz0R/grecia.png)](https://postimg.cc/0zY6QkpP)

- Paradas: Estas tablas contienen tres columnas, una con los nombres de todas las paradas que realizan los autobuses y las otras dos con la latitud y longitud de su respectiva parada. A continuación, se muestra la tabla de paradas de Acosta como ejemplo.

[![acosta.png](https://i.postimg.cc/Xq8z59Vy/acosta.png)](https://postimg.cc/bSZgcDSz)

Por otro lado, para el desarrollo de la interfaz gráfica de la aplicación se utilizó Kivy, el framework de Python y de código abierto para desarrollo de aplicaciones móviles. Se implementaron varios de los widgets que trae Kivy, pero cabe destacar la aplicación de MapView, un widget especializado en la reproducción de mapas. MapView toma la latitud y la longitud de un punto, así como el zoom con el que será mostrado y reproduce un mapa que cubre toda la ventana desde el cual fue llamado.

Para el despliegue de mapas a través de MapView es necesario un proveedor y por defecto este es OpenStreetMap, una herramienta para crear y compartir mapas libres y editables de todo el mundo. Por lo tanto, todos los mapas mostrados por la aplicación son generados por esta herramienta. Un ejemplo de estos mapas se puede observar en la siguiente figura.

[![OSM.png](https://i.postimg.cc/85SRQ5vy/OSM.png)](https://postimg.cc/7CKGSqm7)

### Descripción de la aplicación

La pantalla principal muestra 19 botones con los nombres de todas las rutas y un mapa, que el usuario puede mover para observar todos los puntos de la universidad desde los cuales los autobuses salen y en los cuales suben pasajeros.

[![Pantalla-principal-app.png](https://i.postimg.cc/28tGVCvw/Pantalla-principal-app.png)](https://postimg.cc/ppDzSbsh)

Además el usuario puede seleccionar cualquiera de los marcadores, para desplegar un cuadro con las rutas de autobuses que suben pasajeros en ese punto.

[![Pantalla-principal2.png](https://i.postimg.cc/52nP5DX7/Pantalla-principal2.png)](https://postimg.cc/zyHS8tSK)

Cuando el usuario selecciona uno de los botones de la pantalla principal, la aplicación despliega una ventana con la información de la ruta escogida, como se muestra en la siguiente figura.

[![pantalla-secundaria.png](https://i.postimg.cc/mkYjPnxS/pantalla-secundaria.png)](https://postimg.cc/2L5hJ2Sq)

En esta ventana se presenta un cuadro con la tarifa de la ruta junto con sus horarios de salida, además de un mapa con marcadores que señalan los puntos en los cuales los autobuses bajan pasajeros. El usuario también puede desplazar las listas para ver todas las horas de salida, así como mover y ampliar el mapa de la derecha para observar con mayor detalle la ruta. Además se puede seleccionar cualquiera de los puntos para desplegar el nombre de la parada.

En el caso de que el usuario quiera ver la información de otra ruta, solo debe seleccionar el botón en la esquina superior izquierda para cerrar la ventana y volver a la pantalla principal.

### Universidad de Costa Rica 

#### Facultad de Ingeniería

#### Escuela de Ingeniería Eléctrica