extends Node2D
var targeted : bool = false
var killed : bool = false
@onready var body : Sprite2D = $"Area2D/Sprite2D" 
var vec : Node2D
var end_start = false
var monster

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if killed:
		position.y += 18
		emerge()
	#body.rotate()
	if (end_start):
		if (position.distance_to(vec.position)>=100):
			print(position.distance_to(vec.position))
			monster.position += monster.position.direction_to(vec.position) * 300 * delta
	pass
	
func emerge() -> void:
	if(!end_start):
		monster = $"../Maul2"
		vec = $"../Node2D"
		await get_tree().create_timer(0.3).timeout
		monster.visible = true
		end_start = true
	
func kill():
	var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
	var audio02 : AudioStreamPlayer2D = $"../Maul2/AudioStreamPlayer2D2"
	audio.play()
	audio02.play()
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
