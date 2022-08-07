extends KinematicBody2D

export(int) var MAX_SPEED = 100
export(int) var ACCELERATION = 450
export(int) var FRICTION = 900

onready var loc1 = $"Node2D/Location 1"
onready var loc2 = $"Node2D/Location 2"
onready var Sprite = $Sprite

signal playerDeath

var extent = 1

var velocity = Vector2.ZERO
var loc = 1

func _ready():
	var anim = $AnimationPlayer
	anim.play("Move")

func _physics_process(delta):
	if loc == 1:
		goto(delta, loc1)
	if loc == 2:
		goto(delta, loc2)
	velocity = move_and_slide(velocity)

func goto(delta, location):
	var direction = setDirection(location.global_position)
	setVelocity(direction, delta)
	Sprite.flip_h = velocity.x < 0

func _on_Loc1_area_entered(area):
	loc = 2

func _on_Loc2_area_entered(area):
	loc = 1

func setVelocity(direction, delta):
	velocity = velocity.move_toward(direction * MAX_SPEED, ACCELERATION * delta)

func setDirection(dir):
	return global_position.direction_to(dir)

func _on_Area2D_area_entered(area):
	emit_signal("playerDeath")
