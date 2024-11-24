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
	pass


func on_options():
	pass # Replace with function body.


func on_credits():
	position.y-=700


func on_back():
	position.y+=700
