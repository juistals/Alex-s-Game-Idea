extends Node2D

@onready var flowers = get_tree().get_nodes_in_group("flowers")
@onready var timer_1: Timer = $Chrysanthemums/Timer1
@onready var flower_wilt_trigger: Area2D = $"Flower wilt trigger"
@onready var timer_3: Timer = $"Flower wilt trigger/Timer3"
@export var quest: Quest
@onready var quest_1: Quest = $"Flower wilt trigger/Quest1"
@onready var label: Label = $Sato/Label
@onready var animation_player: AnimationPlayer = $Sato/Label/AnimationPlayer

func _on_flower_wilt_trigger_body_entered(body: Node2D) -> void:
	if body is Players:
		timer_1.start(1)
		timer_3.start(7)

func _on_timer_1_timeout() -> void:
	for flower in flowers:
		flower.start_wilting()

func _on_timer_3_timeout() -> void:
	quest.finished_quest()
	if quest_1.quest_status == quest.QuestStatus.available:
		quest_1.start_quest()
		label.visible = true
		animation_player.play('jumping')
