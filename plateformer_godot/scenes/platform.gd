extends AnimatableBody2D

var last_position: Vector2
var platform_velocity: Vector2 = Vector2.ZERO

func _ready() -> void:
	last_position = global_position

func _physics_process(delta: float) -> void:
	platform_velocity = (global_position - last_position) / delta
	last_position = global_position
