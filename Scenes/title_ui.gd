extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func on_new_game():
	get_tree().change_scene_to_file("res://Levels/crumbling_hell.tscn")


func on_level_select():
	position.x-=1200


func on_options():
	pass # Replace with function body.


func on_credits():
	position.y-=700


func on_back():
	position.y+=700


func level_1():
	get_tree().change_scene_to_file("res://Levels/crumbling_hell.tscn")


func level_2():
	get_tree().change_scene_to_file("res://Levels/moving_to_your_moms_house.tscn")


func level_3():
	get_tree().change_scene_to_file("res://Levels/spiky_level.tscn")


func level_4():
	get_tree().change_scene_to_file("res://Levels/first_button.tscn")


func level_5():
	get_tree().change_scene_to_file("res://Levels/may_god_have_mercy_on_your_soul.tscn")


func level_6():
	get_tree().change_scene_to_file("res://Levels/verticality.tscn")


func level_7():
	get_tree().change_scene_to_file("res://Levels/crossy_spikes.tscn")


func level_8():
	get_tree().change_scene_to_file("res://Levels/escape_the_pit.tscn")
