extends Node2D

@export var enemy_scene:PackedScene

func spawn_enemy_ship():
	
	var new_enemy = enemy_scene.instantiate()
	self.add_child(new_enemy)
	
	var view_port_width = get_viewport_rect().size.x
	var rand_x = randf_range(0,view_port_width)
	new_enemy.position.x = rand_x
	new_enemy.position.y = -50
