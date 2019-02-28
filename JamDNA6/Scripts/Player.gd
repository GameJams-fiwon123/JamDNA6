extends KinematicBody2D

const SPEED = 200
const MAXSPEED = 400
const UP = Vector2(0, -1)
const FRICTION = 0.3

var motion = Vector2()

func _ready():
	Global.Player = self

func _physics_process(delta):
	update_motion(delta)
	move_and_slide(motion, UP)

func update_motion(delta):
	motion.y = -SPEED
	
	if (Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right")):
		motion.x = clamp(motion.x - SPEED, -MAXSPEED, 0)
	elif (Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left")):
		motion.x = clamp(motion.x + SPEED, 0, MAXSPEED)
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
	
