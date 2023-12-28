extends Area2D

@export var speed:float  = 200

func _process(delta):
	position.y+=speed*delta





func _on_area_entered(area):
	self.queue_free()
	GameState.score+=10
