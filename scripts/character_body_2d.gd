extends CharacterBody2D

var speed : float = 100.0
var direction : Vector2
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physical_process(_delta):
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity = direction * speed
	
	if direction.x > 0: animated_sprite_2d.flip_h = false
	if direction.x < 0: animated_sprite_2d.flip_h = true
	
	if direction.x == 0 and direction.y == 0:
		animated_sprite_2d.play("idle")
	else:
		animated_sprite_2d.play("move")
	move_and_slide()
