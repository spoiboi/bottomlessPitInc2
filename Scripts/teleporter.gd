extends Node3D

var level_list = ["res://Levels/crumbling_hell.tscn", 
"res://Levels/moving_to_your_moms_house.tscn", 
"res://Levels/spiky_level.tscn",
"res://Levels/good_luck.tscn",
"res://Scenes/title_screen.tscn"]

var next_level = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	if get_tree().current_scene.scene_file_path == "res://Levels/good_luck.tscn":
		next_level = 4
	else:
		next_level = level_list.bsearch(get_tree().current_scene.scene_file_path) + 1
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.DOWN, delta*2)
	if($checker.get_collision_count() > 0):
		get_tree().change_scene_to_file(level_list[next_level])
