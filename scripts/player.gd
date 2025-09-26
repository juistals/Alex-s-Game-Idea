extends CharacterBody2D

var speed : float = 100.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float):
	var direction : Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = direction * speed
	if direction.x and direction.y == 0:
		animated_sprite_2d.play("idle")

func _physics_process(delta: float):
	move_and_slide()
