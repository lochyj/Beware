extends Node2D

export(String) var path = "res://Menus/Completed.tscn"

onready var exit = $Exit

onready var player = $Player
onready var nav = $Navigation2D

func _ready():
	exit.connect("on_exit", self, "Exit")

func Exit():
	Global.goto_scene(path)


func _on_Timer_timeout():
	get_tree().call_group("Enemy", 'get_target_path', player.global_position)
