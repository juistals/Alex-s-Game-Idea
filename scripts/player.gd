class_name Players extends CharacterBody2D

var speed : float = 100.0
var direction : Vector2
@onready var animated_sprite_2d: Sprite2D = $Sprite2D


@warning_ignore("unused_parameter")
func _physics_process(delta):
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	# Normalize to avoid faster diagonal movement
	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed

	if direction.x > 0:
		animated_sprite_2d.flip_h = true
	elif direction.x < 0:
		animated_sprite_2d.flip_h = false

	move_and_slide()
