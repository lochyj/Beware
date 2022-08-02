extends Node2D

export(String) var tut = "res://levels/Tutorial.tscn"
export(String) var sel = "res://Menus/LevelSelector.tscn"


func _input(event):
	if Input.is_action_pressed("tut"):
		Global.goto_scene(tut)
	elif Input.is_action_pressed("ui_select"):
		Global.goto_scene(sel)
