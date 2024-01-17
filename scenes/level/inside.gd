extends base_level

#@export var outside_scene: PackedScene


func _on_area_2d_body_entered(_body):
	var tween = create_tween()
	tween.tween_property($Player,"speed",0,0.5)
	TransitionLayer.change_scene("res://scenes/level/outside.tscn")
	#get_tree().change_scene_to_file("res://scenes/level/outside.tscn")
	#get_tree().change_scene_to_packed(outside_scene)
