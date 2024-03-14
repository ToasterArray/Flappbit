extends CharacterBody2D

const JUMP_VELOCITY = -500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var is_playing = false

func _physics_process(delta):
	if(Global.is_playing == true):
		if not is_on_floor():
			velocity.y += gravity * delta
	
		
		# Handle Jump.
		if Input.is_action_just_pressed("Jump"):
			velocity.y = JUMP_VELOCITY
			


		move_and_slide()


func _on_button_pressed():		#jumps on button press(button is entire screen)
	if(Global.is_playing == true):
		$"../Audio/JumpSoundPlayer".play()
		velocity.y = JUMP_VELOCITY
		move_and_slide()

#death on floor
func _on_floor_body_entered(body):
	Global.is_playing = false
	$"../Audio/DeathSoundPlayer".play()
	$"../../../../../BeginMenu".show()
	reset_all()

func _on_pipe_1_body_entered(body):		#wanted to connect to above funcion but noooooooo why should I be able to
	if(body.name == "CharacterBody2D"):
		Global.is_playing = false
		$"../Audio/DeathSoundPlayer".play()
		$"../../../../../BeginMenu".show()
		reset_all()

func _on_score_adder_1_body_entered(body):
	Global.score += 1
	$"../ScoreLabel".text = "Score: " + str(Global.score)

func reset_all():
	Global.score = 0
	$"../ScoreLabel".text = "Score: " + str(Global.score)
	self.position = Vector2(835, 440)	#resets birb
	self.velocity.y = 0
	$"../Obstacles and button/Obstacle1".position = Vector2(608, 210) #resets pipe 1
	$"../Obstacles and button/Obstacle2".position = Vector2(1184, 270) #resets pipe 2
