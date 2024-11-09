extends CharacterBody3D
@onready var camera = $CameraPivot/Camera3D


var first_time = true
var jumping = true
var on_ice = false
var spawn_pos
@export var SPEED = 7.5
@export var JUMP_VELOCITY = 7.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity") * 3
func _init():
	spawn_pos = position
func _ready():
	pass
	#var ice_platform = get_parent().get_node("IcyPlatform/Area3D")
	#print(ice_platform)
	#ice_platform.connect("on_ice_platform", self, "_on_ice_platform")

func _on_ice_platform(is_on_ice):
	on_ice = is_on_ice
func _physics_process(delta):
	
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
	
	if Input.is_action_just_pressed("kys"):
		respawn()
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	elif (jumping==true):
		jumping=false
		$jumpcloud.restart()

		

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jumping = true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "back").normalized()
	rotate_model(input_dir)
	
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	direction = direction.rotated(Vector3.UP, -camera.theta + PI * 0.5)
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	animate_model(input_dir)
	move_and_slide()
func rotate_model(input_dir):
	if input_dir == Vector2(0,0):
		pass
	elif input_dir.y <= 0:
		$character.rotation.y = (PI - input_dir.x)+$CameraPivot/Camera3D.rotation.y
	else:
		$character.rotation.y = (input_dir.x)+$CameraPivot/Camera3D.rotation.y
		
func respawn():
	velocity.y = 0
	position = spawn_pos 
	position.y += 20
	#get_tree().reload_current_scene()
	
func animate_model(input_dir):
	if is_on_floor():
		if input_dir == Vector2(0,0):
			$character/AnimationPlayer.play("Idle")
		else:
			$character/AnimationPlayer.play("Run")
	else:
		$character/AnimationPlayer.play("Jump")
