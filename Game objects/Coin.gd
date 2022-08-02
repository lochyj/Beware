extends Node2D

signal coin_collected


func _on_Area2D_area_entered(area):
	emit_signal("coin_collected")
	print("Collected a coin")
	queue_free()
