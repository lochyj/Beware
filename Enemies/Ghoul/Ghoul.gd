extends KinematicBody2D

export(int) var MAX_SPEED = 80
export(int) var ACCELERATION = 450
export(int) var FRICTION = 900

onready var loc1 = $"Loc 1"
onready var loc2 = $"Loc 2"
onready var Sprite = $Sprite

var extent = 1

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	var loc = 1

#	if loc2.global_position < Vector2(extent, extent):
#		loc = 1
#	if loc1.global_position < Vector2(extent, extent):
#		loc = 2

	if loc == 1 and loc1.global_position  <= Vector2(extent, extent):
		input_vector.x = loc1.global_position.x
		input_vector.y = loc1.global_position.y
#	if loc == 2:
#		input_vector.x = loc2.global_position.x
#		input_vector.y = loc2.global_position.y

	input_vector = input_vector.normalized()
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	move()

func move():
	velocity = move_and_slide(velocity)
	Sprite.flip_h = velocity.x < 0
