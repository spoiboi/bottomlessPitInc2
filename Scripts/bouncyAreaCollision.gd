extends CollisionShape3D

@export var maxBounceHeight = 400
var player
var areaBouncy

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent().get_node("Player")
	areaBouncy = get_node("bouncyArea")



