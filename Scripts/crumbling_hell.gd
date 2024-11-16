extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	$crumblingPlatform.reinstantiate_me.connect(respawn_crumbling)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func respawn_crumbling():
	
	print("respawn signal recieved")
