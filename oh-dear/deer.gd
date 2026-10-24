extends Node2D
var targeted : bool = false
@onready var body : Sprite2D = $"Area2D/Sprite2D" 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if targeted:
		#body.rotate()
		pass
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	print(body.name)


func _on_area_2d_mouse_entered() -> void:
	targeted = true
	pass # Replace with function body.


func _on_area_2d_mouse_exited() -> void:
	targeted = false
	pass # Replace with function body.
