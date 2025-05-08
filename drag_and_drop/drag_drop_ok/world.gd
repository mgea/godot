extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$lab.text = "movible?  ogro1= "+ str($ogro1.draggable) + " ogro2= "+  str($ogro2.draggable) +\
	   "\n mouse_in ?=" + str($ogro1.is_inside_dropable) +" "+ str($ogro2.is_inside_dropable) \
	  + "\n dragging? =" + str(global.is_dragging)  
