extends Node3D

@export var boost_duration = .2
@export var boost_x_strength = 1
@export var boost_z_strength = 1
@export var boost_y_strength = .5
@export var y_jump = 0
@export var vertical = false
var boosted = false
var current_Body
var location = [0,0,0]
var delta_Location = [0,0,0]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta):
	rotate_object_local(Vector3(0, 0, 1), delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if boosted:
		if not vertical:
			for i in 3:
				delta_Location[i] = location[i] - current_Body.get_global_position()[i]
			location = Vector3((location[0] - delta_Location[0]* boost_x_strength), 
				(location[1] + abs(delta_Location[1]* boost_y_strength)), 
				(location[2] - delta_Location[2]* boost_z_strength))
			current_Body.set_global_position(location)
			location = current_Body.get_global_position()
			current_Body.velocity.y = 0
		else:
			current_Body.velocity.y = y_jump


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		if body.velocity.y <= 0:
			body.velocity.y = 0.1
		$Timer.start(boost_duration)
		current_Body = body
		location = current_Body.get_global_position()
		boosted = true

func _on_timer_timeout():
	boosted = false
