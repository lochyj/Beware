extends Node2D

export(String) var path = "res://Menus/Completed.tscn"

onready var exit = $Exit

func _ready():
	exit.connect("on_exit", self, "Exit")

func Exit():
	Global.goto_scene(path)
