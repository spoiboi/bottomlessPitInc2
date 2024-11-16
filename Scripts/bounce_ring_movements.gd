extends Node3D

@export var speed = 8
@export var direction = 1
var acceleration = -0.01

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate_object_local(Vector3(0,0,acceleration))

	rotate_object_local(Vector3(0.022, 0.022, direction), speed*delta)
	if get_position()[2] < -.1 or get_position()[2] > .1:
		acceleration = acceleration * -1
