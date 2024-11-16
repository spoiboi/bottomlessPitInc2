extends Node3D

var time = 1
var isAlive = true;

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += 1
		


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		$poof.restart()
		$Timer.start(1)


func _on_timer_timeout():
	# queue_free()
	if isAlive:
		position.y += 1000000
		isAlive = false
		$Timer.start(5)
	else:
		
		position.y -= 1000000
		_ready()
		
func respawn():
	pass
