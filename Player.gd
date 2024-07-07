extends KinematicBody2D

# Variables for speed and animations
var speed = 200
var animation = "idle"

func _ready():
	pass

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	direction = direction.normalized()

	if direction != Vector2.ZERO:
		animation = "walk"
	else:
		animation = "idle"

	$AnimatedSprite.play(animation)
	move_and_slide(direction * speed)
