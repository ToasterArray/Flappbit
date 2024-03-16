extends Node2D

var is_playing = false
var score = 0
var obstacle_speed = -300 

var save_data:SaveData

# Called when the node enters the scene tree for the first time.
func _ready():
	save_data = SaveData.load_or_create()
	

func _on_check_button_toggled(toggled_on):
	if(toggled_on == true):
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
	if(toggled_on == false):
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)


