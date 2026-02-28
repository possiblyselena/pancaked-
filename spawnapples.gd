extends Node2D

const APPLE = preload("res://apple.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		$Timer.timeout.connect(onTimeout)
		$Timer.start()

func onTimeout() -> void:
	var appleClone : Sprite2D = APPLE.instantiate()
	add_child(appleClone)
	appleClone.position.x = randi_range(0, 1152)
