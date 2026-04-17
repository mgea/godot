## gdscript-basico 

Ejercicios sencillos sobre sintaxis del lenguaje GDScript y operaciones básicas 

Revisar sintaxis en [GDSCRIPT](https://github.com/mgea/godot/wiki/GDScript)

* Crear variables y hacer operaciones con las mismas
* Usar funciones propias de GDScript (randi)
* Bloques de condicionales: if
* Los bucles (loops) que permiten repetir un bloque de código varias veces sin tener que escribirlo una y otra vez: while, for
* Crear array/colecciones 

Vamos a usar GDScript Playground: https://gdscript-online.github.io/


## Ejercicios con NUMEROS


#### 1 ejercicio: Sumar dos numeros e imprimir por pantalla 

```gdscript

extends Node
# creamos dos variables y asignamos valor
var x= 3
var y = 6
var resultado = x+y

func _ready():
	print(resultado)

```



#### 2 ejercicio: Crear un Contador 

```gdscript

extends Node
# creamos una variable que le vamos incrementando el valor
var x= 3

func _ready():
	x = x+1
	print(x)


```




#### 3 ejercicio: Crear un Contador que llega hasta un valor

```gdscript
extends Node
var x= 1
var valor_final = 10
func _ready():
	# Usamos operador While (que es un bucle hasta que se cumpla condición)
	while x <  10:
		print(x)
		x += 1
```



#### 4 jercicio: Sucesión de Fibonnaci 

```gdscript
extends Node

func _ready():
	var f1 = 0  # primer valor
	var f2 = 1  # siguiente valor
	# Usamos operador FOR (que es un bucle en un rango de valores)
	for i in range(1,10):
		print(f1)
		var nuevovalor = f1 + f2 # siguiente es la suma de anteriores 
		f1 = f2 # paso el valor 
		f2 = nuevovalor # actualizo segundo valor


```


#### 5 ejercicio: Crear un número  aleatorios en un rango


revisar documentación en https://docs.godotengine.org/es/4.x/classes/class_randomnumbergenerator.html

```gdscript
extends Node
# funcion randi_range(inicio, fin) 
var x=  randi_range(1, 6)

func _ready():
	print( x)
```


#### 6 ejercicio: Comparar dos numeros aleatorios y saber cual es mayor


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




## Ejercicios con STRINGS

#### 1 ejercicio: Concatener dos string e imprimir por pantalla 

```gdscript

extends Node
# creamos dos variables de tipo string (cadena de texto) y asignamos valor

var x= "3"
var y = "6"
var resultado = x+y

func _ready():
	print(resultado)
```


#### 2 ejercicio: operaciones propias de string  

```gdscript
extends Node
var palabra = "Godot"

func _ready():
	print(palabra)
	# función propia de un objeto string
	print("numero de caracteres:")
	print(palabra.length())
```



#### 3 ejercicio: Tipo Array (colección de datos) 

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


#### 4 ejercicio: Ordenar elementos del array

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


#### 5 ejercicio: Elmiminar elementos del array al azar


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





