extends Node2D

var pos: Vector2 = Vector2.ZERO
var speed = 200

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = pos
	pos.x += speed * delta