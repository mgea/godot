## Proyecto 01 - Hello World  


Basado en: https://docs.godotengine.org/es/4.x/getting_started/step_by_step/scripting_first_script.html

![Hola mundo](https://docs.godotengine.org/es/4.x/_images/scripting_first_script_rotating_godot.gif)

###  Objetivos 

* Comprender la jerarquía de objetos
* Crear un objeto con animación 2D
* Asociar un script a un objeto
* Usar fuciones de consola


### Animación de un Sprite 2D 

Un Sprite 2D con animación es un Node2D > AnimatedSprite > Sprite2D
### Pasos 

https://docs.godotengine.org/es/4.x/getting_started/step_by_step/scripting_first_script.html 


* Creación del Nodo animado

![AnimatedSprite2D](https://docs.godotengine.org/es/4.x/_images/scripting_first_script_add_sprite_node.webp)



* Asociar (**attach**) un script

![attach script](https://docs.godotengine.org/es/4.x/_images/scripting_first_script_attach_script.webp) 


* Escribir script (usando función de inicio por defecto)



```
func _init():
	print("Hello, world!")
```





