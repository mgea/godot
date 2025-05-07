
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


<br>
<br>



## GALERIA IMAGENES 

(actualizado 7 Mayo 2025)


#### Cargar una imagen dinámicamente  (alternativa 1: mejor para exportación)

El mejor modo de cargar una imagen desde código (en gdscript) es de la siguiente forma (con precarga), ya que otras formas dan [problemas al exportar a html] (https://forum.godotengine.org/t/best-practice-for-loading-images-used-in-program/39247)

Si tenemos un nodo sprite2D llamado ``img``, se podría añadir dinámicamente una imagen mediante precarga del siguiente modo y añadirla a un nodo como propiedad de textura

```python
  var image = preload("res://img/img1.png")
  $img.texture = image
```

Eso funciona para cambiar la imagen de un nodo Sprite2D. Si queremos ir cambiando la imagen de ese nodo (como si fuese una galería de imágenes) entre un conjunto de imágenes, deberemos usar una **lista**. La listas es un tipo de variable que almacena un conjunto de datos ordenados, y podemos acceder a cada uno de ellos por su posición (más info en wiki: https://github.com/mgea/godot/wiki/Listas)

> ¿Qué es un array? (video): https://godot.land/godot-gdscript-arrays/

El script que hay que introducir en la escena de la Galería deberia tener:

* una lista/array (usando [ ] ) con todos los enlaces a las imágenes (con todo el camino desde res://) entre comillas y separadas por comas.
  * es recomendable **precargar** todas las imágenes en la lista antes de ser usadas. 
* una variable numerica (indice) para saber cual es la imagen actual
* una variable numerica (total) para saber cuantas imágenes hay en la lista
  
```python
extends Node2D

var image

var indice = 0    # el indice almacena el lugar actual (imagen) de la lista 
var total = 3

var imglist = [
        preload("img/banksy-84.png"),
	preload("img/Banksy-Bethlehem-22.jpg"),
	preload("img/Banskiy-nina-cacheando.jpg")
        ]	
 

```


Cada vez que se pulse un botón (adelante) se debería actualizar la siguiente imagen en el objeto Sprite2D

```python
func _on_next_pressed() -> void:
	indice = indice +1 
	if (indice>=total):
		indice=0                   # para que sea cíclico, cuando llega a última vuelve a primera
	$foto.texture = imglist[indice]    # asigna como textura la imagen precargada en lista
```


Del mismo modo, se haría con el botón hacia atrás. Se recorre en modo inverso las imágenes. 


```python
func _on_next_pressed() -> void:
	indice = indice -1 
	if (indice<0):
		indice=total-1             # para que sea cíclico, vuelve a última imagen
	$foto.texture = imglist[indice]    # asigna como textura la imagen precargada en lista
```


<br>
<br>






