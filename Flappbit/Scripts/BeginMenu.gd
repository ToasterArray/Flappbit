extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reset_all():	#mess pls help
	if(Global.score >= Global.save_data.high_score):
		Global.save_data.high_score = Global.score
		Global.save_data.save()
	Global.score = 0
	$"../UI/Is this needed?/MenusAndGame/GameObjects/ScoreLabel".text = "Score: " + str(Global.score)
	$"../UI/Is this needed?/MenusAndGame/GameObjects/HighScoreLabel".text = "High: " + str(Global.save_data.high_score)
	$"../UI/Is this needed?/MenusAndGame/GameObjects/CharacterBody2D".position = Vector2(750, 451)	#resets birb
	$"../UI/Is this needed?/MenusAndGame/GameObjects/CharacterBody2D".velocity.y = 0
	$"../UI/Is this needed?/MenusAndGame/GameObjects/Obstacles and button/Obstacle1".position = Vector2(608, 210) #resets pipe 1
	$"../UI/Is this needed?/MenusAndGame/GameObjects/Obstacles and button/Obstacle2".position = Vector2(1108, 270) #resets pipe 2
	Global.obstacle_speed = -450

func _on_start_pressed():
	Global.is_playing = true
	self.hide()
	reset_all()
	

func _on_back_to_menu_pressed():
	$"../UI/Is this needed?/MenusAndGame/Start".move(Vector2(0, 0))
	$"../UI/Is this needed?/MenusAndGame/GameObjects".move(Vector2(576, 0))
	self.hide()
	reset_all()
