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


# Ejercicios Godot planificados en sesiones

La mayoría de los ejercicios está publicados para jugar online en **cuenta de itch.io**: https://cmiugr.itch.io/ 

<img src="https://kidscancode.org/godot_recipes/3.x/img/godot3_logo.png" width="150px" />





## Bloque I: Fundamentos de la Creación Interactiva (1-3)

#### Semana 1 — Introducción a Godot Game Engine como herramienta multimedia

- **Objetivos:** Comprender el paradigma de Godot (Nodos y Escenas), la interfaz del editor y la estructura jerárquica. Introduccion a *GDScript*

- **Nodos Utilizados:** `Node`,  `Node2D`, ``Control``:   `Sprite2D`,  `Label` 

- **GDScript Funciones nativas **: ``_ready()``,  ``_process(delta)``  / **tipos de datos**:  ``var``

- GDScript **Propiedades de Nodos2D**: ``scale.x``, ``scale.y``, ``position.x``, ``position.y``

- GDScript **Consola y debug**: ``print()``

- **Contenidos:**

  - [Godot engine](https://godotengine.org/)  para Creación Multimedia Interactiva  (sitio oficial)
  - [Qué es Godot](https://github.com/mgea/godot/wiki/Qué-es-Godot)
  - [Instalación](https://github.com/mgea/godot/wiki/Instalación-de-Godot): Descarga y configuración del entorno (Godot 4.x).
  - [Interfaz de Usuario](https://github.com/mgea/godot/wiki/Editor) 
  - [Conceptos básicos](https://github.com/mgea/godot/wiki/Conceptos-básicos): Arbol de escena (*Scene Tree*) y composición frente a herencia.
  - Modificación de propiedades desde el Inspector
  - [GDScript](https://github.com/mgea/godot/wiki/GDScript)   (``.gd``)

- Prácticas: 

  1.1 **Collage de animación Audiovisual** creado mediante GDScript: [Hello World](https://github.com/mgea/godot/blob/main/hello_world)

  1.2  **Ejercicios de GDScript:** Sintaxis  y operaciones básicas   [GDScript-basico](https://github.com/mgea/godot/blob/main/gdscript-basico)  (2026)

  1.3  **Animación de estructura jerárquica**:  [Heart Girl](https://github.com/mgea/godot/blob/main/hello_girl): ampliación del ejemplo [Hello World](https://github.com/mgea/godot/blob/main/hello_world) para añadir un nuevo personaje: una niña con corazón latiendo que se mueve 

  >  Crear una obra estática/animada en loop tipo "Collage Digital" con capas superpuestas y animación básica por script.



#### Semana 2 — Interacción por Eventos, Tweens y Animación 2D

- **Objetivos:** Comprender el sistema de señales (*Signals*), la animación por interpolación visual y la animación micro-interactiva por código mediante `Tweens`.

- **Nodos:** `Button`, `AnimationPlayer`, `Timer`.

- **GDScript & Señales:** `pressed`, `mouse_entered`, `mouse_exited`. Uso de `create_tween()` para suavizar movimientos de UI. Cambio de escenas con `get_tree().change_scene_to_file()`.

- GDScript objeto `AnimationPlayer`:

  - GDScript objeto `AnimationPlayer` función activar animación: `play()`
  - GDScript `create_tween()` como alternativa a  `AnimationPlayer` cuando el ratón pasa por encima (`mouse_entered`)

- Temporizador: `Timer`

  - **Contenido:**
  - [Señales](https://github.com/mgea/godot/wiki/Se%C3%B1ales)
  - [Animación por interpolación](https://github.com/mgea/godot/wiki/Animation)
  - [Escenas](https://github.com/mgea/godot/wiki/Escenas) (``.tscn``)

- **Prácticas:** 

  2.1 Composición por capas y animación por línea de tiempo con `AnimationPlayer` y efecto Parallax: [Atenas](https://github.com/mgea/godot/blob/main/atenas)  

  2.2. Presentación diapositivas (pasar de una escena a la siguiente con ``Button``):  [Bansky](https://github.com/mgea/godot/blob/main/bansky)

  > La interactividad como lenguaje artístico: Creación de una una obra  "Collage interactivo"  donde diferentes elementos reaccionan al cursor (mouse_entered /mouse_exited): aparece/oculta, desplazarse...

  

#### Semana 3 — Interfaz de Usuario (GUI), Estilos y Mapeo de Entradas

- ***Objetivo**:* Diseñar interfaces adaptativas con contenedores y personalizar la estética del proyecto mediante el sistema de temas (`Theme`)
- Creación y aplicación de `Theme` 
- Definición de `Inputs` 
- *Nodos:* `Control`, `Panel`, `MarginContainer`, `VBoxContainer`, `HBoxContainer`, `TextureButton`.
- **Conceptos:** Creación de recursos `.theme`, `StyleBoxFlat`, `StyleBoxTexture`, anclajes (*Anchors*) y configuración del *Input Map* (*Project Settings*).
- Señales: ``Button``   > ``pressed`` 

  - GDScript objeto ``Button``  función: ``_on_button_pressed()``   
- Cambios de escena con `get_tree().change_scene_to_file()`.
- GDScript objeto `AnimationPlayer`
- **Contenido:**
  - [Nodos UI](https://github.com/mgea/godot/wiki/UI)
  - Propiedades del [Tema](https://github.com/mgea/godot/wiki/Tema) (``.tres``)
  - [Panel](https://github.com/mgea/godot/wiki/Panel)
  - [Inputs](https://github.com/mgea/godot/wiki/Inputs)

* **Prácticas:** 

  3.1. **GUI Design System:** Creación y aplicación de un tema visual propio (tipografías, colores de botones y estados): [GUI Design](https://github.com/mgea/godot/blob/main/GUI) 

  3.2. Vinculación de eventos de teclado/ratón ( **Inputs**) para manipular nodos 2D: [GUI-MoveSprite-Inputs](https://github.com/mgea/godot/blob/main/GUI-MoveSprite-Inputs)  

  3.3. Crear un Head-Up Display **HUD** (Panel-IU de un juego que se muestra/oculta) [GUI-HUD](https://github.com/mgea/godot/blob/main/GUI-HUD) 

  Mostrar/Ocultar páneles de interfaz mediante código (*Toggle UI*).

  >  Diseño del  menú y elementos de navegación que de acceso a diferentes secciones de un Portafolio (Teaser, Galeria , Juego, Créditos) y a elementos de configuración (preferencias) 



## Bloque II: Multimedia & Storytelling Interactivo (4-5)



#### Semana 4 — Multimedia avanzada  

- ***Objetivo**:* Gestionar el flujo de vídeo y audio dinámico. Utilizar `CanvasLayer` para overlays e implementar un `Autoload` (Singleton) para mantener la música persistente entre escenas.    
- Nodos: `CanvasLayer`, `VideoStreamPlayer` (Formatos OGV/WebM),  `AudioStreamPlayer`, `AudioStreamPlayer2D`, `AudioServer` (Buses de audio y efectos: Reverb, Delay, LowPassFilter).
- **GDScript:** Concepto de `Autoload` (variables globales), control de nodos flotantes (`show()`, `hide()`, `visible = !visible`).

- **Contenido:**
  - [Audio](https://github.com/mgea/godot/wiki/Audio)
  - [Video](https://github.com/mgea/godot/wiki/Video)
  - [Variables](https://github.com/mgea/godot/wiki/Variables) globales,  [Listas](https://github.com/mgea/godot/wiki/Listas)

* **Prácticas:** 

  4.1. Galería multimedia [Galería](https://github.com/mgea/godot/blob/main/gallery) 

  4.2. Creación de un Reproductor de audio con buses de efectos y filtros activos. [Jukebox](https://github.com/mgea/godot/blob/main/jukebox)

  > Diseño de un reproductor de video interactivo, que permita pasar a diferentes finales dependiendo de una opción elegida en un instante concreto.  

  

#### Semana 5 — Novela Visual con Dialogic  

- ***Objetivo**:* Narrativa No Lineal. Integración del plugin **Dialogic 2.x**. Configuración de personajes, *timelines*, estilos de caja de texto, ramificaciones narrativas y eventos del motor. 

- Componentes: [Dialogic (Dialog System)](https://github.com/mgea/godot/wiki/Dialogic-(Dialog-System))

  - Timeline (``.dtl``)
  - Character  (``.dch``)
  - Variables
  - Style 

- **GDScript:** Escuchar señales de Dialogic (`Dialogic.signal_event`) para activar eventos de Godot desde la narración

- **Prácticas:** 

  5.1. Versión de proyecto de Godot con instalación de plugin de Dialogic activado listo para usar [Godot+Dialogic](https://github.com/mgea/godot/blob/main/Dialogic) 

  5.2. [Estilos en Dialogic](https://github.com/mgea/godot/blob/main/Dialogic_style)

  5.3. [Conectar dialogos con acciones en escenas / script](https://github.com/mgea/godot/blob/main/Dialogic_signals) Uso de señales propias de Dialogic



## Bloque III: Gameplay RPG (6-9)



#### Semana 6 — Física 2D, Jugador y Detección de Colisiones  

- **Objetivos:** D**:** Comprender los diferentes tipos de cuerpos físicos en 2D, máscaras de colisión (*Layers & Masks*) y la interacción espacial con el jugador.

- **Nodos:**`CharacterBody2D`, `Area2D`, `CollisionShape2D`, `RigidBody2D`.

- **GDScript:** `move_and_slide()`, anotadores `@export`, conexión de señales por código (`body_entered.connect()`).

- **Contenidos:**

  - Diferencias clave entre `Area2D` (sensores/triggers), `CharacterBody2D` (control directo) y `RigidBody2D` (física simulada).
  - Máscaras y Capas de Colisión (*Collision Layers & Masks*).
  - Variables:  `@export`
  - Conexión de señales por editor y mediante código (`body_entered.connect()`).

- **Prácticas** :

  6.1. [Mover sprite2D](https://github.com/mgea/godot/blob/main/moveSprite) - Incluye gestión de inputs (teclado) y movimiento pesonaje 2D (X.Y) con colisiones (personaje sin animación propia: es un Sprite2D)

  6.2. Player que inicia conversación al chocar [Ejemplo de Dialogic](https://github.com/mgea/godot/tree/main/Dialogic_example) avanzado con player que habla con personajes (Se crean variables, Se emiten señales desde Dialogic)

  6.3. [Abrir Dialogic cerca de un personaje](https://github.com/mgea/godot/blob/main/Dialogic_open) Se abre diálogo al estar "cerca de" personaje (área). Se pulsa una tecla para comenzar diálogo

  6.4.  [Walking player](https://github.com/mgea/godot/blob/main/RPGbasico/waking_player.zip)  Escena Godot con personaje con movimiento por teclado y cambio de pose en 4 direcciones listo para reutilización. 

  6.5. Player con física2D, necesita de colisiones para suelo. 

  

#### Semana 7 — Escenarios: Cámara, Tilemap y terrenos   

* **Objetivo**: Crear galerías o mapas 2D Top-Down para ser explorados por el espectador.

* *Nodos:* `TileMapLayer`, `Camera2D` (con suavizado/smoothing), `CharacterBody2D` (Avatar del espectador)

* *Nodos:* `Area2D`, `CollisionShape2D`, `Autoload` (para recordar estados/zonas visitadas).

* **Prácticas**: 

  7.1. **Mundo RPG Explorable:** Construcción de un escenario utilizando `TileMapLayer` con capas de terreno, decoración y colisiones automáticas. [MundoRPGbasico](https://github.com/mgea/godot/blob/main/RPGbasico) 

  **7.3. Sistema de Coleccionables:** Creación de ítems interactivos que emiten señales al colisionar con el jugador, actualizando la UI del HUD. [Player esquivar](https://github.com/mgea/godot/blob/main/Player-esquivar) 

  >  Implementar coleccionables que desaparezcan al colisionar con el jugador e invoquen una señal para sumar puntos.

  

#### Semana 8 — Minijuegos I: Interacciones Point & Click y Drag & Drop

* **Objetivo**: Implementar mecánicas breves de manipulación directa de objetos para integrarlas como minijuegos o puzles dentro de la experiencia interactiva.

* **Nodos:** `Area2D`, `Control`, funciones de arrastrar y soltar integradas (`_get_drag_data`, `_drop_data`).

* **Prácticas**: 

  8.1. [Point & Click](https://github.com/mgea/godot/blob/main/point_and_click) - coger objetos (coleccionar) Se puede usar con `Timer` para hacerlo en un tiempo determinado

  utiliza objetos instaciables

  8.2. [Drag&Drop](https://github.com/mgea/godot/blob/main/drag_and_drop) - arrastrar y soltar objetos con varias alternativas.

  8.3. [Quizz](https://github.com/mgea/godot/blob/main/quizz) Quizz (tablero de preguntas) y juego de colisionar para activar preguntas. 



#### Semana 9 — Minijuegos II: Lógica, Aleatoriedad y Juegos de Tablero  

* **Objetivo**: Programar estructuras de lógica basada en arrays, aleatoriedad (`randi()`, `randf()`) y estados discretos.

* **Contenidos:**

  * Ubicación en retículas, aleatoriedad, tiempo, combinaciones

* **Prácticas**

  9.1. **Juego de Cartas / Memoria:** Tablero de emparejar cartas con volteo animado mediante `Tweens`.

  9.2. **Mecánicas de Azar (*Slot Machine*):** Sistema de preguntas/respuestas o tragamonedas  para eventos aleatorios en el juego.

  

## Bloque IV: Almacenamiento & Publicación  (10)



#### Semana 10 — Exportación y Publicación

* **Objetivo**: Preparar la obra para su exhibición (modo ventana completa para proyección, o ejecutable para instalación en sala, o exportación Web).

* **Contenidos:**

  * Buscar **Export templates** -> https://godotengine.org/download/windows/
  * *Contenidos:* Configuración de renderizado, exportación a WebGL/HTML5, empaquetado autónomo.
  * [Exportación](https://github.com/mgea/godot/wiki/exportar)
  * **Publicación** en itch.io (exportación WEB) [Itch.io](https://github.com/mgea/godot/blob/main/itchio)

* Prácticas: 

  10.1. Almacenar y recuperar datos en fichero JSON: Cargar datos en ficheros JSON [load_json](https://github.com/mgea/godot/blob/main/fileIO)





## Glosario de términos 



#### Fundamentos y Entorno de Godot

- **Árbol de Escena (Scene Tree):** Estructura jerárquica de nodos en Godot que organiza la lógica, la representación visual y el comportamiento de la aplicación en tiempo de ejecución.
- **Autoload (Singleton):** Script o escena configurada en los ajustes del proyecto para cargarse automáticamente al inicio y permanecer persistente durante toda la ejecución. Se utiliza para guardar datos globales, estado del juego o música de fondo.
- **CanvasItem:** Clase base para todos los nodos que se renderizan en 2D (incluyendo `Node2D` y `Control`). Proporciona propiedades para modificar color, visibilidad y materiales/shaders 2D.
- **GDScript:** Lenguaje de programación de alto nivel, tipado dinámicamente y con sintaxis similar a Python, diseñado específicamente para integrarse de forma nativa con el motor Godot.
- **Nodo (Node):** El elemento o bloque funcional básico en Godot. Cada nodo tiene un nombre, propiedades modificables en el Inspector, puede recibir eventos y conectarse a otros nodos como hijo o padre.
- **Señal (Signal):** Mecanismo de comunicación basado en el patrón observador que permite a un nodo emitir un evento para que otros nodos lo escuchen y reaccionen sin necesidad de acoplar directamente el código.
- **Tween:** Objeto programable que permite realizar interpolaciones fluidas por código sobre cualquier propiedad numéricas de un nodo (posición, opacidad, escala) sin necesidad de recurrir a la línea de tiempo.

#### Diseño de Interfaz y Lenguaje Visual (UI / GUI)

- **Anclajes y Márgenes** (Anchors & Offsets): Sistema de posicionamiento de los nodos de `Control` que determina cómo se adapta, estira o posiciona un elemento gráfico según la resolución o el tamaño de la pantalla.
- **CanvasLayer:** Nodo de capa que permite renderizar elementos (como el HUD o un menú de pausa) en un plano independiente, manteniéndolos fijos en pantalla sin importar los movimientos o el zoom de la cámara 2D.
- **Contenedores** (Layout Containers): Nodos especiales (`VBoxContainer`, `HBoxContainer`, `GridContainer`, `MarginContainer`) que organizan automáticamente el tamaño y la posición de sus nodos hijos.
- **HUD (Head-Up Display):** Interfaz gráfica superpuesta al juego o experiencia que muestra información en tiempo real al espectador (barras de estado, puntuación, tiempo, inventario).
- **StyleBox (`StyleBoxFlat` / `StyleBoxTexture`):** Recurso gráfico de Godot que define la apariencia de los componentes de UI (fondos, bordes, esquinas redondeadas, sombras o esquemas de 9 regiones /*9-slice*).
- **Tema** (Theme):** Archivo de recurso (`.theme`) que centraliza y aplica la identidad visual global del proyecto (tipografías, colores, tamaños de texto y estilos) a toda la jerarquía de nodos `Control`.

#### Multimedia, Audio y Narrativa Interactiva

- **AudioServer y Buses de Audio:** Sistema interno de gestión de sonido que permite dirigir pistas de audio a través de diferentes canales (Música, Efectos, Voz) para aplicar filtros dinámicos (reverberación, ecualización, filtros paso bajo).
- **Dialogic:** Plugin y herramienta de código abierto para Godot que facilita la creación de novelas visuales, diálogos no lineales, gestión de personajes, variables narrativas y elecciones con ramificaciones.
- **Soundscape (Paisaje Sonoro):** Composición o conjunto de capas de audio ambiente (loops, efectos posicionales) diseñadas para construir la atmósfera y la inmersión del espacio digital.
- **Timeline (Línea Temporal de Diálogo):** Archivo o estructura en sistemas narrativos como Dialogic que secuencia las intervenciones de personajes, cambio de emociones, reproducción de efectos y nodos de decisión.
- **VideoStreamPlayer:** Nodo encargado de decodificar y reproducir secuencias de vídeo en formatos compatibles (como `.webm` o `.ogv`), permitiendo la integración de material audiovisual dentro del mundo 2D o la UI.

#### Física 2D, Espacios y Mecánicas de Juego

- **Area2D:** Nodo de colisión que no bloquea físicamente a otros objetos, sino que actúa como sensor o *trigger* para detectar la entrada, permanencia o salida de otros cuerpos en una zona del espacio.
- **CharacterBody2D:** Cuerpo físico diseñado para ser controlado directamente por el jugador o la IA mediante código (utilizando el método `move_and_slide()`), ideal para avatares y personajes en 2D.
- **Capa y Máscara de Colisión (Collision Layer & Mask):** Sistema numérico de filtros que define en qué capa reside un objeto físico (`Layer`) y con qué otras capas tiene la capacidad de colisionar o interactuar (`Mask`).
- **Input Map (Mapa de Entradas):** Panel de configuración del proyecto donde se asocian nombres abstractos de acciones (ej. `"mover_derecha"`, `"interactuar"`) a teclas específicas, botones del ratón o mandos.
- **RigidBody2D:** Cuerpo físico cuya posición y movimiento son calculados automáticamente por el motor de físicas de Godot mediante gravedad, masa, fricción e impulsos.
- **TileMapLayer:** Nodo de Godot 4 que permite la construcción modular de escenarios 2D mediante la colocación de baldosas o mosaicos (*tiles*) organizados en capas independientes.

#### Arquitectura de Datos y Publicación

- **Export Template:** Conjunto de archivos y compiladores necesarios para empaquetar un proyecto de Godot en formatos ejecutables específicos para diferentes plataformas (Windows, macOS, WebGL/HTML5, Linux).
- **JSON (JavaScript Object Notation):** Formato de texto ligero y estructurado para el intercambio de datos, utilizado comúnmente para guardar y cargar partidas, almacenar inventarios o configurar preferencias del usuario.
- **WebGL / HTML5:** Estándar gráfico que permite la ejecución directa del proyecto interactivo dentro de cualquier navegador web moderno sin necesidad de instalar plugins o ejecutables externos.





## RECURSOS E INFORMACION SOBRE GODOT

* Assets (biblioteca de recursos) https://github.com/mgea/godot/wiki/Assets

* video Godot Tutorial (español) https://www.youtube.com/playlist?list=PL5PTqiCIVoiVyA2qed1NE4uKejXEWM60e

* Godot-land https://godot.land/que-es-godot-engine/




<br>
-------------

[Creación Multimedia Interactiva](https://github.com/mgea/interart) 

Facultad de Bellas Artes, Universidad de Granada 

CCBYNCSA M. Gea , 2024-26



