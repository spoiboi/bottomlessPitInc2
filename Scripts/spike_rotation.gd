extends StaticBody3D

var parent

func respawn():
	pass


func _ready() -> void:
	parent = get_parent_node_3d()


func _physics_process(delta):
	rotate_object_local(Vector3.RIGHT, delta * (parent.speed))
