extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	Global.GameState = self
	pass

func hurt():
	end_game()

func spawn_object():
	var easel = Global.Easel.instance()
	$YSort.add_child(easel)
	easel.global_position.x = rand_range(-160, 160)
	easel.global_position.y = Global.Player.global_position.y - 1000
	Global.Timer.start()
	pass
	
func end_game():
	get_tree().change_scene(Global.GameOver)