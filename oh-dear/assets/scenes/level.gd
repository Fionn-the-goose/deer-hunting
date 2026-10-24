extends Node2D
@export var next_levels : Array[Node2D]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func getNext(index: int) -> Node2D:
	return next_levels[index]
