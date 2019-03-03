extends CanvasLayer

func _ready():
	Global.GUI = self

func up_level():
	$Level/Label.text = str(int($Level/Label.text) + 1)
	
func up_time():
	$Time/Label.text = str(int($Time/Label.text) + 1)


func _on_Timer_timeout():
	up_time()
	$Timer.start()
