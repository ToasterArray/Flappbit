extends Node2D

var is_playing = false
var score = 0
var obstacle_speed = -450 

var save_data:SaveData

# Called when the node enters the scene tree for the first time.
func _ready():
	save_data = SaveData.load_or_create()
	

func _on_check_button_toggled(toggled_on):
	if(toggled_on == true):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
	if(toggled_on == false):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)


