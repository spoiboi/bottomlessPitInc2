extends Area3D

signal on_ice_platform(speed_multiplier)

# This multiplier can be adjusted to control the "slippery" effect.
const ICE_SPEED_MULTIPLIER = 0.5
var player 
func _ready() -> void:
	print("ready")
func _on_Area3D_body_entered(body):
	print("hi")
	if body.name == "Player":
		player = body
		
		$Timer.start()

func _on_Area3D_body_exited(body):
	print("bye")
	if body.name == "Player":
		$Timer.stop()
		
func _on_timer_timeout():
	# Check if the player has velocity and decrease it
	if player and player.velocity.length() > 0:
		# Decrease velocity by the decrement amount and apply multiplier
		player.velocity *= .8
		# Restart the timer for continuous slowing
		$Timer.start()
	
	
	

		
		

# When character enters the ice platform
"""func _on_Area3D_body_entered(body):
	if body is CharacterBody3D:
		emit_signal("on_ice_platform", ICE_SPEED_MULTIPLIER)

func _on_Area3D_body_exited(body):
	if body is CharacterBody3D:
		emit_signal("on_ice_platform", 1.0) 
"""
