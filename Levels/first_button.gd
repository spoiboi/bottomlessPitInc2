extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Brother.turning_on.connect(_toggle_on)
	$Brother.turning_off.connect(_toggle_off)
	$Brother2.turning_on_1.connect(_toggle_on_1)
	$Brother2.turning_off_1.connect(_toggle_off_1)
	$Brother3.turning_on_1.connect(_toggle_on_2)
	$Brother3.turning_off_1.connect(_toggle_off_2)
	
func _toggle_on():
	$OnPlatform2._toggle_on()
	$OnPlatform3._toggle_on()
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
	
func _toggle_off():
	$OffPlatform2._toggle_off()
	$OffPlatform3._toggle_off()
	$OffPlatform4._toggle_off()
	$OffPlatform5._toggle_off()
	$OffPlatform6._toggle_off()
	$OnPlatform2._restore_on()
	$OnPlatform3._restore_on()
	$OnPlatform5._restore_on()
	$OnPlatform6._restore_on()
	$OnPlatform7._restore_on()
	$OnPlatform8._restore_on()
	$OnPlatform9._restore_on()
	
func _toggle_on_1():
	$OffPlatform._restore_off()
	$Brother3._restore_off()
	$OffPlatform7._restore_off()
	$OffPlatform8._restore_off()
	$OffPlatform9._restore_off()
	$OffPlatform10._restore_off()
	$OffPlatform11._restore_off()
	
func _toggle_off_1():
	$OffPlatform._toggle_off()
	$Brother3._toggle_off()
	$OffPlatform7._toggle_off()
	$OffPlatform8._toggle_off()
	$OffPlatform9._toggle_off()
	$OffPlatform10._toggle_off()
	$OffPlatform11._toggle_off()

func _toggle_on_2():
	pass

func _toggle_off_2():
	pass
