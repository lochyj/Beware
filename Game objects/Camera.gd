extends Node2D

onready var Label = $Camera2D/Vignette/Label
var coins = 0
var coinGroup

func _ready():
	Label.text = "x" + str(coins)
	coinGroup = get_tree().get_nodes_in_group("Coins")
	for i in coinGroup:
		print(i)
		i.connect("coin_collected", self, "add")
		
func add():
	print("Adding now")
	coins += 1
	Label.text = "x" + str(coins)
