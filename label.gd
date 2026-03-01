extends Label

var score = 0

func _ready() -> void:
	self.text = "0"


func increment(num: int) -> void:
	score += num
	self.text = str(score)
