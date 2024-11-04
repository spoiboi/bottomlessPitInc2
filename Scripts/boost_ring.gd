extends Node3D

var boosted = false
var current_Body
var location = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta):
	rotate_object_local(Vector3(0, 0, 1), delta)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if boosted:
		print(location)
		location = Vector3(location[0]*1.08, location[1]+0.1, location[2]*1.08)
		current_Body.set_global_position(location)
#		current_Body.velocity.y = current_Body.velocity.y * 1.01


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		$Timer.start(.2)
		current_Body = body
		location = current_Body.get_global_position()
		boosted = true

func _on_timer_timeout():
	boosted = false
	#
