extends Path3D


@onready var path_follow = $PathFollow3D

@export var move_speed = 1.0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow.progress += delta * move_speed
