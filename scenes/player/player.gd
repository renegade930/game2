extends CharacterBody2D

var can_laser = true
var can_grenade = true

signal laser(pos, direction)
signal grenade(pos, direction)
signal update_stats

@export var max_speed: int = 500
var speed: int = max_speed

func _process(_delta):
	
	#Input.get_vector(negative.x)
	var direction = Input.get_vector("Left", "Right", "Forward", "Backward")
	velocity = direction * speed
	move_and_slide()
	
	look_at(get_global_mouse_position())
	
	
	if Input.is_action_just_pressed("Dash"):
		position += direction * 70
	
	if Input.is_action_just_pressed("Shoot") and can_laser and Globals.laser_amount > 0:
		Globals.laser_amount -= 1
		var laser_markers = $LaserStartPos.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		var look_direction = (get_global_mouse_position() - position).normalized()
		$CPUParticles2D.emitting = true 
		laser.emit(selected_laser.global_position, look_direction)
		
	if Input.is_action_just_pressed("Grenade toss") and can_grenade and Globals.grenade_amount > 0:
		Globals.grenade_amount -= 1
		can_grenade = false
		$GrenadeTimer.start()
		var pos = $LaserStartPos.get_children()[0].global_position
		var look_direction = (get_global_mouse_position() - position).normalized()
		grenade.emit(pos, look_direction)


func _on_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true

func add_item(type: String) -> void :
	if type == 'laser':
		Globals.laser_amount += 5
	if type == 'health':
		Globals.health += 25
	if type == 'grenade':
		Globals.grenade_amount += 2
	update_stats.emit()
