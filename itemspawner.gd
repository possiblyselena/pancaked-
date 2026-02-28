extends Node2D
var spawner_position = null
var pancake = preload("res://pancakes.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	spawner_position = $spawner.get_children()
func spawn_pancake():
	var index = randi() % spawner_position.size()
	var Pancake = pancake.instance()
	Pancake.global_position = spawner_position[index].global_position
	add_child(Pancake)

	
func _on_Timer_timeout():
	spawn_pancake()
