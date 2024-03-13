extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	Global.is_playing = true
	self.hide()

func _on_back_to_menu_pressed():
	$"../UI/Is this needed?/MenusAndGame/Start".move(Vector2(0, 0))
	$"../UI/Is this needed?/MenusAndGame/GameObjects".move(Vector2(576, 0))
	self.hide()
