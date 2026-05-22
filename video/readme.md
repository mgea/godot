## VIDEO


Ayuda video: https://github.com/mgea/godot/wiki/Video 

Para reproducir video en Godot, el nodo principal que necesitas el nodo  **VideoStreamPlayer** 



### Formato OGV y conversión

El video tiene algunas particularidades de formato y rendimiento: 

* Deben ser en formato OGV (ver https://docs.godotengine.org/es/4.x/tutorials/animation/playing_videos.html)

* Se pueden convertir con ffmpeg

​	ejemplo: ``ffmpeg -i input.mp4 -q:v 6 -q:a 6 output.ogv``



Hay una versión de **ffmpeg online** : https://ffmpeg.wide.video/

- Se suben los video arrastrando a la pantalla

- se pueden ver los subidos con ``ls``

- conversión con calidad 

  ``ffmpeg -i video.mp4 -c:v libtheora -q:v 10 -c:a libvorbis -q:a 10 video.ogv``

  significado: 

​	``-c:v libtheora`` códec de vídeo libtheora 

​	``-q:v 10``   calidad del vídeo =10  calidad alta  (máxima)

​	``-c:a libvorvis``   códec de audio: Vorbis (compatible con OGV)



* Guardar video en local: ``save video.ogv``



### Nodo StreamVideoPlayer

Propiedades: 

* Stream: Donde arrastras tu archivo de video.
* Autoplay: Empieza a reproducir en cuanto el nodo entra a la escena.
* Loop: Reinicia el video automáticamente al terminar.
* Volume DB: Controla el audio integrado del video.
* Expand: Si está activo, puedes estirar el video para que ocupe todo el contenedor.

https://docs.godotengine.org/es/4.x/classes/class_videostreamplayer.html#class-videostreamplayer

#### Cargar un vídeo dinámicamente 

```GDScript
$videostreamplayer.set_stream(load("res://video/video1.ogv"))
$videostreamplayer.play()
```


#### Señales 

Señal de finalización. Es muy común querer saltar a otra escena cuando el video termina (por ejemplo, después de la intro). Usa la señal finished:

```GDScript
func _on_video_stream_player_finished():
	get_tree().change_scene_to_file("res://MenuPrincipal.tscn")
```









