extends Node3D

var level_list = ["res://Levels/crumbling_hell.tscn", 
"res://Levels/moving_to_your_moms_house.tscn", 
"res://Levels/spiky_level.tscn",
"res://Levels/first_button.tscn",
"res://Levels/may_god_have_mercy_on_your_soul.tscn",
"res://Levels/verticality.tscn",
"res://Levels/crossy_spikes.tscn",
"res://Levels/escape_the_pit.tscn",
"res://Scenes/title_screen.tscn"]

var next_level = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(0, level_list.size()):
		if (level_list[i] == get_tree().current_scene.scene_file_path):
			next_level = i+1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.DOWN, delta*2)
	if($checker.get_collision_count() > 0):
		get_tree().change_scene_to_file(level_list[next_level])
