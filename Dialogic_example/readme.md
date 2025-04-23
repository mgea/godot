## Dialogic 2 example 

Ejemplo de sistema de diálogo en Godot con plugin Dialogic 2 https://github.com/dialogic-godot/dialogic

Documentación en: https://docs.dialogic.pro/introduction.html

Ejemplo base para diseñar diálogos: [walking_player_con_dialogic.zip](walking_player_Dialogic.zip)



### Variables globales 

EN el editor se pueden crear variables globales que se pueden usar durante la conversación, pueden tener difernetes tipos (string, int, bool)

![](dialogic_var.png)

En cualquier momento se pueden usar poniendolas entre llaves: 

``{VAR.nombre}`` o bien ``{nombre}``



### Dialogos (timeline)

Un timeline describe un diálogo. se almacena con extensión **.dtl**




Acciones que se pueden hacer en un diálogo:

![](https://docs.dialogic.pro/media/introduction/events.png)



### Characters 

Al crear los characters, todas las imágenes del personaje deben estar en una carpeta (expresiones) 

![characters_folder](dialogic_characters.png)

Cada personaje se crea con una extensión **.dch**


### Estilos de diálogo (bubble) 

Se pueden usar varias que viene prediseñadas o hacer una propia 

![characters_folder](estilos_dialogic.png)






