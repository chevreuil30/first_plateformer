extends Node2D

const SPEED = 60
var direction = 1
@onready var ray_castdroite: RayCast2D = $RayCastdroite
@onready var ray_castgauche: RayCast2D = $RayCastgauche

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_castdroite.is_colliding():
		direction = -1
	if ray_castgauche.is_colliding():
		direction = 1
	position.x += direction*SPEED*delta
