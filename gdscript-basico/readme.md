## gdscript-basico 

Ejercicios sencillos sobre sintaxis del lenguaje GDScript y operaciones básicas 

Revisar sintaxis en [GDSCRIPT](https://github.com/mgea/godot/wiki/GDScript)

* Crear variables y hacer operaciones con las mismas
* Usar funciones propias de GDScript (randi)
* Bloques de condicionales
* Crear array/colecciones 

Vamos a usar GDScript Playground: https://gdscript-online.github.io/


#### 1er ejercicio: Sumar dos numeros e imprimir por pantalla 

```gdscript

extends Node
# creamos dos variables y asignamos valor
var x= 3
var y = 6
var resultado = x+y

func _ready():
	print(resultado)

```


#### 2º ejercicio: Concatener dos string e imprimir por pantalla 

```gdscript

extends Node
# creamos dos variables de tipo string (cadena de texto) y asignamos valor

var x= "3"
var y = "6"
var resultado = x+y

func _ready():
	print(resultado)
```


#### 3º ejercicio: Crear un número  aleatorios en un rango


revisar documentación en https://docs.godotengine.org/es/4.x/classes/class_randomnumbergenerator.html

```gdscript
extends Node
# funcion randi_range(inicio, fin) 
var x=  randi_range(1, 6)

func _ready():
	print( x)
```


#### 4º ejercicio: Comparar dos numeros aleatorios y saber cual es mayor


```gdscript
extends Node

var x=  randi_range(1, 6)
var y =  randi_range(1, 6)
var resultado = x+y

func _ready():
	print("x=", x, " y=", y)
	if (x>y):
		print("Gana X")
	if (x<y):
		print("Gana Y")
	if (x==y):
		print("Empate")
```



#### 5º ejercicio: Tipo Array (colección de datos) 

Cómo funcionan los arrays: https://docs.godotengine.org/es/4.x/classes/class_array.html
Tienen funciones propias

```gdscript
extends Node

var colores =  ["amarillo","rojo","azul", "verde", "naranja","rosa" ]
var i =  randi_range(0, 5)

func _ready():
	print (i) 
	print(colores[i])

```


#### 6º ejercicio: Ordenar elementos del array

Cómo funcionan los arrays: https://docs.godotengine.org/es/4.x/classes/class_array.html
Tienen funciones propias: https://docs.godotengine.org/es/4.x/classes/class_array.html#class-array-method-sort

```gdscript
extends Node

var colores =  ["amarillo","rojo","azul", "verde", "naranja","rosa" ]
# Aplicamos funcion de ordenamiento


func _ready():
	colores.sort()
	print(colores)

```


#### 7º ejercicio: Elmiminar elementos del array al azar


```GDscript
extends Node

var colores =  ["amarillo","rojo","azul", "verde", "naranja","rosa" ]

func elimina():
	if colores.size() > 0:
		# METODO randi() % size, 
		# devuelve valor entre 0 y size-1 (modulo)
		var indice = randi() % colores.size()
		var eliminado = colores[indice]
		
		colores.remove_at(indice)
		print("Se ha eliminado: ", eliminado)
	else:
		print("El array ya esta vacio")

func _ready():
	print("Este es el array original ", colores)
	for i in range(3):
		elimina()
	print("Array final: ", colores)

```





