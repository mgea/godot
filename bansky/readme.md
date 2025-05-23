## Bansky Sequence

![](https://github.com/mgea/godot/blob/main/bansky/bansky_cover.png)

Se crean varias escenas diferentes con una imagen de Baksy y un botón para pasar a la siguiente escena.




Ejemplo para pasar de una escena a otra usando Botón (control) 

* [Botones](https://github.com/mgea/godot/wiki/Button) - al pulsar se pasa de una escena a otras

* [Escenas](https://github.com/mgea/godot/wiki/Escenas) - Las escenas se pueden organizar para que se pueda pasar de una a otra  





Una vez creado el botón, asociado un script y "conectado" con la señal ``[->pressed`` se debría incluir el siguiente código

```
extends Button


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Banksy-bethlehem.tscn")

```

..donde ``"res://Banksy-bethlehem.tscn"`` es la Ruta dentro de la carpeta del proyecto de Godot para acceder a la escena con ese nombre.

Godot permite que se pueda manipular desde el **Inspector** el nombre de la escena a la que se va a saltar usando la posibilidad de **exportar propiedades** 

https://docs.godotengine.org/es/4.x/tutorials/scripting/gdscript/gdscript_exports.html



```
extends Button

@export var siguiente_escena: String

func _on_pressed() -> void:
	get_tree().change_scene_to_file(siguiente_escena)

```

De ese modo, se puede poner el nombre de la siguiente escena en la ventana (dock) del inspector 



Por último, se pueden "reutilizar" escenas y comportamientos definidos en otros proyectos. Simplemente hay que "añadirlos" al proyecto y ajustar sus rutas para encontrar escenas y scripts. 

### Publicación en itch.io

https://cmiugr.itch.io/bansky

