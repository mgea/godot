## Bansky

Ejemplo para pasar de una escena a otra usando Botón (control) 

* [Botones](https://github.com/mgea/godot/wiki/Button) - al pulsar se pasa de una escena a otras

* [Escenas](https://github.com/mgea/godot/wiki/Escenas) - Las escenas se pueden  





Una vez creado el botón, asociado un script y "conectado" con la señal ``[->pressed`` se debría incluir el siguiente código

```
extends Button


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Banksy-bethlehem.tscn")

```

