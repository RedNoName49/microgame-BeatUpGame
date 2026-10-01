extends Node2D

var healthPoints: int = 100

func takeDamage(damage: int) -> void:
	if healthPoints <= 0:
		healthPoints = 0
		die()
		return
	healthPoints -= damage

func die() -> void:
	GameManager.win()
	print("you win")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
