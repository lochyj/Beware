extends Node2D

export(String) var path = "res://Menus/Completed.tscn"
export(String) var path2 = "res://Menus/Death.tscn"

onready var exit = $Exit
onready var enemie = get_tree().get_nodes_in_group("Enemie")

func _ready():
	exit.connect("on_exit", self, "Exit")
	for i in enemie:
		i.connect("playerDeath", self, "Death")


func Exit():
	Global.goto_scene(path)

func Death():
	Global.deaths += 1
	Global.goto_scene(path2)
