# Player esquivar 

Un player tiene que pasar por una zona donde hay objetos que se mueven. 

Hay un tiempo limitado (con timer) 

Se pierden vidas cada vez que colisiona 


![](Player-esquivar.png) 


Código -> [Player-esquivar.zip](Player-esquivar.zip)


## Bullet 

Se mueve de izda a derecha hasta que colisiona con pared. Puede tener velocidad aleatoria entre dos valores  

```gdscript

extends CharacterBody2D

@export var speedmin = 30
@export var speedmax = 130
var speed = 0
var direccion = 1
var puede_mover = true
var tiempo = 10
var velocidad_random 


func _ready() -> void:
	speed = randf_range(speedmin, speedmax)
	print (speed)
	

func _physics_process(delta: float) -> void:
  # velocidad según dirección y speed
  velocity.x = direccion * speed
	# puede chocar
	var col = move_and_collide(velocity * delta)

	if col:
		# cambia de dirección
		direccion *= -1
		

	move_and_slide()
```


## Timer

Emite una señal ``_on_timeout`` cada x tiempo que se puede configurar (por ejemplo cada segundo)  

```gdscript
extends Timer
var tiempo = 15

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timeout() -> void:
	print(tiempo)
	tiempo = tiempo - 1 
	$Label.text = "Tiempo restante: "+ str(tiempo)
	if tiempo == 0:
		$Label.text = "Acabado tiempo "
		stop()

```







