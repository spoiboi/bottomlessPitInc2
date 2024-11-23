extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var onCount = 0
var offCount = 0

signal turning_on_1
signal turning_off_1
signal two_to_three_on
signal two_to_three_off
signal two_to_four_on
signal two_to_four_off

func _on_on_area_shape_body_entered(body: Node3D) -> void:
	if (onCount == 0):
		emit_signal("turning_on_1")
		emit_signal("two_to_three_on")
		emit_signal("two_to_four_on")
	_on_touch()
	
func _on_touch():
	if (onCount == 0):
		$onStaticShape.position.y -= .45
		$onAreaShape.position.y -= .45
		$onMesh.position.y -= .45
		onCount = 1
		if (offCount == 1):
			offCount = 0
			$offStaticShape.position.y += .45
			$offAreaShape.position.y += .45
			$offMeshShape.position.y += .45
			
func _on_off_area_shape_body_entered(body: Node3D) -> void:
	if (offCount == 0):
		emit_signal("turning_off_1")
		emit_signal("two_to_three_off")
		emit_signal("two_to_four_off")
	_off_touch()
	
func _off_touch():
	if (offCount == 0):
		$offStaticShape.position.y -= .45
		$offAreaShape.position.y -= .45
		$offMeshShape.position.y -= .45
		offCount = 1
		if (onCount == 1):
			onCount = 0
			$onStaticShape.position.y += .45
			$onAreaShape.position.y += .45
			$onMesh.position.y += .45
