extends Control






func _on_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(0,value)


func _on_mut_lab_toggled(toggled_on: bool) -> void:
	pass # Replace with function body.
