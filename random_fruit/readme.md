# Ejemplo random_fruit 


Ver ejemplo en : https://cmiugr.itch.io/random-fruits


Este ejemplo permite mostrar imágenes aleatorias de un conjunto de frutas. Para seleccionar la siguiente a mostrar se genera un número aleatorio para seleccionar de la lista 


Disponemos una lista de imagenes de fruta 


```
var frutas = [
	preload("res://uva.png"),
	preload("res://pina.png"),
	preload("res://naranja.png"),
	preload("res://aguacate.png"),
	preload("res://naranja.png"),
	preload("res://sandia.png")
]
```



## Generación de número aleatorio y animación con tween

Info añadir nuevo botón https://docs.godotengine.org/en/stable/classes/class_button.html

Info tween:  https://docs.godotengine.org/en/stable/classes/class_tween.html



En este ejemplo hemos usado la función para generar números aleatorios: 
[html](https://docs.godotengine.org/en/4.3/tutorials/math/random_number_generation.html)


Si queremos obtener un valor aleatorio (número real) normalizado (entre 0 y 1) usaremos 

```
var f = randf()
print(f)
```


La que usamos es randi() que permite genera números enteros aleatorios. Si se quiere limitar a un rango, se deb usar el operador ``%`` que permite indicar hasta un máximo 

Si queremos generar números aleatorios entre 4 posibilidades (0, 1,2,3) sería con: 
```
var i = randi() % 4
print(i)
```

También podemos usar la funcion de numero aleatorio en un rango ``randi_range`` con dos argumentos que delimitan el rango 

```
var i = randi_range(-3,3)
print(i)
```


En el ejemplo, hacemos lo siguiente: 

```

func _on_random_pressed() -> void:
	# escogemos fruta aleatoria
	# aleatorio entre 0...5 (6 tipos de frutas) 
	var n = randi() % 6 
	$show.texture_normal = frutas[n]
	print (n)
```




## Creación de nuevos nodos 

Podemos crear nodos nuevos desde script en gd, en este caso los usaremos para mostrar un botón con imágenes con una animación (tween)


```
  ...

  var button = Button.new()
	# lo añadimos a la lista 
	add_child(button) 
	button.icon  = frutas[n]  	# copiamos el icono 	

  # Posicion inicial  
  button.position= Vector2(x,-100) # colocamos fuera de pantalla 
	if x>1000:
		x=0
	
	# animación con tween 
	var t = create_tween()
	t.tween_property(button, "position",  Vector2(x,0), 0.5)
	x +=120
	print (button)
	
```










