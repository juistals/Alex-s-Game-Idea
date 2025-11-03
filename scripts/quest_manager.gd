class_name QuestManager extends Node

@onready var QuestBox: CanvasLayer = GameManager.get_node('Quests')
@onready var QuestTitle: RichTextLabel = GameManager.get_node('Quests').get_node('Quest title')
@onready var QuestDescription: RichTextLabel = GameManager.get_node('Quests').get_node('Quest description')

@export_group("Quest Settings")
@export var quest_name: String
@export var quest_description: String

enum QuestStatus{
	available,
	started,
	finished
}

@export var quest_status: QuestStatus = QuestStatus.available
