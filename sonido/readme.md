# Sonido 

El sonido se puede usar como fondo (acompañando a la escena) o también para efectos como por ejemplo la pulsación de un botón. 


Vamos a usar un ``AudioStreamPlayer``

![](https://docs.godotengine.org/en/4.3/_images/audio_stream_player.webp)


Cómo añadir un sonido desde script: 





<br>
<br>

### Sonidos de fondo (GLOBAL)

Un sonido ambiente funciona bien para una escena, pero si pasamos a otra escena, el **sonido se corta**

Para evitar eso, hay que usar **scripts y escenas almacendas en GLOBALES** (está en Proyecto->Configuración del Proyecto > Globales)

Video de cómo poner sonido de fondo: https://www.youtube.com/watch?app=desktop&v=K_lAB8zqkvQ

Pasos:
  * creamos una nueva escena para gestionar el sonido de fondo
  * asociamos un script (gd) para almacenar funciones de manejo del sonido 





Tareas que podemos hacer sobre el sonido de fondo: 

* activar/desactivar sonido de fondo
* subir/bajar volumen




