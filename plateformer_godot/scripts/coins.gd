extends Area2D

@onready var game_manager = %game_manager



func _on_body_entered(body: Node2D) -> void:
	game_manager.get_coins()
	queue_free()
