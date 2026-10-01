extends RigidBody2D
@export var minimumDamageSpeed: float = 900.0
@export var damage: float = 12.0

@onready var guy = $"../../Guy/Area2D"
@onready var hitbox: Area2D = $Area2D
@onready var health = $"../../Guy/Health"
@onready var tip = $Marker2D

var speed: float = 0.0
var lastTipPosition: Vector2 = Vector2.ZERO

func _ready() -> void:
	lastTipPosition = tip.global_position
	guy.body_entered.connect(on_hit)
	guy.area_entered.connect(on_hit)
	
	
func _physics_process(delta: float) -> void:
	var thePosition = tip.global_position
	speed = (thePosition - lastTipPosition).length() / delta
	lastTipPosition = thePosition
	
func on_hit(_guy):
	if speed > minimumDamageSpeed:
		health.takeDamage(damage)
		print(health.healthPoints)
	else:
		print("too slow")
	
	
	
	



	
