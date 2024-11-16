extends Node3D

var current_Body
@export var jump = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if current_Body != null:
		if Input.is_action_just_pressed("jump") and current_Body.velocity.y<=0:
			current_Body.velocity.y = jump
			current_Body.jumping = true
		elif current_Body.velocity.y<=0:
			current_Body.velocity.y = -1
			current_Body.jumping = false


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		current_Body = body
		current_Body.IS_ON_JUMP_WALL = true


func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name == "Player":
		current_Body.jumping = false
		current_Body.IS_ON_JUMP_WALL = false
		current_Body = null
		
