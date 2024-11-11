extends Node3D

var spawn_posx = -7
var spawn_posy = 25
var spawn_posz = -30

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$MeshInstance3D.position = $RigidBody3D.position
	if ($RigidBody3D.global_position.y <= -5):
		$MeshInstance3D.global_position.x = spawn_posx
		$MeshInstance3D.global_position.y = spawn_posy
		$MeshInstance3D.global_position.z = spawn_posz
		$RigidBody3D.global_position.x = spawn_posx
		$RigidBody3D.global_position.y = spawn_posy
		$RigidBody3D.global_position.z = spawn_posz
		$RigidBody3D.set_linear_velocity(Vector3(0,0,0))

	pass
