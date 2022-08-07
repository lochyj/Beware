extends Node2D

export(String) var MainMenu = "res://Menus/MainMenu.tscn"
export(String) var LevelSeclector = "res://Menus/LevelSelector.tscn"


func _ready():
	var deathLabel = $Control/Deaths
	deathLabel.text = "You have " + str(Global.deaths) + " deaths!"

func _on_MainMenu_pressed():
	Global.goto_scene(MainMenu)


func _on_LevelSelector_pressed():
	Global.goto_scene(LevelSeclector)
