extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func move(target):
	var move_tween = create_tween()
	move_tween.tween_property(self, "position", target, 0.3).set_ease(Tween.EASE_OUT) #HALELUJAH
	
