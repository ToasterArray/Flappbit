extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_start_pressed():
	get_node("Start").move(Vector2(-576, 0))
	get_node("GameObjects").move(Vector2(-576, 0))
	$"../../../BeginMenu".show()
	$GameObjects/HighScoreLabel.text = "High: " + str(Global.save_data.high_score)


func _on_settings_pressed():
	get_node("Start").move(Vector2(576, 0))
	get_node("Settings").move(Vector2(576, 0))


func _on_back_from_settings_pressed():
	get_node("Start").move(Vector2(0, 0))
	get_node("Settings").move(Vector2(0, 0))


func _on_quit_pressed(): #literally just quits? dont know if android does shit the same
	get_tree().quit()


func _on_change_spritebtn_toggled(toggled_on):
	if(toggled_on == true):
		Global.save_data.nostalgia_texture_on = true
		Global.save_data.save()
		$GameObjects/CharacterBody2D/Sprite2D.set_texture(Global.nostalgia_texture)
	if(toggled_on == false):
		Global.save_data.nostalgia_texture_on = false
		Global.save_data.save()
		$GameObjects/CharacterBody2D/Sprite2D.set_texture(Global.basic_texture)
