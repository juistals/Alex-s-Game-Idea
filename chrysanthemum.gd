extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func start_wilting():
	animated_sprite_2d.play("wilt")
