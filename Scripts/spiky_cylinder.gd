extends Node3D

func respawn():
	pass
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_object_local(Vector3.RIGHT, 0.01)
	


func _on_static_body_3d_body_entered(body):
	body.respawn()


