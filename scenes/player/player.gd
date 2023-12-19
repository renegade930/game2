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
	
	#rotate
	look_at(get_global_mouse_position())
	
	
	if Input.is_action_just_pressed("Dash"):
		position += direction * 70
	
	if Input.is_action_just_pressed("Shoot") and can_laser:
		var laser_markers = $LaserStartPos.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		var look_direction = (get_global_mouse_position() - position).normalized()
		laser.emit(selected_laser.global_position, look_direction)
		
	if Input.is_action_just_pressed("Grenade toss") and can_grenade:
		can_grenade = false
		$GrenadeTimer.start()
		var pos = $LaserStartPos.get_children()[0].global_position
		var look_direction = (get_global_mouse_position() - position).normalized()
		grenade.emit(pos, look_direction)


func _on_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
