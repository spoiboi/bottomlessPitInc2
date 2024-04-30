extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.DOWN, delta*2)
	if($checker.get_collision_count() > 0):
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
