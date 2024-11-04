extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Brother.turning_on.connect(_toggle_on)
	$Brother.turning_off.connect(_toggle_off)
	
func _toggle_on():
	$OnPlatform._toggle_on()
	$OffPlatform._restore_off()
	
func _toggle_off():
	$OffPlatform._toggle_off()
	$OnPlatform._restore_on()


	
