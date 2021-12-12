#This is not gap this is gdscript, the programming language for godot engine.
extends StaticBody2D


# Declare member variables here.
var sincount = 0
export var sin_strength = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_wiggle()
	pass

func _wiggle():
	if  sincount == 360:
		sincount = 0
		pass
	sincount += 0.25
	position.y = (sin(sincount) * sin_strength) + 350
