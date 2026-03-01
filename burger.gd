extends Area2D

@export var label: Label

func _ready():
	area_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":
		label.increment(15)
		queue_free()
		
