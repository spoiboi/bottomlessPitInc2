extends Node3D

var isVisible = false
@onready var audio = $AudioStreamPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	$title_ui.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !audio.playing:
		audio.play()
		
	if !isVisible and $goon.position.y < -60:
		isVisible = true
		$title_ui.visible = true
	
