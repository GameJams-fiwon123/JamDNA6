extends KinematicBody2D

const SPEED = 200
const MAXSPEED = 400
const UP = Vector2(0, -1)
const FRICTION = 0.3

var motion = Vector2()
var MORESPEED = 0

var touch = false

func _ready():
	Global.Player = self

func _physics_process(delta):
	update_motion(delta)
	move_and_slide(motion, UP)

func update_motion(delta):
	motion.y = -SPEED - MORESPEED
	
	if (Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right") and global_position.x >= -160):
		motion.x = clamp(motion.x - SPEED, -MAXSPEED, 0)
	elif (Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left") and global_position.x <= 190):
		motion.x = clamp(motion.x + SPEED, 0, MAXSPEED)
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
	


func _on_LeftTouch_pressed():
	
	if global_position.x >= -160:
		motion.x = clamp(motion.x - SPEED, -MAXSPEED, 0)



func _on_RightTouch_pressed():
	
	if global_position.x <= 190:
		motion.x = clamp(motion.x + SPEED, 0, MAXSPEED)

