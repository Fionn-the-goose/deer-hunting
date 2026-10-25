extends Node2D
@export var SPEED : float = 200
@onready var active : Sprite2D = $Sprite2D
var level : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hallo world")
# Replace with function body.

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		#print("click recognized")
		scale *= 0.9
		var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
		audio.play()
	if event.is_action_released("click"):
		scale *= 1.1
		
func _process(delta: float) -> void:
	position = get_global_mouse_position()

func _on_area_entered(area: Area2D) -> void:
	print(area.name)
	pass # Replace with function body.
