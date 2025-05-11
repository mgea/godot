# FileIO

Codigo del ejemplo: [FileIO](load_json.zip)


En este ejercicio veremos cómo cargar datos desde ficheros y guardar. La forma que vamos a usar es mediante la creación de ficheros JSON (https://docs.godotengine.org/en/stable/classes/class_json.html) 
> Qué es JSON? https://www.hostinger.com/es/tutoriales/que-es-json

> Info: https://github.com/mgea/godot/wiki/JSON

> Editor online de ficheros JSON: https://jsoneditoronline.org/

Vamos a usar el almacenamiento relativo (en la carpeta del juego) por lo que le path del fichero debe ser ``res://``

* Los datos de tipo JSON se almacenan con pares de llave/key : valor.
* Se pueden almacenar en un Dictionary en Godot (que usa sintaxi similar para almacenar datos con esa estructura)


### Loading

Para cargar los datos, usaremos un fichero (.json) y lo cargamos en una variable de tipo Dictionary

* Usamos una variable ``file``de tipo ``FileAccess`` y usamos la opcion lectura: `` file FileAccess.open(nombre, FileAccess.READ) `` 
* Cargamos los datos mediante un "parsing" del fichero JSON al Dictionary  `` JSON.parse_string(file.get_as_text())``
* cerramos fichero ``file.close``


```
extends Control

const PATH : String = "res://"
var filename : String = "datos.json"
var data : Dictionary

func loading(nombre: String) -> void:
	var file: FileAccess
	if FileAccess.file_exists(PATH+nombre):
		print("> cargando fichero...", PATH+nombre)
		file = FileAccess.open(nombre, FileAccess.READ)
		data = JSON.parse_string(file.get_as_text())
	else:
		print("> error nombre de fichero no existe!: " + PATH + nombre)
		

```




### Mostrar datos 

PAra mostrar los datos tenemos que saber cual es la estructura del fichero JSON, en este ejemplo es muy sencilla con dos campos de tipo string. 

Contenido de datos.json
```
{
  "nombre":"juan",
  "puntos":"12"
}
```

Para mostrar los datos sería del siguiente modo:

```
print(data.nombre)
var i = int (data.puntos)  # si lo quiero convertir el string a valor entero
```


### Saving 

Para guardar los datos, si ya los tenemos en la variable ``Dictionary`` (data), es bastante sencillo:

* Usamos una variable ``file``de tipo ``FileAccess`` y usamos la opcion escritura: `` file FileAccess.open(nombre, FileAccess.WRITE) `` 
* Pasamos  los datos del Dicttionary a formato  JSON mediante la función  `` JSON.stringify(data)`` y eso lo guardamos como un String con ``file.store_string(..)``
* cerramos fichero ``file.close``

```
func saving(nombre: String) -> void:
	var file: FileAccess
	file = FileAccess.open(PATH+nombre, FileAccess.WRITE)
	file.store_string(JSON.stringify(data))
	file.close()

```


### Ejemplo: fileIO 

POsee dos paneles: 
* Panel Input: se puede introducir el nombre de un fichero (en un elemento de control ``lineInput`` y al pulsar enter o el botón, se cargan los datos si el fichero existe
* Panel Output: muestra los datos del archivo que se pueden editar, y si se pulsa "save" se guardan nuevamente en fichero (el mismo)




