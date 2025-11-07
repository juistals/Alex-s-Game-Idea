extends Area2D

@export var quest: Quest
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _on_body_entered(body: Node2D) -> void:
	if body is Players:
		if quest.quest_status == quest.QuestStatus.available:
			quest.start_quest()
			collision_shape_2d.queue_free()
