extends Node2D


signal on_exit

onready var label = $Control/Label
var collided = false

func _on_Area2D_area_entered(area):
	collided = true
	label.text = 'Press "E" to leave'

func _on_Area2D_area_exited(area):
	collided = false
	label.text = ''
	
func _physics_process(delta):
	if collided == true and Input.is_action_pressed("Exit"):
		emit_signal("on_exit")
		


