# Point & Click

* **Objetivo** Juego sencillo de coger elementos de la pantalla (mediante click del mouse) y guardarlos en un inventario.
* **Ejemplos** Son juegos orientados a público infantil:
  * Masha y el oso - https://cu.game-game.com/208686/
  * Princesas vestir Superheroes  https://cu.game-game.com/190129/
  * Happy Monkey -  https://cu.game-game.com/201741/


* Ejemplo en itch.io -> https://cmiugr.itch.io/point-and-click

* Descargar ejemplo -> [point_click.zip](point_click.zip) 

![](portada.png)



Cada objeto tiene una imagen y un nombre ("moneda", "llave"...) que luego vamos a usar para la lógica del juego. Crearemos: 
* una sola escena que consiste en un objeto coleccionable. Depués podremos instanciar cambiando imagen y nombre 
* Creamos todos los objetos de igual tamaño y el nombre del objeto coincide con el del recurso imagen ("llave" e imagen llave.png)
* cuando se acerca el mouse, su tamaño cambia para saber que es interactivo
* Usamos ``Area2D``para crear la escena "coleccionable" con las señales ``mouse_entered()`` y ``mouse_exited()`` para que cambie de tamaño cuando está el mouse encima (sin pulsar) y ``input_event(..)" para saber que se ha pulsado mouse que llama a una función para "recoger objeto"
* La función "recoger_objeto" lo que hace es quitar elemento de escena con  ``queue_free()`` y añade su nombre a un "inventario" 
 
## Creamos un objeto coleccionable 

* El objeto coleccionable tiene las señales para saber si el mouse está in / out (cambio de tamaño) con señales 
* Además detecta clic dentro de Area2D 
* Las variables que empiezan con ``@export`` se pueden añadir desde el Inspector (por ejemplo la textura, el nombre, etc.) 

```
Coleccionable (Node2D)
 ├── Area2D
 └── ColisionShape
     └── Sprite2D
```


Señales de ``Area2D``: 

* on_area_2d_mouse_entered / on_area_2d_mouse_exited
  Cambia de tamaño cuando se acerca mouse 
* _on_area_2d_input_event(..)
  Comprueba que se ha pulsado el mouse y es el botón izdo, en tal caso se llama a funcion ``recoger_objeto()`` que añade al ``Inventario`` el nombre del objeto y lo elimina de escena con ``queue_free()`` 



```gdscript

extends Node2D


@export var nombre_objeto:String
@export var texture:Texture2D

@export var escala_normal: Vector2 = Vector2(1, 1)
@export var escala_grande: Vector2 = Vector2(1.2, 1.2) # 20% más grande
@export var tiempo_animacion: float = 0.2
@onready var sprite = $Area2D/Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(texture)
	$Area2D/Sprite2D.texture = texture
	$Area2D/Sprite2D.visible = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("dentro")
		if event.button_index == MOUSE_BUTTON_LEFT:
			recoger_objeto()
					

func recoger_objeto():
	print("Has recogido: ", nombre_objeto)
	queue_free() # Elimina el objeto de la escena
	# Añado al inventario que -> Variable global 
	Inventario.items.append(nombre_objeto)

## animación cuando entra ratón
func _on_area_2d_mouse_entered() -> void:
	var tween = create_tween()
	tween.tween_property(self, "scale", escala_grande, tiempo_animacion).set_trans(Tween.TRANS_SINE)
	print("in")

## animación cuando sale ratón
func _on_area_2d_mouse_exited() -> void:
	# Volvemos al tamaño original
	var tween = create_tween()
	tween.tween_property(self, "scale", escala_normal, tiempo_animacion).set_trans(Tween.TRANS_SINE)
	print("out")


```





## Creamos un Inventario (fichero Inventario.gd) como variable global 

* El inventario es un panel que se puede abrir / cerrar con la barra de espacio 
* Cada vez que se coge un objeto, se añade a la lista
* Se añade el nombre del objeto y se visualiza la imagen (que tiene el mismo nombre)
* Se crea como variable global

![](Inventario.png)


EL inventario es simplemente un script global que contiene una lista de elementos 



por ejemplo: se almacena "burguer" y se coloca en inventario ``res://assets/burguer.png``



```
Node2D
 ├── Coleccionable
 ├── Coleccionable
 ├── Coleccionable
 └── CanvasLayer
     ├── Panel 
     └── Label
```

```gdscript
extends Node2D


@onready var ui = $CanvasLayer
var abierto = true

func _ready() -> void:
	pass # Replace with function body.


# Abre el panel de objetos con tecla de espacio
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"): # normalmente ESPACIO
		# conmuta abierto/cerrado	
		abierto = !abierto 
		# muestra o no 
		ui.visible = abierto
	if abierto:
		actualizar_ui()

### actualiza elementos que deben aparecer en inventario cada vez que se abre
func actualizar_ui():
	# elimono los actuales
	var offset_x = 70
	var start_pos = Vector2(20, 20)
	var i=0
	for c in $CanvasLayer/Panel.get_children():
		c.queue_free()
	# pongo los recolectados
	for item in Inventario.items:
		var icon = TextureRect.new()
		icon.texture = load("res://assets/" + item + ".png")
		icon.custom_minimum_size = Vector2(64,64)
		$CanvasLayer/Panel.add_child(icon)
		icon.position = start_pos + Vector2(offset_x * i, 0)
		i += 1


```


Repositorio de coleccionables. https://pixelrepo.com/collections/free




