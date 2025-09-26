extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VboxContainer/Start_Button.grab_focus

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass # Replace the function body



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("") # Replace  with function body


func _on_Options_pressed() -> void:
	get_tree()


func _on_quit_button_up() -> void:
	get_tree(). Quit()
