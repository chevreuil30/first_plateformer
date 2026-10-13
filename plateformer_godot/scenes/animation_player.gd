extends AnimationPlayer
extends an

var last_position: Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	last_position = global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func get_platform_delta() -> Vector2:
	var delta = global_position - last_position
	last_position = global_position
	return delta
