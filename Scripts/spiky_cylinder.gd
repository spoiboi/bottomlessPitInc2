extends Node3D
@export var speed = 1

func respawn():
	pass


func _physics_process(delta):
	pass

func _on_static_body_3d_body_entered(body):
	if body.name == "Player":
		body.respawn()
