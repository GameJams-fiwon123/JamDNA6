extends Area2D


func _on_Easel_body_entered(body):
	Global.GameState.hurt()
