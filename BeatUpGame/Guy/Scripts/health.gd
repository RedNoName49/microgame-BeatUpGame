extends Node2D

var Health: int = 100

func die() -> void:
	if Health == 0:
		GameManager.win()
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
