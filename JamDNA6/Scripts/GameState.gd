extends Node2D

var timeSpawn = 10
var countSpawn = 0

var level = 1

func _ready():
	Global.GameState = self
	pass

func hurt():
	end_game()

func spawn_object():
	
	for i in range(level):
		var easel = Global.Easel.instance()
		$YSort.add_child(easel)
		easel.global_position.x = rand_range(-160, 180)
		easel.global_position.y = Global.Player.global_position.y - 1000
		
	if Global.Player.MORESPEED < Global.Player.MAXSPEED:
		countSpawn += 1
		
	if countSpawn / timeSpawn == 1 and level < 4:
		Global.Timer.wait_time -= 0.1
		Global.Player.MORESPEED += 40
		countSpawn = 1
		level += 1
		Global.GUI.up_level()
	elif countSpawn / timeSpawn == 1  and Global.Player.MORESPEED < Global.Player.MAXSPEED:
		Global.Timer.wait_time -= 0.1
		Global.Player.MORESPEED += 40
		print(Global.Player.MORESPEED)
		countSpawn = 1
		Global.GUI.up_level()
		
	Global.Timer.start()
		
	pass
	
func end_game():
	get_tree().change_scene(Global.GameOver)