extends Area2D

@export var speed = 1000
var direction: Vector2 = Vector2.UP

func _process(delta):
	position += direction * speed *  delta

func _on_laser_death_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if "hit" in body:
		body.hit()
	queue_free()
