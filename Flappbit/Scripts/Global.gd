extends Node2D

var is_playing = false
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass




func _on_check_button_toggled(toggled_on):
	if(toggled_on == true):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
	if(toggled_on == false):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
