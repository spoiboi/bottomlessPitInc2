extends Node3D

var level_list = ["res://Levels/crumbling_hell.tscn",  
"res://Levels/may_god_have_mercy_on_your_soul.tscn",
"res://Levels/hard_level.tscn",
"res://Scenes/demo_screen.tscn"]

var next_level = 0
# Called when the node enters the scene tree for the first time.
func _ready():
# next_level = level_list.bsearch(get_tree().current_scene.scene_file_path) + 1
	if (get_tree().current_scene.scene_file_path == "res://Levels/crumbling_hell.tscn"):
		next_level = 1
	elif (get_tree().current_scene.scene_file_path == "res://Levels/may_god_have_mercy_on_your_soul.tscn"):
		next_level = 2
	else:
		next_level = 3
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.DOWN, delta*2)
	if($checker.get_collision_count() > 0):
		get_tree().change_scene_to_file(level_list[next_level])
