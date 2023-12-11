extends Node2D

var pos: Vector2 = Vector2.ZERO

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = pos
	pos.x += 10
