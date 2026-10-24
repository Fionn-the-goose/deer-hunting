extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hallo world")
# Replace with function body.

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		#print("click recognized")
		scale *= 0.9
	if event.is_action_released("click"):
		scale *= 1.1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = get_global_mouse_position()
	pass
