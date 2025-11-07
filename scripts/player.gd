class_name Players
extends CharacterBody2D

var can_move = true
var speed: float = 100.0
var sprint_speed: float = 160.0
var direction: Vector2

@onready var animated_sprite_2d: Sprite2D = $Sprite2D
@onready var grass_walk: AudioStreamPlayer2D = $"Grass walk"
@onready var grass_run: AudioStreamPlayer2D = $"Grass run"

@warning_ignore("unused_parameter")
func _physics_process(delta):
	if can_move:
		direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
		direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")

		if direction != Vector2.ZERO:
			direction = direction.normalized()

		var current_speed = speed
		var is_sprinting = Input.is_action_pressed("sprint")

		if is_sprinting:
			current_speed = sprint_speed

		velocity = direction * current_speed

		# Flip sprite
		if direction.x > 0:
			animated_sprite_2d.flip_h = true
		elif direction.x < 0:
			animated_sprite_2d.flip_h = false

		move_and_slide()

		# Handle footstep sounds
		if direction != Vector2.ZERO:
			_play_footstep(is_sprinting)
		else:
			_stop_footstep()
	else:
		velocity = Vector2.ZERO
		move_and_slide()
		_stop_footstep()

func _play_footstep(is_sprinting: bool) -> void:
	if is_sprinting:
		if not grass_run.playing:
			grass_walk.stop()
			grass_run.play()
	else:
		if not grass_walk.playing:
			grass_run.stop()
			grass_walk.play()

func _stop_footstep() -> void:
	if grass_walk.playing:
		grass_walk.stop()
	if grass_run.playing:
		grass_run.stop()

func disable_movement():
	can_move = false

func enable_movement():
	can_move = true
