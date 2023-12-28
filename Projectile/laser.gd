extends Area2D

const speed = 200
func _process(delta):
	position.y-=speed*delta
