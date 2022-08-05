extends Node2D

export(String) var path = "res://Menus/LevelSelector.tscn"

func _input(event):
	if Input.is_action_pressed("ui_select"):
		Global.goto_scene(path)
