extends KinematicBody2D

var pos = Vector2()

func _physics_process(_delta):
	
	if Input.is_action_pressed("ui_right"):
		pos.x = 800
	
	if Input.is_action_pressed("ui_left"):
	
		pos.x -= 800
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("left") :
		pos.x = 0
	move_and_slide(pos)
	
	pos.x = 0
	
