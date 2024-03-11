extends Area2D

var rotation_speed = 40
var available_options = ['laser','laser','laser', 'grenade', 'health']
var type = available_options[randi()%len(available_options)]
#var type = 'health'

func _ready():
	
	if type == 'laser':
		$Sprite2D.modulate = Color('29ffffbf')
	if type == 'grenade':
		$Sprite2D.modulate = Color('ff3242c5')
	if type == 'health':
		$Sprite2D.modulate = Color('5fd144db')

func _process(delta):
	rotation += rotation_speed * delta


func _on_body_entered(_body):
	if type == "health":
		Globals.health += 10
	if type == "laser":
		Globals.laser_amount += 3
	if type == "grenade":
		Globals.grenade_amount += 1
	queue_free()
