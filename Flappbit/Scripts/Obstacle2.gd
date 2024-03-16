extends Node2D

var rng = RandomNumberGenerator.new()

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.is_playing == true):
		position.x += Global.obstacle_speed * delta
	if(position.x <= -576):
		position.x = $"../Obstacle1".position.x + 500
		position.y = rng.randf_range(20, 400)
