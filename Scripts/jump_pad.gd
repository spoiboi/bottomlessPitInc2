extends Node3D

@export var maxBounceHeight = 15
var current_Body

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(delta: float) -> void:
	if current_Body != null:
		if Input.is_action_just_pressed("jump"):
			current_Body.velocity.y = maxBounceHeight
			current_Body.jumping = true

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		current_Body = body

func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name == "Player":
		current_Body = null
