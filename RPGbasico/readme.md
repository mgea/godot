Creación de un Mundo con 

- Player (``CharacterBody2D``)que no tiene gravedad.

- Objetos (``StaticBody`` y ``RigidBody``)

- NPC (Non-playable character)  

- Creación del Mundo (Niveles) con ``TilemapLayer`` 


![game](game_player_npc_tilemap.png)

* Descargar EJEMPLO: [RPGbasico.zip](RPGbasico.zip)

* Ver en Ith.io -> https://cmiugr.itch.io/rpg-basico



## Creación del mundo con TilemapLayer

###  Tilemap 

- ¿Qué es un Tilemap? [Tilemap](https://github.com/mgea/godot/wiki/Tilemap)
- Recursos de Tilemap Sheets: https://itch.io/game-assets/free/tag-tilemap
- Ejemplo:
  
  ![cainos resources](https://img.itch.zone/aW1nLzU5MDY2MTIucG5n/315x250%23c/NEN0HY.png)
  - Link: https://cainos.itch.io/pixel-art-platformer-village-props

## Configurar TileMapLayer

Creamos un nodo de tipo ``Node2D>TileMapLayer`` y en la propiedad ``TileSet`` indicamos que vamos a crear uno nuevo. 

Una vez creado, nos **aparece en la ventana inferior dos nuevos paneles**: 


### Panel TileSet

EN este panel definimos los grupos (atlas) de bloques y sus propiedades. Pasos: 

* **Configuración de Textura (Setup)** Al importar la imagen se define cómo se divide para crear el _Atlas_: Seleccionas la imagen y Godot identifica los cuadros automáticamente. Se puede elegir qué partes de la imagen son tiles usables y cuáles ignorar (como espacios vacíos).

![TilesetPanel](Tileset_panel.png)


* **Capas de Física** (Physics Layers). Se añade información de los bloques que responden a una colisión y se almacena en una capa (layer)

![capa fisica](tileset_physicLayer.png)


### Panel TileMap
Es un sistema de "dibujo", Seleccionamos uno o más bloques y los vamos "pintando" en el escenario. 


## Creación de Objetos 

Se pueden crear con 

* ``StaticBody`` (El Objeto es Inmóvil) No se mueven y no le afecta la física.
  
* ``RigidBody`` (El Objeto con Masa) que se puede desplazar si lo empujas.
  * Hay que ajustar su peso y gravedad. Además pueden ser movidos aplicandoles una fuerza

## Creación de NPC 

Los NPC son otros personajes que no mueves directamente sino que hay que aplicar alguna lógica de programación. 


## Creación de player  

El player es el personaje que se mueve y es el que se encarga de las colisiones. Añadiendo la función ``physics_process`` se puede controlar qué hacer en casos de colisión (usar en lugar de __process_) 


```gdscript
#player
extends CharacterBody2D


const speed = 500.0

# función para saber dirección del player y mostrar animación 
func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction*speed

	# reproducir animación
	$AnimatedSprite2D.play("default") 
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("move_dcha")
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("move_izda")
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("move_up")
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.play("move_down")
	

# dentro de script de player.gd, control de movimiento y colisiones 
func _physics_process(delta: float) -> void:
	get_input()   # dirección

	# función de mover con coluisiones en lugar de move_and_slide()
	var colision = move_and_collide(velocity * delta)

	# variable colision==true ha colisionado
	if colision:
		# Obtenemos el cuerpo real con el que chocamos
		var cuerpo = colision.get_collider()
		print("He chocado con: ", cuerpo.name)
		# Si el objeto es un RigidBody, le aplicamos un impulso
		if cuerpo is RigidBody2D:
			# Obtenemos el cuerpo real con el que chocamos
			# Calculamos la dirección del empuje (desde el jugador hacia el objeto)
			# El -colision.get_normal() nos da la dirección del impacto
			print("empujón")
			cuerpo.apply_central_impulse(-colision.get_normal() * 50.0)
		else:
		# otros objetos....	
		


```


### Recursos

* Tutorial crear player -> https://forum.godotengine.org/t/creacion-de-personajes-2d-tutorial/68077
* Tutorial crear personaje NPC
* Qué es un RPG https://github.com/mgea/godot/wiki/RPG
  
  

