extends Node3D


@export var jump_percent = 1.0
@export var minimum_jump = 10
@export var maximum_jump = 20
var jump

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta):
	rotate_object_local(Vector3(0.022, 0.022, 1), 4*delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		jump = abs(body.velocity.y) * jump_percent
		if jump > maximum_jump:
			jump = maximum_jump
		elif jump < minimum_jump:
			jump = minimum_jump
		body.velocity.y = jump
