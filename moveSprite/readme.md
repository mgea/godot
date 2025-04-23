## Mover Sprite 2D (y colisiones) 

info: https://docs.godotengine.org/es/4.x/tutorials/2d/2d_movement.html
resumen de nodos necesarios: 

Un Sprite que podemos mover con el teclado/ratón normalmente es un **player** qye se diferencia de los **NPC** ("Non-Player Character" o "Personaje No Jugable") que son los personajes de un videojuego que no son controlados por el jugador. 


### Player:
```
* CharacterBody2D
  * Sprite2D
  * CollisionShape2D
```




### NPC (Non Playable Character)

```
* StaticBody2D
  * Sprite2D
  * CollisionShape2D
```

Para ello, debemos activar lo siguiente:

## Inputs 

Se deben **activar** las siguientes combinaciones de teclado para mover sprite, em ``Proyecto>Configuración>Mapa de Entrada`` (activar buit-in actions)

![inputs](https://docs.godotengine.org/es/4.x/_images/movement_inputs.webp)


Esas acciones por defecto permiten controlar personajes mediante la función **Input**, por ejemplo:

```
if Input.is_action_just_pressed("ui_right"):
	print("ir a la derecha")
```


Estos pesonajes controlables se crean con otro tipo de nodo:

## CharacterBody2D 

El personaje que vamos a mover (player) es de tipo especial: **CharacterBody2D**  que son objetos **físicos** que se pueden **controlar**

Contiene una apariencia (Sprite2D) y un área de colisión (CollisionShape2D) 

![CB2D](https://docs.godot.community/_images/kbscene.webp) 


Comienza con un CharacterBody2D con dos hijos: Sprite2D y CollisionShape2D.

El área de colision de debe definir con una forma (Shape) que se ajuste lo máximo posible como caja envolvente del personaje (círculo, rectángulo) 

info: https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html


## Movimiento 

Hay que crear las siguiente funciones porque se debe usar la función **_physics_process** para que tenga en cuenta propiedades físicas.

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


* move_and_slide() es una función de un ``CharacterBody2D`` que permite mover el objeto teniendo en cuenta las colisiones (zonas prohibidas) 




## Objetos de Colisiones

Los objetos que controlamos (movemos) pueden colisionar con otros objetos de tipo **``StaticBody2D``**

Un ``StaticBody2D`` contiene:

- Sprite2D (forma)
- CollisionShape2D (área de colision) 

ref: https://docs.godotengine.org/en/stable/classes/class_staticbody2d.html



## move_and_collide Vs move_and_slide


La función ``move_and_collide()``  devuelve un objeto de tipo ``KinematicCollision2D`` que se pueden usar en código para saber con quién se ha colisionado.

```
# Using move_and_collide.
var collision = move_and_collide(velocity * delta)
if collision:
	print("I collided with ", collision.get_collider().name)
```

 
