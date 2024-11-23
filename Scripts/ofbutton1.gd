extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var count = 0

func _on_off_area_shape_body_entered(body: Node3D) -> void:
	$offStaticShape.position.y -= .45
	$offAreaShape.position.y -= .45
	$offMeshShape.position.y -= .45
	emit_signal("turning_off")
