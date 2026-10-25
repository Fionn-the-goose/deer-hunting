extends Node2D
var targeted : bool = false
@onready var body : Sprite2D = $"Area2D/Sprite2D" 
@onready var dead_body : Sprite2D = $"Area2D/Tot"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if targeted:
		#body.rotate()
		pass
	pass
	
func kill():
		var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
		audio.stream = load("res://assets/sound/gunshot.mp3")
		audio.play()		
		await get_tree().create_timer(0.3).timeout
		audio.stream = load("res://assets/sound/Rehkuh sound 1.mp3")
		audio.play()		
		body.visible = false
		dead_body.visible = true
	
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
