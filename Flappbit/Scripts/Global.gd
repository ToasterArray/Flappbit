extends Node2D

var is_playing = false
var score = 0
var obstacle_speed = -420
var save_data:SaveData
signal Send_signal
# Called when the node enters the scene tree for the first time.
func _ready():
	save_data = SaveData.load_or_create()
	print(save_data.SFX_off)


func _on_check_button_toggled(toggled_on):
	if(toggled_on == true):
		save_data.SFX_off = true
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), true)
	if(toggled_on == false):
		save_data.SFX_off = false
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("SFX"), false)



func _on_mute_musi_cbtn_toggled(toggled_on):
	if(toggled_on == true):
		save_data.MUSIC_off = true
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
	if(toggled_on == false):
		save_data.MUSIC_off = false
		save_data.save()
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
