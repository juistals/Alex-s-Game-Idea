extends CharacterBody2D

var speed : float = 100.0

func _process(delta: float):
	var direction : Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = direction * speed

func _physics_process(delta: float):
	move_and_slide()
