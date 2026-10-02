extends Node2D

var timer: float = 20.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer -= delta
	if timer > 0:
		$Label.text = str(ceili(timer))
	if timer <= 0:
		print("you lose")
		GameManager.lose()
