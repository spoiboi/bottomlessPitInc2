extends Node3D


var rotation_speed
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$SpikyCylinder.rotation.x += 1
