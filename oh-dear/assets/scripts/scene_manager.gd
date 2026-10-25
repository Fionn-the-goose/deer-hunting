extends Node2D
@export var next_level_index : Array[PackedScene]
var canTrigger : bool = false
var currentTrigger : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	#swap_level(0)
	pass # Replace with function body.

func swap_level(i: int):
	print("new scene loaded")
	get_tree().change_scene_to_packed(next_level_index [i])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
