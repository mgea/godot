## Proyecto 02 - Hello Girl  


Basado en: https://docs.godotengine.org/es/4.x/getting_started/step_by_step/scripting_first_script.html

Extensión de ejercicio [Hello World](../hello_world)

###  Objetivos 

* Comprender la jerarquía de objetos
* Crear un objeto 2D compuesto con dos animaciones sencillas anidadas 
* Comprender las operaciones básicas de un Node2D que se heredan a un Sprite2D (Sprite2D < Node2D)


![Escena Hello Girl](HelloGirl_scene.png)

Los ogros se mueven en vertical y las niñas se mueven en horizontal con corazón palpitando.

### Composición de Heart_Girl Sprite 2D 

Para crear a la niña con corazón palpitando necesitamos estos assets. 

![heart](heart200px.png) ![Girl](girl.png) ![heart Girl](hellogirl.png) 
 
### Operaciones básicas sobre un Node2D

En primer lugar hay que tener en cuenta las coordenadas de la vista (viewport). El origen (0,0) está en esquina superior izquieda, y el tamaño se fija en la configuración del proyecto (por defecto es 1158x648px)

![Coordenadas de ventana](coordenadas.png)

Las operaciones básicas son: 

```GDScript
# Posición en canvas. 
position.x = 10
position.y = 10
# Escala en eje x e y independiente. Es un factor multiplicador, si escala = 1 igual tamaño 
scale.x = 1
scale.y = 1
# Rota el objeto a 45 grados
rotation_degrees = 45 


```






### Mostrar Sprite 2D 



hello_girl
