extends Area2D

func _on_body_entered(body):
	body.get_node("PlayerCollisionShape").queue_free()
	get_tree().reload_current_scene()
