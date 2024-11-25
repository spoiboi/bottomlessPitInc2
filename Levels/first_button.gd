extends Node3D

@onready var ui = $splash_screen
var sum = 0

func handle_ui(delta):
	if ui.visible:
		sum+=(6*delta)
		if sum >= 10:
			ui.position.x+=10
			if ui.position.x >= 1200:
				ui.visible=false
# Called when the node enters the scene tree for the first time.
func _ready():
	$splash_screen/world.text = "Level 4"
	$splash_screen/name.text = "This game\n has puzzles?"
	$Brother.turning_on.connect(_toggle_on)
	$Brother.turning_off.connect(_toggle_off)
	$Brother2.turning_on_1.connect(_toggle_on_1)
	$Brother2.turning_off_1.connect(_toggle_off_1)
	$Brother3.turning_on_1.connect(_toggle_on_1)
	$Brother3.turning_off_1.connect(_toggle_off_1)
	$Brother4.turning_on_1.connect(_toggle_on_1)
	$Brother4.turning_off_1.connect(_toggle_off_1)
	$Brother2.two_to_three_on.connect(t_t_th_on)
	$Brother2.two_to_three_off.connect(t_t_th_off)
	$Brother2.two_to_four_on.connect(t_t_f_on)
	$Brother2.two_to_four_off.connect(t_t_f_off)
	$Brother3.three_to_two_on.connect(th_t_t_on)
	$Brother3.three_to_two_off.connect(th_t_t_off)
	$Brother3.three_to_four_on.connect(th_t_f_on)
	$Brother3.three_to_four_off.connect(th_t_f_off)
	$Brother4.four_to_two_on.connect(f_t_t_on)
	$Brother4.four_to_two_off.connect(f_t_t_off)
	$Brother4.four_to_three_on.connect(f_t_th_on)
	$Brother4.four_to_three_off.connect(f_t_th_off)


# Called every frame. 'delta' is the elapsed time since the previous frame.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	handle_ui(delta)
	if !$AudioStreamPlayer.playing:
		$AudioStreamPlayer.play()
	

	
func _toggle_on():
	$OnPlatform2._toggle_on()
	$OnPlatform3._toggle_on()
	$OnPlatform4._toggle_on()
	$OnPlatform5._toggle_on()
	$OnPlatform6._toggle_on()
	$OnPlatform7._toggle_on()
	$OnPlatform8._toggle_on()
	$OnPlatform9._toggle_on()
	$OnPlatform10._toggle_on()
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
	$OnPlatform4._restore_on()
	$OnPlatform5._restore_on()
	$OnPlatform6._restore_on()
	$OnPlatform7._restore_on()
	$OnPlatform8._restore_on()
	$OnPlatform9._restore_on()
	$OnPlatform10._restore_on()
	
func _toggle_on_1():
	$OnPlatform._toggle_on()
	$OnPlatform11._toggle_on()
	$OnPlatform12._toggle_on()
	$OnPlatform13._toggle_on()
	$OnPlatform14._toggle_on()
	$OnPlatform15._toggle_on()
	$OffPlatform._restore_off()
	$Brother3._restore_off()
	$Brother4._toggle_off()
	$OffPlatform7._restore_off()
	$OffPlatform8._restore_off()
	$OffPlatform9._restore_off()
	$OffPlatform10._restore_off()
	$OffPlatform11._restore_off()
	$OffPlatform12._restore_off()
	$OffPlatform13._restore_off()
	$OffPlatform14._restore_off()
	$OffPlatform15._restore_off()
	
func _toggle_off_1():
	$OnPlatform._restore_on()
	$OnPlatform11._restore_on()
	$OnPlatform12._restore_on()
	$OnPlatform13._restore_on()
	$OnPlatform14._restore_on()
	$OnPlatform15._restore_on()
	$OffPlatform._toggle_off()
	$Brother3._toggle_off()
	$Brother4._restore_off()
	$OffPlatform7._toggle_off()
	$OffPlatform8._toggle_off()
	$OffPlatform9._toggle_off()
	$OffPlatform10._toggle_off()
	$OffPlatform11._toggle_off()
	$OffPlatform12._toggle_off()
	$OffPlatform13._toggle_off()
	$OffPlatform14._toggle_off()
	$OffPlatform15._toggle_off()

func t_t_th_on():
	$Brother3._on_touch()

func t_t_th_off():
	$Brother3._off_touch()

func t_t_f_on():
	$Brother4._on_touch()

func t_t_f_off():
	$Brother4._off_touch()
	
func th_t_t_on():
	$Brother2._on_touch()
	
func th_t_t_off():
	$Brother2._off_touch()
	
func th_t_f_on():
	$Brother4._on_touch()
	
func th_t_f_off():
	$Brother4._off_touch()
	
func f_t_t_on():
	$Brother2._on_touch()
	
func f_t_t_off():
	$Brother2._off_touch()
	
func f_t_th_on():
	$Brother3._on_touch()
	
func f_t_th_off():
	$Brother3._off_touch()
