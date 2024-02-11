extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_start_pressed():
	get_node("Start").move(Vector2(-576, 0))
	get_node("GameObjects").move(Vector2(-576, 0))
	Global.is_playing = true
	print(Global.is_playing)


func _on_settings_pressed():
	get_node("Start").move(Vector2(576, 0))
	get_node("Settings").move(Vector2(576, 0))


func _on_back_from_settings_pressed():
	get_node("Start").move(Vector2(0, 0))
	get_node("Settings").move(Vector2(0, 0))
