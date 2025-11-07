extends CanvasLayer

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer_2: Timer = $"../Timer2"
@onready var flower_wilt_trigger: Area2D = $"../../Flower wilt trigger"
@onready var collision_shape_2d: CollisionShape2D = $"../../Flower wilt trigger/CollisionShape2D"
@onready var player: Players = $".."

func _on_flower_wilt_trigger_body_entered(body: Node2D) -> void:
	if body is Players:
		collision_shape_2d.queue_free()
		animation_player.play('fade in')
		timer_2.start(6)
		player.disable_movement()

func _on_timer_2_timeout() -> void:
	animation_player.play('fade_out')
	player.enable_movement()
