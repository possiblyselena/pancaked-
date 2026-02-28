extends Sprite2D

func _process(delta: float) -> void:
	position.x = get_global_mouse_position().x
