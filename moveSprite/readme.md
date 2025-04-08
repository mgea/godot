## Mover Sprite 2D (y colisiones) 

info: https://docs.godotengine.org/es/4.x/tutorials/2d/2d_movement.html




## Inputs 

Se deben **activar** las siguientes combinaciones de teclado para mover sprite, em ``Proyecto>Configuración>Mapa de Entrada`` (activar buit-in actions)

![inputs](https://docs.godotengine.org/es/4.x/_images/movement_inputs.webp)


## CharacterBody2D 

El personaje que vamos a mover (player) es de tipo especial: **CharacterBody2D**  que son objetos **físicos** que se pueden **controlar**

Contiene una apariencia (Sprite2D) y un área de colisión (CollisionShape2D) 

![CB2D](https://docs.godot.community/_images/kbscene.webp) 


Comienza con un CharacterBody2D con dos hijos: Sprite2D y CollisionShape2D.

El área de colision de debe definir con una forma (Shape) que se ajuste lo máximo posible como caja envolvente del personaje (círculo, rectángulo) 

info: https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html


## Movimiento 

Hay que crear las siguiente funciones 

```
extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

```


* move_and_slide()






## Colisiones

Los objetos que controlamos (movemos) pueden colisionar con otros objetos de tipo ``StaticBody2D``

Un ``StaticBody2D`` contiene:

- Sprite2D (forma)
- CollisionShape2D (área de colision) 

ref: https://docs.godotengine.org/en/stable/classes/class_staticbody2d.html



 
