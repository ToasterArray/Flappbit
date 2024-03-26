extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_continue_game_pressed():	#unpauses game
	self.hide()
	Global.is_playing = true
	$"../UI/Is this needed?/MenusAndGame/GameObjects/PauseButton".show()
	$"../UI/Is this needed?/MenusAndGame/GameObjects/Audio/BGmusic".play()
	
