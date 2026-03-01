extends Node2D

# Drag and drop your Item.tscn into this slot in the Inspector
@export var item_scene: PackedScene 

func _ready():
	# Example: Spawn 5 items at random locations
	for i in range(5):
		spawn_item()

func spawn_item():
	var new_item = item_scene.instantiate()
	
	# Set a random position (adjust 1000 to your map size)
	new_item.position = Vector2(randf_range(0, 1000), randf_range(0, 1000))
	
	add_child(new_item)
