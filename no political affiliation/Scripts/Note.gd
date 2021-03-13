extends Node2D

var speed = 550

func _process(delta):
	self.position.y = self.position.y + speed * delta
