extends Node2D

@export var laser_scene:PackedScene

func _process(delta):
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
#	if Input.is_action_pressed("fire"):
#		var new_laser = laser_scene.instantiate()
#		add_child(new_laser)
##		new_laser.position = self.position
