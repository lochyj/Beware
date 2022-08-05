extends Node2D

export(String) var path = "res://Levels/Tutorial3.tscn"

func _input(event):
	if Input.is_action_pressed("ui_select"):
		Global.goto_scene(path)
