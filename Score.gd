extends Label

func _process(delta):
	self.text = "score : " + str(GameState.score)
