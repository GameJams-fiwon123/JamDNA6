extends Control


func is_left_click(ev):
	if ev is InputEventMouseButton:
		if ev.button_index == BUTTON_LEFT:
			return true
	
	return false

func _on_LabelStart_gui_input(ev):
	if is_left_click(ev):
		get_tree().change_scene(Global.Level1)



func _on_LabelCredits_gui_input(ev):
	if is_left_click(ev):
		get_tree().change_scene(Global.Credits)


func _on_LabelExit_gui_input(ev):
	if is_left_click(ev):
		get_tree().quit()
