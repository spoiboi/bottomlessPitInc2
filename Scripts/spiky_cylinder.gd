extends Node3D

@export var spinSpeed = .1

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.RIGHT, delta * spinSpeed)
