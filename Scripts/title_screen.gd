extends Control


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/crumbling_hell.tscn")


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://Levels/moving_to_your_moms_house.tscn")


func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://Levels/spiky_level.tscn")
