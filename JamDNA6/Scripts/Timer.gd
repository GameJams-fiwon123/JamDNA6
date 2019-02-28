extends Timer

func _ready():
	Global.Timer = self

func _on_Timer_timeout():
	Global.GameState.spawn_object()
