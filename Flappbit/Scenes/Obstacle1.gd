extends Node2D

var rng = RandomNumberGenerator.new()
var speed = -4

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.is_playing == true):
		position.x += speed
	if(position.x <= -576):
		position.x = 576
		position.y = rng.randf_range(30, 400)
