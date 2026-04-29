# Point & Click


Ejemplo en itch.io -> https://cmiugr.itch.io/point-and-click


## Creamos un objeto coleccionable 

El objeto coleccionable tiene las señales para saber si el mouse está in / out (cambio de tamaño) con señales 
Además detecta clic dentro de Area2D 
Las variables que empiezan con ``@export`` se pueden añadir desde el Inspector (por ejemplo la textura, el nombre, etc.) 



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

por ejemplo: se almacena "burguer" y se coloca en inventario ``res://assets/burguer.png``




Repositorio de coleccionables. https://pixelrepo.com/collections/free




