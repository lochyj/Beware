extends Node2D

func _ready():
	var particleObj = $Particles
	particleObj.emitting = true

func _on_Timer_timeout():
	queue_free()
