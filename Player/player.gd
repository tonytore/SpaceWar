extends Node2D



func _process(delta):
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
