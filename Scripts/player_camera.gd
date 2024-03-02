extends Camera3D


@onready var ray_cast = $"../RayCast3D"


@export var radius := 8.0
@export_range(0, 360) var theta := 90.0:
	get:
		return deg_to_rad(theta)
	set(value):
		theta = wrapf(rad_to_deg(value), 0, 360)
@export_range(1, 179) var phi := 90.0:
	get:
		return deg_to_rad(phi)
	set(value):
		phi = clampf(rad_to_deg(value), 45.0, 135.0)


func set_camera_position():
	var angle_vector = Vector3(sin(phi) * cos(theta), cos(phi), sin(phi) * sin(theta))
	var far_position = radius * angle_vector
	
	ray_cast.target_position = far_position
	ray_cast.force_raycast_update()
	
	var collision_length = radius
	if ray_cast.is_colliding():
		collision_length = ray_cast.get_collision_point().length()
	
	position = (collision_length - 1.5) * angle_vector
	look_at(get_parent_node_3d().global_position)


func _physics_process(delta):
	theta += Input.get_axis("camera_right", "camera_left") * delta
	phi += Input.get_axis("camera_up", "camera_down") * delta
	set_camera_position()
