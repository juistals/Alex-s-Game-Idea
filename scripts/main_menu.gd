extends Control


func _ready():
	$VBoxContainer.grab_focus()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/scene1.tscn") 


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://options.tscn") 


 
func _on_button_3_pressed():
	get_tree(). quit()
