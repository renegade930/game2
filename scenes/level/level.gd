extends Node2D

var test_array: Array[String] = ['Test', 'Hello', 'Stuff']

func _ready():
	$Player.rotation_degrees = 45
	print($Player.rotation_degrees)
	
	print(test_array[1])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Player.rotation_degrees += 10 * delta
	if $Player.position.x > 1000:
		$Player.pos.x = 1


