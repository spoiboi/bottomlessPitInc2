extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var count = 0

func _on_nutz_body_entered(body: Node3D) -> void:
	if (count < 2):
		position.y -= 0.4
	count = count + 1
