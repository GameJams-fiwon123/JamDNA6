extends Control


func is_left_click(ev):
	if ev is InputEventMouseButton:
		if ev.button_index == BUTTON_LEFT:
			return true
	
	return false

func _on_LabelYes_gui_input(ev):
	if is_left_click(ev):
		get_tree().change_scene(Global.Level1)


func _on_LabelNo_gui_input(ev):
	if is_left_click(ev):
		get_tree().change_scene(Global.MainMenu)
