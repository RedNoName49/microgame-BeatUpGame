extends Node2D

var healthPoints: int = 100


func takeDamage(damage: int) -> void:
	if healthPoints <= 0:
		healthPoints = 0
		die()
		return
	TheWorld.theWorld(0.08)
	$"../Area2D/CPUParticles2D".emitting = true
	$"../AudioStreamPlayer2D".play()
	healthPoints -= damage

func die() -> void:
	GameManager.win()
	print("you win")

func _ready() -> void:
	pass
