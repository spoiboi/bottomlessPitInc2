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

func _on_on_area_shape_body_entered(body: Node3D) -> void:
	if (onCount == 0):
		$onStaticShape.position.y -= .45
		$onAreaShape.position.y -= .45
		$onMesh.position.y -= .45
		emit_signal("turning_on_1")
		onCount = 1
		if (offCount == 1):
			offCount = 0
			$offStaticShape.position.y += .45
			$offAreaShape.position.y += .45
			$offMeshShape.position.y += .45
			
func _on_off_area_shape_body_entered(body: Node3D) -> void:
	if (offCount == 0):
		$offStaticShape.position.y -= .45
		$offAreaShape.position.y -= .45
		$offMeshShape.position.y -= .45
		emit_signal("turning_off_1")
		offCount = 1
		if (onCount == 1):
			onCount = 0
			$onStaticShape.position.y += .45
			$onAreaShape.position.y += .45
			$onMesh.position.y += .45
