extends Node2D
var targeted : bool = false
var killed : bool = false
@onready var body : Sprite2D = $"Area2D/Sprite2D" 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if killed:
		position.y += 18
	#body.rotate()
	pass

func kill():
	var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
	audio.play()
	killed = true
	
func _input(event: InputEvent) -> void:
	if (event.is_action_pressed("click") && targeted):
		kill()
		pass

func _on_area_2d_mouse_entered() -> void:
	targeted = true
	
	pass # Replace with function body.

func _on_area_2d_mouse_exited() -> void:
	targeted = false
	pass # Replace with function body.
