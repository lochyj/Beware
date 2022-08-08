extends Node2D

export(String) var level1 = "res://Levels//Level1.tscn"
export(String) var level2 = "res://Levels//Level2.tscn"
export(String) var level3 = "res://Levels//Level3.tscn"
export(String) var level4 = "res://Levels//Level4.tscn"

func _on_Level1_pressed():
	Global.goto_scene(level1)

func _on_Level2_pressed():
	Global.goto_scene(level2)

func _on_Level3_pressed():
	Global.goto_scene(level3)

func _on_Level4_pressed():
	Global.goto_scene(level4)
