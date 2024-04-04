extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():	#deals with setting state of buttons after loading save
	$"UI/Is this needed?/MenusAndGame/Settings/SettingsButtonVbox/MuteSFXbtn".button_pressed = Global.save_data.SFX_off
	$"UI/Is this needed?/MenusAndGame/Settings/SettingsButtonVbox/MuteMUSICbtn".button_pressed = Global.save_data.MUSIC_off
	$"UI/Is this needed?/MenusAndGame/Settings/SettingsButtonVbox/ChangeSpritebtn".button_pressed = Global.save_data.nostalgia_texture_on

func _notification(what) -> void:
	if what == MainLoop.NOTIFICATION_APPLICATION_PAUSED or what == MainLoop.NOTIFICATION_APPLICATION_FOCUS_OUT && Global.is_playing == true:	#detects unfocus from game and pauses
		Global.is_playing = false
		$PauseMenu.show()



