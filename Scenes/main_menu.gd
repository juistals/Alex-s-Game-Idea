extends Control



func _ready():
	$VBoxContainer.grab_focus()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/scene1.tscn") 


func _on_Options_pressed():
	get_tree()


func _on_quit_button_up() -> void:
	get_tree(). Quit()
