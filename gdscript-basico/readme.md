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


```gdscript
extends Node
# revisar documentación en https://docs.godotengine.org/es/4.x/classes/class_randomnumbergenerator.html
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

