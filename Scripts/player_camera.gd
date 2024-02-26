extends Camera3D


@export var radius := 8.0
@export_range(0, 360) var theta := 0.0:
	get:
		return deg_to_rad(theta)
	set(value):
		theta = wrapf(rad_to_deg(value), 0, 360)
		set_camera_position()
@export_range(0, 180) var phi := 90.0:
	get:
		return deg_to_rad(phi)
	set(value):
		phi = clampf(rad_to_deg(value), 0, 180)
		set_camera_position()


func set_camera_position():
	position = radius * Vector3(sin(phi) * cos(theta), cos(phi), sin(phi) * sin(theta))
	look_at(get_parent().global_position)


func _process(delta):
	theta += Input.get_axis("camera_right", "camera_left") * delta
	phi += Input.get_axis("camera_up", "camera_down") * delta
