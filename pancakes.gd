extends CharacterBody2D

var speed = 200

var motion = Vector2.ZERO

func _physics_process(delta):
	move_and_collide(Vector2(0, speed * delta))
	
