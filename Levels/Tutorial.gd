extends Node2D

export(String) var path = "res://Levels/Tutorial2.tscn"

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		Global.goto_scene(path)
	

