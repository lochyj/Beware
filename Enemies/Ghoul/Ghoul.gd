extends KinematicBody2D

export(int) var MAX_SPEED = 1000
export(int) var ACCELERATION = 450
export(int) var FRICTION = 900

onready var loc1 = $"Node2D/Loc 1"
onready var loc2 = $"Node2D/Loc 2"
onready var Sprite = $Sprite

var extent = 1

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	var loc = 1



	if loc == 1:
		velocity = velocity.move_toward(loc1.global_position.normalized() * MAX_SPEED, ACCELERATION * delta)
	elif loc == 2:
		velocity = velocity.move_toward(loc2.global_position.normalized() * MAX_SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	move()

func move():
	velocity = move_and_slide(velocity)
	Sprite.flip_h = velocity.x < 0
