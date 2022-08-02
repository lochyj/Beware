extends Node2D

export(String) var path = "res://Levels/TutorialSelect.tscn"

# Play button
func _on_Button_pressed():
	Global.goto_scene(path)

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		Global.goto_scene(path)

