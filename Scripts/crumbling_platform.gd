extends Node3D

var time = 1
var default = true;
signal reinstantiate_me

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += 1

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		$poof.restart()
		$crumble_time.start(2)
		print("crumble time started")
		

func _on_timer_timeout():
	if (default):
		position.y += 10000
		$poof.emitting=false;
		default = false;
		$crumble_time.start(4)
		print("respawn timer started")
	else:
		default = true;
		position.y-=10000
		print("returned to default") 
		$crumble_time.stop()
		
		
	# queue_free()

func respawn():
	pass
