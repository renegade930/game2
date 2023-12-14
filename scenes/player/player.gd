extends CharacterBody2D

var can_laser = true
var can_grenade = true

signal laser(pos)
signal grenade(pos)

func _process(_delta):
	
	#Input.get_vector(negative.x)
	var direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	velocity = direction * 500
	move_and_slide()
	
	
	if Input.is_action_just_pressed("Dash"):
		position += direction * 70
	
	if Input.is_action_just_pressed("Shoot") and can_laser:
		var laser_markers = $LaserStartPos.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		laser.emit(selected_laser.global_position)
		
	if Input.is_action_just_pressed("Grenade toss") and can_grenade:
		can_grenade = false
		$GrenadeTimer.start()
		grenade.emit()


func _on_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
