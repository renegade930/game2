extends Node2D



func _on_gate_player_entered_gate(body):
	print("player has entered")
	print(body)



func _on_player_grenade():
	print("nade from level")


func _on_player_laser():
	print("laser from level")
