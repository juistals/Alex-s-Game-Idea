extends Area2D

func _call_deferred(body):
	body.get_node("PlayerCollisionShape").queue_free()
	get_tree().reload_current_scene()
