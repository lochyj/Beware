extends Node

var current_scene = null


# User data
export(int) var level1 = 0 setget level
export(int) var level2 = 0 setget level
export(int) var level3 = 0 setget level
export(int) var level4 = 0 setget level

export(int) var deaths = 0 setget death

#/

func level(value):
	print("Level highscore set!")

func death(value):
	print("Player died!")

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)

func goto_scene(path):
	call_deferred("_deferred_goto_scene", path)

func _deferred_goto_scene(path):
	current_scene.free()
	var s = ResourceLoader.load(path)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)
