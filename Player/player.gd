extends Node2D

@export var laser_scene:PackedScene

var can_laser:bool = true

func _process(delta):
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
	
	if Input.is_action_pressed("fire") and can_laser:
		$LaserTimer.start()
		can_laser = false
		var new_laser = laser_scene.instantiate()
		add_sibling(new_laser)
		new_laser.position = self.position
		


func _on_laser_timer_timeout():
	can_laser = true


func _on_area_entered(area):
	if area.is_in_group('enemy'):
		self.queue_free()
		
		GameState.is_game_over = true
