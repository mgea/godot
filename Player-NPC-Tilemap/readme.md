Creación de un Mundo con sprites


- Creación del Player

- creación de Nodos NPC (

- Creación del Mundo (Niveles) con Tilemap



## Creación del mundo con TilemapLayer

###  Tilemap 

- ¿Qué es un Tilemap? [Tilemap](https://github.com/mgea/godot/wiki/Tilemap)
- Recursos de Tilemap Sheets: https://itch.io/game-assets/free/tag-tilemap
- Ejemplo:
  
  ![cainos resources](https://img.itch.zone/aW1nLzU5MDY2MTIucG5n/315x250%23c/NEN0HY.png)
  - Link: https://cainos.itch.io/pixel-art-platformer-village-props

### Configurar TileMapLayer

Creamos un nodo de tipo ``Node2D>TileMapLayer`` y en la propiedad ``TileSet`` indicamos que vamos a crear uno nuevo. 

Una vez creado, nos **aparece en la ventana inferior dos nuevos paneles**: 

* ``TileMap`` para organizar un archivo grande que contiene todas las imágenes (SpriteSheet) en bloques individuales para crear el mundo. Ahí se pueden añadir:
  
  *  Colisiones (Qué cuadritos son sólidos y cuáles no),
  *  Terrenos (Auto-tiling),
  *  Animaciones (Tiles que cambian de frame p.e. agua que fluye) y
  *  Capas de datos ( información personalizada,  (p.e. tiles con datos de tipo "peligro" que quita vida).


* ``TileSet`` para "dibujar" el contenido de los bloques en tu escena final (como si fuese un pincel)


### Panel TileSet

En el panel **TileSet** se hace la configuración de las piezas antes de pintar. Los pasos por orden son: 

* **Configuración de Textura (Setup)** Al importar la imagen se define cómo se divide para crear el _Atlas_: Seleccionas la imagen y Godot identifica los cuadros automáticamente. Se puede elegir qué partes de la imagen son tiles usables y cuáles ignorar (como espacios vacíos).

![TilesetPanel](Tileset_panel.png)


* **Capas de Física** (Physics Layers)

Se pueden añadir capas que definan elementos de cuadros como elementos de colisión (pintando en esa capa). También se pueden asignar máscaras para que ciertos ciertos tiles bloqueen al un personaje (jugador) pero dejen pasar otros, usando las Collision Layers.


* Otros: como Datos Personalizados (Custom Data Layers), Animaciones de Tiles, etc. 
