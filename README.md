# Godot: Multimedia interactiva

Apuntes y ejercicios para para crear contenido multimedia interactiva usando Godot Engine. 

![godot](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWprtkvYqYvWB8iCVZ2N5bT6AcjAzcDGgpAg&s) 

Contenidos: 
* [¿Qué es Godot?](https://github.com/mgea/godot/wiki)  -> Contenido en formato Wiki sobre Godot
* Introducción a la Multimedia Interactiva
* Ejercicios sobre Godot organizada en sesiones

<br>

# Introducción a la Multimedia interactiva 

<img src="https://cdn-icons-png.flaticon.com/512/11998/11998671.png" height="150">

La creación de contenido multimedia con ordenador ha ido evolucionando a lo largo del tiempo. [Timeline](https://mgea.github.io/PeriodismoMultimedia/content/resources/timeline.html)

- Adobe/Macromedia [Flash](https://www.hackaboss.com/blog/tecnologia-adobe-flash)  fue la gran apuesta multimedia en internet en los años 90, pero su tecnología se quedó obsoleta con las mejoras de HTML5 y sus problemas de seguridad hacia 2010. [Historia](https://www.youtube.com/watch?v=aaOihL8mvDM)

     <a href="https://www.youtube.com/watch?v=aaOihL8mvDM"> <img src="https://i.ytimg.com/vi/aaOihL8mvDM/hq720.jpg" height="150">  </a> 


- Multimedia **Authoring Tools** (https://atomisystems.com/elearning/multimedia-authoring-tools-definition-features-and-examples/)
  - [Evolución](https://mgea.github.io/content/resources/autoring_tools-flashcards.html) 
- **HTML5** y librerías de animación en Javascript - https://www.digitalogy.co/blog/top-javascript-animation-libraries/
  - Editores basados en filosofía Flash 
    - Hippani Animator - https://www.hippani.com/
    - Wickeditor - https://www.wickeditor.com/
- **Game engine**:
  Los motores de videojuegos es una estupenda alternativa para la creación multimedia, ya qe son capaces de manejar escenas con multiples medios de manera muy eficiente, y resuelve de forma 
  adecuada animaciones (cinemática), los player (movimiento de personajes), colisiones, manipulación (drag & drop), dinámica y control de física etc. Entre las distintas plataformas existentes, godot es una muy buena opción para la creación multimedia por:
  * fácil instalación (un solo fichero que se descarga y funciona sin mayores problemas de instalación)
  * open source & free, desarrollado por una comunidad en constante evolución
  * lenguaje de scrip gdscript sencillo (basado en python) 

<br> 
<br>


# Ejercicios sobre Godot organizada en sesiones

La mayoría de los ejercicios está publicados para jugar online en **cuenta de itch.io**: https://cmiugr.itch.io/ 
<br>

## Sesión 1: Conceptos básicos con Godot (game engine) 

[Godot engine](https://godotengine.org/)  para Creación Multimedia Interactiva 

<img src="https://kidscancode.org/godot_recipes/3.x/img/godot3_logo.png" width="250px" />



* [0 qué es Godot](https://github.com/mgea/godot/wiki/Qu%C3%A9-es-Godot)

* [1 Instalación](https://github.com/mgea/godot/wiki/Instalaci%C3%B3n-de-Godot)

* [2 Interfaz de Usuario](https://github.com/mgea/godot/wiki/Editor)

* [3 Conceptos básicos](https://github.com/mgea/godot/wiki/Conceptos-b%C3%A1sicos)


### Ejemplos



 * (Dia 1) Animación de un ``Sprite2D`` por código [Hello World](hello_world) Animación básica de un 2DSprite con GDScript por Consola

 * Ejercicios [GDScript-basico](gdscript-basico) para comprender sintaxis del lenguaje GDScript con operaciones sencillas (2026)

 * Ejercicio Jerarquía de nodos: [Hello Girl](hello_girl) Ampliación del ejemplo [Hello World](hello_world) para añadir un nuevo personaje: una niña con corazón latiendo (2026)

 * (Día 2) [Bansky](bansky) Pasar de una escena a otra con botones (Nodo: ``Control>Button``)


<br>
<br>

## Sesión 2 Elementos multimedia (imágenes, texto y animación)  

Conceptos: 

* Imágenes y propiedades: ajustes, transparencias, modelo de color
* Texto y sus propiedades
* Animación 2D con ``AnimationPlayer``



### Ejemplos

* Caso 1 [Atenas](atenas) - composición imágenes por capas, texto fancy, pasar de escena tras X segundos y efecto Parallax
* Caso 2 [BBAAteaser](bbaateaser) - animacion por linea de tiempo con jerarquías animadas y reutilización de escenas


<br>
<br>


## Sesión 3: GUI: Interfaz gráfico de usuario con Godot

Conceptos:

* Diseñar y personalizar el IU
  * Nodos de tipo Control: Botón, Label, Panel...
  * Estilos: Themes    
* Interacción: eventos/señales y dispositivos (mapa de Inputs)
  


### Ejemplos GUI y HUD 

Conceptos:

* Diseñar y personalizar el IU (Nodos: Button, Texture Button, Canvas)
* Usar ``Themes`` (Override)
* Crear Temas (Themes)

* [GUI](GUI) - Controles del IU donde vemos:
   * Botones y sus estados
   * Estilos (Themes) 

* [GUI-MoveSprite-Inputs](GUI-MoveSprite-Inputs) - Mover objeto básico por teclado / ratón
  * Mover objeto  
  * Mover objeto con cámara subjetiva  

* [GUI-HUD](GUI-HUD) - Crear un Head-Up Display (IU del juego que se muestra/oculta)  
  * Combinamos todo lo anterior con un juego de movimiento con Panel de control de UI
  * Paneles de UI (CanvasLayer), se muestran encima como capas y se pueden mostrar/ocultar con . 

<br>
<br>




## Sesión 4 Multimedia avanzada con Godot: Galería de imágenes, Audio & Video


#### 4.1 Galería de imágenes y video (usando listas)  

En esta parte nos vamos a centrar en cómo manejar **listas de elementos** (imágenes/videos) para mostrar como una una galería multimedia. 

* [Galería](gallery) - Incluye manejo de video, listas y galería de imágenes.


#### 4.2 Uso de audio y canales:

Vamos a añadir sonido asociado a una escena/acción, sonido de fondo (entre escenas) o bien para efectos especiales.

Funcionamiento de buses de audios separados: 
* [Jukebox](jukebox)

<br>

Sonido como fondo global (que se mantiene entre escenas) 

* [sonido global](sonido)


#### 4.3 Gestión de Video 


<br>
<br>


## Sesión 5. Animación de Character2D y colisiones 

Animación con sprite (usando botones, no movimiento con teclas)

* [Sprite2Dbasic](animatedSprite_basic)

En esta parte nos vamos a centrar en cómo manejar personajes (y colisiones)

* [Mover sprite2D](moveSprite) - Incluye gestión de inputs (teclado) y movimiento pesonaje 2D (X.Y) con colisiones (personaje sin animación propia: es un Sprite2D)

* [Crear Player con animación](moveanimatedSprite) - Movimiento de un player con animación propia (**AnimatedSprite2D**) 


* [MundoRPGbasico](RPGbasico) Creación de un Mundo RPG (con Niveles tipo plataformas) usando [TileMap](https://github.com/mgea/godot/wiki/Tilemap), player y objetos 

 


<br>
<br>


## Sesión 6: Sistema de Diálogos (plugin dialogic)

Creación de un plugin para Sistema de Dialogo **Dialogic**. Usar para crear narrativas de personajes y cómo activar con colisiones. 

* [Godot+Dialogic](Dialogic) Versión de un proyecto "limpio" de Godot 4 con plugin activado de Dialogic. Listo para usar
   
* [Ejemplo de Dialogic](https://github.com/mgea/godot/tree/main/Dialogic_example) avanzado con player que habla con personajes
  * Se abre diálogo al "chocar" con perosnajes
  * Se crean variables 
  * Se emiten señales desde Dialogic  


* [Abrir Dialogic cerca de un personaje](Dialogic_open)


* [Estilos en Dialogic](Dialogic_style)

<br>
<br>

## Sesión 7: Exportar  

Cómo exportar: 

* [exportación](https://github.com/mgea/godot/wiki/exportar)

<br>
Juegos: 

* [Point & Click](point_and_click) - coger objetos (coleccionar) 

* [Drag&Drop](drag_and_drop)  - arrastrar y soltar objetos con varias alternativas. 


  
<br>


## Sesión 8: Juegos  

Quizz (tablero de preguntas)  y juego de colisionar para activar preguntas.
* [Quizz](quizz)
* demo en Itch.io -> https://cmiugr.itch.io/quizz

* [Enemigo_RPG](Enemigo_RPG) - Enemigo que se mueve de forma autónoma (pendiente)


<br>


<br>

Crear numeros aleatorios

* [random](random_fruit)
* 


<br>
<br>





## Sesión 9: Almacenar y recuperar datos en fichero JSON 

Cargar datos en ficheros JSON
* [load_json](fileIO)

<br>
<br>

## Sesión 10 Juegos II: Timer para recoger objetos con temporizador  


<br>
<br>
<br>


## Sesión 11: Publicar en Internet 

Publicación en itch.io
* [Itch.io](itchio)




## RECURSOS E INFORMACION SOBRE GODOT

* Assets (biblioteca de recursos) https://github.com/mgea/godot/wiki/Assets

* video Godot Tutorial (español) https://www.youtube.com/playlist?list=PL5PTqiCIVoiVyA2qed1NE4uKejXEWM60e

* Godot-land https://godot.land/que-es-godot-engine/





<br>
-------------

[Creación Multimedia Interactiva](https://github.com/mgea/interart) 

Facultad de Bellas Artes, Universidad de Granada 

CCBYNCSA M. Gea 



