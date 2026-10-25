extends Sprite2D
var move = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if move:
		position.x -= 60
	pass

func _on_area_2d_mouse_entered() -> void:
	move = true
	var audio = $TrippleT
	audio.play()
	pass # Replace with function body.
