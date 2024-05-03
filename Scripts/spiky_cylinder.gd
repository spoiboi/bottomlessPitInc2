extends Node3D


func respawn():
	pass


func _physics_process(delta):
	rotate_object_local(Vector3.RIGHT, delta)


func _on_static_body_3d_body_entered(body):
	if body.name == "Player":
		body.respawn()
