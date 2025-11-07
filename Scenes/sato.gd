extends Area2D

@export var quest: Quest
@onready var label: Label = $Label
@onready var label_2: Label = $Label2
@onready var dialogue: Control = $"../Dialogue/Dialogue"
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var player: Players = $"../player"
@onready var quest_1: Quest = $"../Flower wilt trigger/Quest1"

var player_in_area = false
var collisiongg = false

func _on_body_entered(body: Node2D) -> void:
	if body is Players:
		label.visible = false
		label_2.visible = true
		player_in_area = true

func _on_body_exited(body: Node2D) -> void:
	if body is Players:
		if collisiongg == false:
			label.visible = true
		else:
			if quest.quest_status == quest.QuestStatus.available:
				quest.start_quest()
				collision_shape_2d.queue_free()
		label_2.visible = false
		player_in_area = false

func _process(_delta):
	if player_in_area and Input.is_action_just_pressed("accept"):
		quest_1.finished_quest()
		collisiongg = true
		label.visible = false
		label_2.visible = false
		dialogue.visible = true
		player.disable_movement()
		player_in_area = false
		
