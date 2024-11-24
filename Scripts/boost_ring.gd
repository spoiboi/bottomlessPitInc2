extends Node3D

@export var boost_duration = .2
@export var vertical = false
@export var ring_boost = 5
var boosted = false
var current_Body
var ring_body
var ring_angle
var boost_numbers = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ring_body = get_parent().get_node(get_path())
	ring_angle = ring_body.get_rotation()
	#x is up/down, y is left/right
	boost_numbers = [sin(ring_angle[1]), 
	sin(ring_angle[0]), cos(ring_angle[1])]
	# Replace with function body.

func _physics_process(delta):
	ring_body.rotate_object_local(Vector3(0, 0, 1), 3*delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if boosted:
		if not vertical:
			current_Body.velocity.x = -boost_numbers[0] * ring_boost
			current_Body.velocity.z = -boost_numbers[2] * ring_boost
			current_Body.velocity.y = -boost_numbers[1]  * ring_boost + 0.52
		else:
			current_Body.velocity.x = 0
			current_Body.velocity.z = 0
			current_Body.velocity.y = (-boost_numbers[1]+.52) * ring_boost


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		$Timer.start(boost_duration)
		current_Body = body
		boosted = true
		current_Body.IS_BOOSTED = true

func _on_timer_timeout():
	current_Body.IS_BOOSTED = false
	boosted = false
