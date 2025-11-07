class_name Players extends CharacterBody2D

var speed : float = 100.0
var sprint_speed : float = 160.0  
var direction : Vector2
@onready var animated_sprite_2d: Sprite2D = $Sprite2D

func _physics_process(delta):
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	if direction != Vector2.ZERO:
		direction = direction.normalized()

	var current_speed = speed
	if Input.is_action_pressed("sprint"): 
		current_speed = sprint_speed

	velocity = direction * current_speed

	if direction.x > 0:
		animated_sprite_2d.flip_h = true
	elif direction.x < 0:
		animated_sprite_2d.flip_h = false

	move_and_slide()
