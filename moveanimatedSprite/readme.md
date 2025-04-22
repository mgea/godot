# Mover Player con animación propia 

Es un caso muy similar a [moveSprite](../moveSprite) pero cambiando el Sprite por un AnimatedSprite2D.

Pasos: 

### 1  Creamos el player con animación propia

![player](animatedPlayer.png)

### 2 Creamos las animaciones internas

Animaciones propias del nodo ``AnimatedSprite2D``

Se puede usar un spritesheet para cargar de modo más rápido las imágenes de movimiento 

![player](animations.png)



### 3 Activamos los inputs o mapas de entrada (en configuración del proyecto)

Se pueden activas el mapa de entradas por defecto. vamos a mover player con "ui_left", "ui_right", "ui_top", "ui_bottom"

Se pueden crear mapas específicos de entrada (dando un nombre y asociando los inputs) 

### 4 Creamos script del player para movimiento y colisión 

frisk.gd contine dos funciones: 

- get_input() es una función para saber qué dirección toma el personaje mediante un vector. Ese vector se calcula sabiendo qué teclas se han pulsado izda-dcha-up-down y dará 8 direcciones. Se multiplica ese valor por una constante de velocidad (speed) que podemos variar. 

- _physics_process() es una función de los CharacterBody2D que permite calcular cómo debe actuar (movimiento y colisiones). Debemos saber qué tecla se ha pulsado (por ejemplo Input.is_action_just_pressed("ui_right") ) para activar la animación correspondiente. Si se suelta alguna de esas teclas Input.is_action_just_released("soltar_tecla"), se vuelve a posición de reposo ("defaul"). Por ahora imprime en la consola si ha colisionado con algún objeto sólido (StaticObject2D)

   

```
extends CharacterBody2D


const speed = 300.0


func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction*speed
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play("move_dcha")
	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.play("move_izda")
	if Input.is_action_just_pressed("ui_up"):
		$AnimatedSprite2D.play("move_up")
	if Input.is_action_just_pressed("ui_down"):
		$AnimatedSprite2D.play("move_down")
	if Input.is_action_just_released("soltar_tecla"):
		$AnimatedSprite2D.play("default")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	get_input()
	var colision = move_and_collide(velocity * delta)
	# variable colision==true ha colisionado
	if colision:
		print("he chocado con ", colision.get_collider().name)
	else:
		print("")
	# move_and_slide()

```





