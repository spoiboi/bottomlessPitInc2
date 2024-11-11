extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Brother.turning_on.connect(_toggle_on)
	$Brother.turning_off.connect(_toggle_off)
	
func _toggle_on():
	$OffPlatform2._toggle_off()
	$OffPlatform3._toggle_off()
	$OffPlatform4._toggle_off()
	$OffPlatform5._toggle_off()
	$OffPlatform6._toggle_off()
	$OnPlatform2._restore_on()
	$OnPlatform3._restore_on()
	$OnPlatform4._restore_on()
	$OnPlatform5._restore_on()
	$OnPlatform6._restore_on()
	$OnPlatform7._restore_on()
	$OnPlatform8._restore_on()
	$OnPlatform9._restore_on()
	
	
	
	
func _toggle_off():
	$OnPlatform2._toggle_on()
	$OnPlatform3._toggle_on()
	$OnPlatform4._toggle_on()
	$OnPlatform5._toggle_on()
	$OnPlatform6._toggle_on()
	$OnPlatform7._toggle_on()
	$OnPlatform8._toggle_on()
	$OnPlatform9._toggle_on()
	$OffPlatform2._restore_off()
	$OffPlatform3._restore_off()
	$OffPlatform4._restore_off()
	$OffPlatform5._restore_off()
	$OffPlatform6._restore_off()


	
