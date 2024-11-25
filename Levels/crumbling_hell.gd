extends Node3D

@onready var ui = $splash_screen
var sum = 0

func handle_ui(delta):
	if ui.visible:
		sum+=(6*delta)
		if sum >= 10:
			ui.position.x+=10
			if ui.position.x >= 1200:
				ui.visible=false
# Called when the node enters the scene tree for the first time.
func _ready():
	$splash_screen/world.text = "Level 1"
	$splash_screen/name.text = "I've fallen \ninto \ncrumbling hell"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	handle_ui(delta)
