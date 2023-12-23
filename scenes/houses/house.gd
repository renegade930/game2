extends Area2D

signal player_has_entered()
signal player_has_exited()


func _on_body_entered(body):
	if body.name == "Player":
		player_has_entered.emit()


func _on_body_exited(body):
	if body.name == "Player":
		player_has_exited.emit()
