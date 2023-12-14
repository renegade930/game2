extends CharacterBody2D

var can_laser = true
var can_grenade = true

signal laser
signal grenade

func _process(_delta):
	
	#Input.get_vector(negative.x)
	var direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	velocity = direction * 500
	move_and_slide()
	
	
	if Input.is_action_just_pressed("Dash"):
		position += direction * 70
	
	if Input.is_action_just_pressed("Shoot") and can_laser:
		can_laser = false
		$LaserTimer.start()
		laser.emit()
		
	if Input.is_action_just_pressed("Grenade toss") and can_grenade:
		can_grenade = false
		$GrenadeTimer.start()
		grenade.emit()
		print("")
	


func _on_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
