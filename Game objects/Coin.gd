extends Node2D

signal coin_collected

const CoinEffect = preload("res://Game objects/CoinCollect.tscn")

func _on_Area2D_area_entered(area):
	emit_signal("coin_collected")
	print("Collected a coin")
	var coinEffect = CoinEffect.instance()
	get_parent().add_child(coinEffect)
	coinEffect.global_position = global_position
	queue_free()
