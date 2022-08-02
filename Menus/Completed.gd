extends Node2D

export(String) var MainMenu = "res://Menus/MainMenu.tscn"
export(String) var LevelSeclector = "res://Menus/LevelSelector.tscn"

func _on_MainMenu_pressed():
	Global.goto_scene(MainMenu)


func _on_LevelSelector_pressed():
	Global.goto_scene(LevelSeclector)
