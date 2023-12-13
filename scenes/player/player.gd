extends CharacterBody2D

func _process(_delta):
	
	#Input.get_vector(negative.x)
	var direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	velocity = direction * 500
	move_and_slide()
	
	
	if Input.is_action_just_pressed("Dash"):
		position += direction * 70
	
	#if Input.is_action_just_pressed("Shoot"):
		#print("Shoot")
	#if Input.is_action_just_pressed("Grenade toss"):
		#print("Grenade toss")
	
	
