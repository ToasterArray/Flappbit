extends Node2D


var speed = -2

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.is_playing == true):
		self.position.x += speed
	if(self.position.x <= -576):
		self.position.x = 0
