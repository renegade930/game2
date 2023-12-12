extends Node2D

var test_array: Array[String] = ['Test', 'Hello', 'Stuff']

func _ready():
	$Player.rotation_degrees = 45



#func _process(delta):
	#$Player.rotation_degrees += 10 * delta
	#if $Player.position.x > 1000:
		#$Player.pos.x = 1


func test_function():
	print("test function")
