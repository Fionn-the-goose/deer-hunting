extends Sprite2D
@onready var cursor : Node2D = %Cursor

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#position.y += 620
	rotate(90)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var pos : Vector2  = cursor.position
	position.x = pos.x * 0.7 + (get_viewport_rect().size.x/5)
	self.look_at(pos)
	self.rotate(90)
	pass
