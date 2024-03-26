extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func move(target):
	var move_tween = create_tween()
	move_tween.tween_property(self, "position", target, 0.3).set_ease(Tween.EASE_IN_OUT) #HALELUJAH


func _on_pause_button_pressed():
	Global.is_playing = false
	$"../../../../PauseMenu".show()
	$Audio/BGmusic.stop()
