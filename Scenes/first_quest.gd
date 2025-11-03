extends Area2D

@export var quest: Quest

func _on_body_entered(body: Node2D) -> void:
	if body is Players:
		if quest.quest_status == quest.QuestStatus.available:
			quest.start_quest()
