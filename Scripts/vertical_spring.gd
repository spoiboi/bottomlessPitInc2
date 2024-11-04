extends Node3D

var current_Body
#var wall_Y = get_global_position().y

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_Body != null:
		current_Body.velocity.y = 0.5

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		current_Body = body

func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name == "Player":
		body.velocity.y = 15
		current_Body = null
