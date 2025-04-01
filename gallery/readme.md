
Ejemplo de Galería de imágenes y vídeos


## VIDEOS

Uso de la clase **VideoStreamPlayer** 

https://docs.godotengine.org/es/4.x/classes/class_videostreamplayer.html#class-videostreamplayer

* Deben ser en formato OGV (ver https://docs.godotengine.org/es/4.x/tutorials/animation/playing_videos.html)

* Se pueden convertir con ffmpeg

ejemplo: ffmpeg -i input.mp4 -q:v 6 -q:a 6 output.ogv


#### Cargar un vídeo dinámicamente 

```
$videostreamplayer.set_stream(load("res://video/video1.ogv"))
$videostreamplayer.play()
```




## GALERIA


#### Cargar una imagen dinámicamente 

```
 

  image = Image.load_from_file("res://img/img1.png")
	var texture = ImageTexture.create_from_image(image)
	$sprite2d = texture
```



