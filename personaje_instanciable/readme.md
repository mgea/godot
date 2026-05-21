# Objetos instanciables


A menudo queremos hacer un tipo de objeto/personaje que se repite varias veces pero queremos cambiar algunas de sus propiedades

Ejemplo: Coleccionables de un inventario (cambia iamgen y nombre) (ejemplo: [point_anc_click](../point_and_click)

La forma más sencilla es hacer que parte de sus "atributos" se puedan definir desde el **panel de inspector** 

Para ello, definimos variables del tipo ``@export``

Eso hace que ese valor se añada al panel de propiedades del Nodo. Por ejemplo, si queremos añadir una imagen (textura), un nombre (string) y una propiedad como vidas (int) se podría hacer del siguiente modo 

Creamos las variables que se deben rellenar en el Inspector:

```gdscript
@export var imagen:Texture2D
@export var nombre:String
@export var vidas:int
```
 
## Creamos el objeto genérico como una escena con un script para asignar los valores 

personje.tscn (básico)

```
Personaje (Node2D)
 └── Sprite2D
```

Si quisireamos que se pueda añadir comportamiento más complejo (saber si entra o sale del personaje):

personaje.tscn (avanzado)
```
Personaje (Node2D)
 ├── Area2D
 └── ColisionShape
     └── Sprite2D
````


El script asociado sería: 

personaje.gd
```

```












