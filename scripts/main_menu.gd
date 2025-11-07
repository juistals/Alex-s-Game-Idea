extends Control

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready():
	$VBoxContainer.grab_focus()
	audio_stream_player_2d.play(7)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/scene1.tscn") 


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/options.tscn") 

 
func _on_button_3_pressed():
	get_tree(). quit()
