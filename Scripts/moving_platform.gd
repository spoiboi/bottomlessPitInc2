extends Path3D


@onready var path_follower = $PathFollow3D

@export var move_speed: float = 6.0


func _process(delta):
	path_follower.progress += delta * move_speed
