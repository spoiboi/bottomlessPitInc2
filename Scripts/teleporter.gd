extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if($checker.get_collision_count() > 0):
		for x in range($checker.get_collision_count()):
			$checker.get_collider(x).respawn()
