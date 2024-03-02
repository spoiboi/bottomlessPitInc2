extends Camera3D


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
		phi = clampf(rad_to_deg(value), 1.0, 179.0)


func set_camera_position():
	position = radius * Vector3(sin(phi) * cos(theta), cos(phi), sin(phi) * sin(theta))
	look_at(get_parent_node_3d().global_position)


func _process(delta):
	theta += Input.get_axis("camera_right", "camera_left") * delta
	phi += Input.get_axis("camera_up", "camera_down") * delta
	set_camera_position()
