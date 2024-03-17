extends base_level

#@export var inside_scene: PackedScene


func _on_gate_player_entered_gate():
	var tween = create_tween()
	tween.tween_property($Player,"speed",0,0.5)
	TransitionLayer.change_scene("res://scenes/level/inside.tscn")
	#get_tree().change_scene_to_file("res://scenes/level/inside.tscn")
	#get_tree().change_scene_to_packed(inside_scene)

func _on_house_player_has_entered():
	var tween = get_tree().create_tween()
	tween.set_parallel(true)
	tween.tween_property($Player/Camera2D,"zoom", Vector2(1.5,1.5),1) 


func _on_house_player_has_exited():
	var tween = get_tree().create_tween()
	tween.tween_property($Player/Camera2D,"zoom", Vector2(1,1),0.5) 
