
# Ejemplo de Galería de imágenes y vídeos

Ayuda video: https://github.com/mgea/godot/wiki/Video 


## VIDEOS




Uso de la clase **VideoStreamPlayer** 

https://docs.godotengine.org/es/4.x/classes/class_videostreamplayer.html#class-videostreamplayer

* Deben ser en formato OGV (ver https://docs.godotengine.org/es/4.x/tutorials/animation/playing_videos.html)

* Se pueden convertir con ffmpeg

ejemplo: ffmpeg -i input.mp4 -q:v 6 -q:a 6 output.ogv


#### Cargar un vídeo dinámicamente 

```
$videostreamplayer.set_stream(load("res://video/video1.ogv"))
$videostreamplayer.play()
```




## GALERIA



#### Cargar una imagen dinámicamente  (alternativa 1)

```python
  image = Image.load_from_file("res://img/img1.png")
	var texture = ImageTexture.create_from_image(image)
	$sprite2d = texture
```


Es importante conocer cómo funcionan las listas (para almacenar nombres de imágenes) https://github.com/mgea/godot/wiki/Listas 



El script que hay que introducir en la escena de la Galería deberia tener: 
* una lista (usando [ ] ) con todos los enlaces a las imágenes (con todo el camino desde res://) entre comillas y separadas por comas.
* una variable numerica (indice) para saber cual es la imagen actual
* una variable numerica (total) para saber cuantas imágenes hay en la lista
  
```python
extends Node2D

var image

var indice = 0
var total = 4

var imglist = [ "res://img/banksy-84.png",
                "res://img/Banksy-Bethlehem-22.jpg",
		"res://img/Banskiy-nina-cacheando.jpg",
		"res://img/Bansky-Jobs.jpg" ]
 

```

Cada vez que se pulse un botón (adelante) se debería actualizar la siguiente imagen en el objeto Sprite2D

```python
func _on_next_pressed() -> void:
	indice = indice +1 
	if (indice>=total_img):
		indice=0           # para que sea cíclico
	image = Image.load_from_file(imglist[indice])
	$foto.texture = texture
	$Label.set_text (str(indice))
```

Cada vez que se pulse un botón (atrás) se debería actualizar la  imagen anterior en el objeto Sprite2D


```python
func _on_prev_pressed() -> void:
	indice = indice -1 
	if (indice<0):
		indice=total_img-1 # para que sea cíclico
	image = Image.load_from_file(imglist[indice])
	var texture = ImageTexture.create_from_image(image)
	$foto.texture = texture
	$Label.set_text (str(indice))
```

----


#### Cargar una imagen dinámicamente con preload (alternativa 2) 

Un problema (del modo anterior) es que no funciona bien al **exportar a html**
Info: https://forum.godotengine.org/t/best-practice-for-loading-images-used-in-program/39247

Como alternativa, se pueden **precargar** las imágenes en la lista antes de ser usadas. 




```python

var imglist = [
	preload("img/banksy-84.png"),
	preload("img/Banksy-Bethlehem-22.jpg"),
	preload("img/Banskiy-nina-cacheando.jpg")
	]


func _on_next_pressed() -> void:
	indice = indice +1 
	if (indice>=total_img):
		indice=0           # para que sea cíclico
	$foto.texture = imglist[indice]    ## asigna como textura la imagen precargada en lista



```



