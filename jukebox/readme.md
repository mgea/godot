
## Jukebox, Audio stream 20025

Stream Audio 
Info: https://docs.godotengine.org/es/4.x/tutorials/audio/index.html

https://docs.godotengine.org/es/4.x/tutorials/audio/audio_buses.html

![buses audio](https://docs.godotengine.org/es/4.x/_images/audio_buses1.webp)

###  Objetivos 

* Crear canales donde dirigir el audio e incorporar efectos 
* Conectar señales de reproducción de audio
  

### AudioStreamPlayer

* Utilizar herramientas como photoshop para segmentar imagen en capas para componer en Godot
* Aplicar movimiento a los nodos
* Para establecer propiedades de otros nodos: se debe usar **get_node()** https://kidscancode.org/godot_recipes/3.x/basics/getting_nodes/



  
![ASP](https://docs.godotengine.org/es/4.x/_images/audio_buses3.webp)


### Activar mediante botones 


Se puede hacer uso de las funciones de un objeto de tipo AudioStreamPlayer usando su nombre con un $ delante. Por ejemplo:
Info: https://docs.godotengine.org/es/4.x/classes/class_audiostreamplayer.html



```
# creamos un botón con nombre bt_music de tipo AudioStreamPlayer

func _on_button_pressed() -> void:
	$bt_music.play()

```

