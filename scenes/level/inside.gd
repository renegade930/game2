extends base_level

#@export var outside_scene: PackedScene


func _on_area_2d_body_entered(_body):
	print('exitedgate')
	get_tree().change_scene_to_file("res://scenes/level/outside.tscn")
	#get_tree().change_scene_to_packed(outside_scene)
