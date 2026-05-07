extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	#dy chuyen
	if Input.is_action_just_pressed("ui_up"):
		input_vector.y -= 1
	elif Input.is_action_just_pressed("ui_down"):
		input_vector.y += 1
	elif Input.is_action_just_pressed("ui_right"):
		input_vector.x += 1
	elif Input.is_action_just_pressed("ui_left"):
		input_vector.x -= 1
	velocity = input_vector* 3000
	move_and_slide()

	#huong sprite
	if Input.is_action_just_pressed("ui_up"):
		rotation_degrees = 270
	elif Input.is_action_just_pressed("ui_down"):
		rotation_degrees = 90
	elif Input.is_action_just_pressed("ui_right"):
		rotation_degrees = 0
	elif Input.is_action_just_pressed("ui_left"):
		rotation_degrees = 180
