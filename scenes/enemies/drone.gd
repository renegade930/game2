extends CharacterBody2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Vector2.RIGHT
	velocity = direction * 200
	move_and_slide()

func hit():
	print("damage")
