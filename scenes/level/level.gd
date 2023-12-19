extends Node2D

var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene: PackedScene = preload("res://scenes/projectiles/grenade.tscn")

func _on_gate_player_entered_gate(body):
	get_tree().change_scene_to_file("res://scenes/level/level_2.tscn")
	print("player entered")



func _on_player_grenade(pos, direction):
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = pos
	grenade.linear_velocity = direction * grenade.speed
	$Projectiles.add_child(grenade)

func _on_player_laser(pos, direction):
	var laser = laser_scene.instantiate()
	laser.position = pos
	laser.linear_velocity = direction * laser.speed
	$Projectiles.add_child(laser)
