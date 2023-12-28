extends Label

func _process(delta):
	if GameState.is_game_over:
		self.visible = true

	if Input.is_action_pressed("enter"):
		get_tree().reload_current_scene()
		GameState.reset_state()
