extends Node2D

func _ready():
	print($"..".test_array)
	$"..".test_function()

func _process(delta):
	
	#Input.get_vector(negative.x)
	var direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	position += direction * 400 * delta
	
	if Input.is_action_just_pressed("Shoot"):
		print("Shoot")
	if Input.is_action_just_pressed("Grenade toss"):
		print("Grenade toss")
	
func move_100_forward():
	position.x += 100
