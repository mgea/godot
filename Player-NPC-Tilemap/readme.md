Creación de un Mundo con sprites


- Creación del Player

- creación de Nodos NPC (

- Creación del Mundo (Niveles) con Tilemap



## Creación del mundo con TilemapLayer

### ¿Qué es un Tilemap? 

- [Tilemap](https://github.com/mgea/godot/wiki/Tilemap)
- Recursos de Tilemap Sheets: https://itch.io/game-assets/free/tag-tilemap
- Ejemplo:
  
  ![cainos resources](https://img.itch.zone/aW1nLzU5MDY2MTIucG5n/315x250%23c/NEN0HY.png)
  - Link: https://cainos.itch.io/pixel-art-platformer-village-props

### Configurar TileMapLayer

Creamos un nodo de tipo ``Node2D>TileMapLayer`` y en la propiedad ``TileSet`` indicamos que vamos a crear uno nuevo. 

Una vez creado, nos **aparece en la ventana inferior dos nuevos paneles**: 

* ``TileMap`` para organizar un archivo grande que contiene todas las imágenes (SpriteSheet) en bloques individuales para crear el mundo. Ahí se pueden añadir Colisiones (Qué cuadritos son sólidos y cuáles no), Terrenos (Auto-tiling), Animaciones (Tiles que cambian de frame p.e. agua que fluye) y Capas de datos ( información personalizada,  (p.e. tiles con datos de tipo "peligro" que quita vida).


* ``TileSet`` para 






