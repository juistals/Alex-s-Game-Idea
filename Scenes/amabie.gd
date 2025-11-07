extends Node2D
@onready  var anim = $AnimatedSprite2D2

func _ready():
	anim.play("idle")
