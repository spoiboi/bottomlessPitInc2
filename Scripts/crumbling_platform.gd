extends Node3D

@export var default_height = 0
@export var crumble_velocity = 0
@export var crumbling = false

# Called when the node enters the scene tree for the first time.
func _ready():
	default_height = position.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ($checker.get_collision_count() > 0) or crumbling:
		crumble()
	

func crumble():
	position.y -= crumble_velocity
	crumble_velocity +=0.1
	if position.y < (default_height - 100):
		position.y = default_height
		crumble_velocity = 0
		crumbling = false
