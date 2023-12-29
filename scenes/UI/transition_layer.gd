extends CanvasLayer

func change_scene(target: String) -> void:
	$AnimationPlayer.play("fade to black")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("fade to white")
	get_tree().change_scene_to_file(target)
