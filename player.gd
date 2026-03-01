extends Area2D

@export var label: Label



@export var speed: int = 400 
var screen_size: Vector2

func _ready():
	screen_size = get_viewport_rect().size
	label.text = "0"

func _process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	position.x += direction.x * speed * delta
	
	position.y += direction.y * speed * delta

	if direction.x > 0:
		$Player_img.flip_h = false 
	elif direction.x < 0:
		$Player_img.flip_h = true 

	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
