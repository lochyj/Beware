extends KinematicBody2D

export(int) var MAX_SPEED = 80
export(int) var ACCELERATION = 450
export(int) var FRICTION = 900

onready var playerSprite = $Sprite
onready var animator = $AnimationPlayer

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		animator.current_animation = "Running"
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		animator.current_animation = "Idle"
	move()

func move():
	velocity = move_and_slide(velocity)
	playerSprite.flip_h = velocity.x < 0
