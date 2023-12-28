extends Area2D

const speed = 200
func _process(delta):
	position.y-=speed*delta





func _on_area_entered(_area):
	self.queue_free()
