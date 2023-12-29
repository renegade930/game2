extends base_level

#@export var inside_scene: PackedScene


func _on_gate_player_entered_gate():
	var tween = create_tween()
	tween.tween_property($Player,"speed",0,0.5)
	TransitionLayer.change_scene("res://scenes/level/inside.tscn")
	#get_tree().change_scene_to_file("res://scenes/level/inside.tscn")
	#get_tree().change_scene_to_packed(inside_scene)
