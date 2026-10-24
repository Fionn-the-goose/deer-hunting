extends PointLight2D
@onready var target : Node2D = $"%cursor" as Node2D
@export var SPEED : float = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var target_pos : Vector2 = target.position
	if (position.distance_to(target.position)>=10):
		position += position.direction_to(target.position) * SPEED * delta
	pass
