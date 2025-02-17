extends CharacterBody3D

@onready var camera = $CameraPivot/Camera3D
const SPEED = 5.0
const JUMP_VELOCITY = 7.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	rotate_model(input_dir)
	
	#$CharacterModel.rotation.z = input_dir.y
	#print($CharacterModel.rotation.y)
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	direction = direction.rotated(Vector3.UP, -camera.theta + PI * 0.5)
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	move_and_slide()

func rotate_model(input_dir):
	if input_dir.y <= 0:
		$CharacterModel.rotation.y = 3.14159 - input_dir.x
	else:
		$CharacterModel.rotation.y = input_dir.x


func _on_bouncy_body_enter():
	velocity.y = 1000
