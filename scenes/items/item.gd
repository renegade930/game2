extends Area2D

var rotation_speed = 40
var available_options = ['laser','laser','laser', 'grenade', 'health']
var type = available_options[randi()%len(available_options)]

func _ready():
	
	if type == 'laser':
		$Sprite2D.modulate = Color('29ffffbf')
	if type == 'grenade':
		$Sprite2D.modulate = Color('ff3242c5')
	if type == 'health':
		$Sprite2D.modulate = Color('5fd144db')

func _process(delta):
	rotation += rotation_speed * delta


func _on_body_entered(body):
	body.add_item(type)
	queue_free()
