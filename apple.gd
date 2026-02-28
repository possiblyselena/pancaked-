extends Sprite2D

func _ready() -> void:
	$applecollision.area_entered.connect(onAreaEntered)

func _process(delta: float) -> void:
	position.y += 500 * delta

func onAreaEntered(area:Area2D) -> void:
	print(area)
 
