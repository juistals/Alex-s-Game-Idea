extends Node2D
@onready var yokai: AudioStreamPlayer2D = $YOKAI
@onready var yokai_2: AudioStreamPlayer2D = $YOKAI2
@onready var yokai_3: AudioStreamPlayer2D = $YOKAI3
@onready var yokai_4: AudioStreamPlayer2D = $YOKAI4
@onready var yokai_5: AudioStreamPlayer2D = $YOKAI5
@onready var timer: Timer = $Timer
@onready var timer_2: Timer = $Timer2
@onready var timer_3: Timer = $Timer3
@onready var timer_4: Timer = $Timer4
@onready var timer_5: Timer = $Timer5

var play_count: int = 0
var max_plays: int = 5

func _process(float):
	if Input.is_action_just_pressed("YOKAI"):
		yokai.finished.connect(_on_audio_finished)
		play_sound_n_times()

func play_sound_n_times():
	if play_count < max_plays:
		yokai.play()
		timer.start(1)
		play_count += 1


func _on_audio_finished():
	if play_count < max_plays:
		yokai.play()
		play_count += 1
	else:
		get_tree().quit()


func _on_timer_timeout() -> void:
	yokai_2.play()
	timer_2.start(1)
	yokai.volume_db += 3
	yokai_2.volume_db += 3

func _on_timer_2_timeout() -> void:
	yokai_3.play()
	timer_3.start(1)
	yokai_3.volume_db += 3

func _on_timer_3_timeout() -> void:
	yokai_4.play()
	yokai_4.volume_db += 3
