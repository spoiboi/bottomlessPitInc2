extends Node3D
var player
@export var bounce_strength = 200
@export var fall_speed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player:
		player.velocity.y -= fall_speed


func _on_bouncy_area_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		player = body
		player.velocity.y = bounce_strength
