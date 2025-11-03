class_name Quest extends QuestManager

func start_quest() -> void:
	if quest_status == QuestStatus.available:
		quest_status = QuestStatus.started
		QuestBox.visible = true
		QuestTitle.text = quest_name
		QuestDescription.text = quest_description

func finished_quest() -> void:
	if quest_status == QuestStatus.started:
		quest_status = QuestStatus.finished
		QuestBox.visible = false
