extends Area2D

@onready var spawn_point = $"../SpawnPoint" 

func _on_kill_zone_body_entered(body):
	if body.name == "player":
		body.global_position = spawn_point.global_position
