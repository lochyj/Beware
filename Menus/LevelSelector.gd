extends Node2D

export(String) var level1 = "res://Levels/Game.tscn"
export(String) var level2 = "res://Levels/level2.tscn"
export(String) var level3 = "res://Levels/level3.tscn"
export(String) var level4 = "res://Levels/level4.tscn"

func _on_Level1_pressed():
	Global.goto_scene(level1)

func _on_Level2_pressed():
	Global.goto_scene(level2)

func _on_Level3_pressed():
	Global.goto_scene(level3)

func _on_Level4_pressed():
	Global.goto_scene(level4)
