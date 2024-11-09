extends Area3D


signal on_ice_platform(speed_multiplier)

# This multiplier can be adjusted to control the "slippery" effect.
const ICE_SPEED_MULTIPLIER = 0.5

# When character enters the ice platform
func _on_Area3D_body_entered(body):
	if body is CharacterBody3D:
		emit_signal("on_ice_platform", ICE_SPEED_MULTIPLIER)

func _on_Area3D_body_exited(body):
	if body is CharacterBody3D:
		emit_signal("on_ice_platform", 1.0) 
