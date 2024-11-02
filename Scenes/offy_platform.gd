extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var gryph = 0

func _toggle_off():
	position.y += 300
	gryph += 1
	
func _restore_off():
	if (gryph != 0):
		position.y -= 300
