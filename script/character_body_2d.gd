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
		$Sprite2D.flip_v = false
	elif Input.is_action_just_pressed("ui_down"):
		$Sprite2D.flip_v = true
	elif Input.is_action_just_pressed("ui_right"):
		$Sprite2D.flip_h = false
	elif Input.is_action_just_pressed("ui_left"):
		$Sprite2D.flip_h = true
