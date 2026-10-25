extends Sprite2D
var its_init = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func  _input(event: InputEvent) -> void:
	if its_init && event.is_action("click"):
		var jumscare : Sprite2D = $"../Baited"
		jumscare.visible = true
		var screi = $"SchreiAusDerHölle"
		screi.play()

func _on_area_2d_mouse_entered() -> void:
	its_init = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	its_init = false
	pass # Replace with function body.
